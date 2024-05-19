--Trigger inizializzazione: Generazione Correlazioni
create or replace function creaCorrelazioni() returns trigger as $$
DECLARE
    temp record; --Creo un record temporaneo da utilizzar nel ciclo
BEGIN
    delete from CORRELAZIONE WHERE Oggetto1 = NEW.CODICE OR Oggetto2 = NEW.CODICE;
        FOR temp IN 
            select Codice
            from OGGETTO O 
        where O.Tema = NEW.Tema AND O.Codice <> NEW.Codice
    LOOP
        INSERT INTO CORRELAZIONE(Oggetto1, Oggetto2)
        VALUES (NEW.Codice, temp.Codice);       
    END LOOP; 
RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER TriggerCreaCorrelazioni
AFTER INSERT OR UPDATE OF Tema ON OGGETTO
FOR EACH ROW
EXECUTE FUNCTION creaCorrelazioni();

--Trigger1: Controllo Avatar
create or replace function gestioneAvatar() returns trigger as $$
begin
    if (not exists ( select * from AVATAR A
        join Abito B ON A.Abito = B.Id_abito
        join Accessorio C ON A.Accessorio = C.Id_accessorio
        where A.Id_Avatar = new.Id_Avatar
            and New.Civilta = B.Civilta
            and New.Civilta = C.Civilta
    )) then
        RAISE EXCEPTION 'Le civiltà dell''avatar, dell''abito e dell''accessorio non corrispondono';
    end if;
    if ( exists ( select * from AVATAR
        where Visitatore = NEW.Visitatore AND Id_Avatar<>NEW.Id_Avatar AND DataFine IS NULL AND OraFine IS NULL
    )) then
        UPDATE AVATAR
        SET DataFine = NEW.DataCrea, OraFine = NEW.OraCrea
        where Visitatore = NEW.Visitatore AND Id_Avatar<>NEW.Id_Avatar AND DataFine IS NULL AND OraFine IS NULL;
    end if;
RETURN NEW;
END;
$$ LANGUAGE plpgsql;

create trigger ControlloAvatarInsert
after insert on AVATAR
for each row
execute function gestioneAvatar();

-- Trigger2: Controllo Interazione
create or replace function controllo_interazione() returns trigger as $$
declare
    avatar_civilta INT;
    oggetto_civilta INT;
begin
    SELECT Civilta INTO avatar_civilta
    FROM AVATAR
    WHERE Id_Avatar = NEW.Avatar;

    SELECT Civilta INTO oggetto_civilta
    FROM OGGETTO
    JOIN COLLEZIONE ON OGGETTO.Collezione = COLLEZIONE.Id_collezione
    WHERE OGGETTO.Codice = NEW.Oggetto;

    If (avatar_civilta <> oggetto_civilta) 
    then
        RAISE EXCEPTION 'L''avatar non sta esplorando la stessa civiltà dell''oggetto.';
    end if;

RETURN NEW;
END;
$$ LANGUAGE plpgsql;

create trigger TriggerControlloInterazione
after insert on INTERAZIONE
for each row
execute function controllo_interazione();


--Trigger per il controllo delle cardinalità minime
CREATE OR REPLACE FUNCTION obbligatorietaVisitatore() returns trigger as $$
BEGIN
if (exists (select CF from VISITATORE
where CF not in (select Visitatore from VISITA))) then
RAISE EXCEPTION 'Visitatore almeno una visita';
end if;
if (exists (select CF from VISITATORE
where CF not in (select Visitatore from AVATAR))) then
RAISE EXCEPTION 'Visitatore almeno un avatar';
end if;
return NEW;
END $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION obbligatorietaVisita() returns trigger as $$
BEGIN
if (exists (select Id_visita from VISITA
where Id_visita not in (select Visita from UTILIZZA))) then
RAISE EXCEPTION 'Visita almeno un utilizzo';
end if;
return NEW;
END $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION obbligatorietaCivilta() returns trigger as $$
BEGIN
if (exists (select Id_civilta from CIVILTA
where Id_civilta not in (select Civilta from COLLEZIONE))) then
RAISE EXCEPTION 'Civilta almeno una collezione';
end if;
if (exists (select Id_civilta from CIVILTA
where Id_civilta not in (select Civilta from ABITO))) then
RAISE EXCEPTION 'Civilta almeno un abito';
end if;
if (exists (select Id_civilta from CIVILTA
where Id_civilta not in (select Civilta from ACCESSORIO))) then
RAISE EXCEPTION 'Civilta almeno un accessorio';
end if;
if (exists (select Id_civilta from CIVILTA
where Id_civilta not in (select Civilta from LOCALIZZAZIONE))) then
RAISE EXCEPTION 'Civilta almeno una localizzazione';
end if;
return NEW;
END $$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION obbligatorietaCollezione() returns trigger as $$
BEGIN
if (exists (select Id_collezione from COLLEZIONE
where Id_collezione not in (select Collezione from OGGETTO))) then
RAISE EXCEPTION 'Collezione almeno un oggetto';
end if;
return NEW;
END $$ LANGUAGE plpgsql;

create trigger controlloVisitatore
after insert on VISITATORE
for each row execute procedure obbligatorietaVisitatore();

create trigger controlloVisita
after insert on VISITA
for each row execute procedure obbligatorietaVisita();

create trigger controlloUtilizza
after delete on UTILIZZA
for each row execute procedure obbligatorietaVisita();

create trigger controlloCivilta
after insert on CIVILTA
for each row execute procedure obbligatorietaCivilta();

create trigger controlloLocalizzazione
after delete on LOCALIZZAZIONE
for each row execute procedure obbligatorietaCivilta();

create trigger controlloCollezione
after insert on COLLEZIONE
for each row execute procedure obbligatorietaCollezione();















