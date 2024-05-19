-- Query con operatore di aggregazione e join: Interazione Oggetti
select O.Codice, O.Nome, count(I.Oggetto) as NumeroInterazioni
from OGGETTO O
join INTERAZIONE I on O.Codice = I.Oggetto
join COLLEZIONE Col on O.Collezione = Col.Id_collezione
join CIVILTA Civ on Col.Civilta = Civ.Id_civilta
where Civ.Nome = 'Greci'
group by O.Codice
order by NumeroInterazioni desc

-- Query nidificata complessa: Civiltà con Oggetto Informatico
select Av.Nickname
from Avatar Av
where Av.DataCrea = '2024-05-01'
and Av.Civilta = (
    select Id_civilta 
    from CIVILTA 
    where Nome = 'Greci'
)
and exists (
    select *
    from Visita V1 
	join Visitatore Vis on V1.Visitatore = Vis.CF
    and V1.Data = '2024-05-01'
    and exists(
        select *
        from OggettiInformatici O
        join Utilizza U on O.NumeroDiSerie = U.OggettoInformatico
        where U.Visita = V1.Id_visita
        and O.Tipo in(
            select Tipo 
            from OGGETTIINFORMATICI
            where Tipo = 'VISORE VR'
        )
    )
);

-- Query insiemistica: Nessuna Esperienza
select Id_Avatar, Nickname
from Avatar
where Civilta = any (	select Id_civilta 
			from Civilta 
			where Nome = 'Romani')

except

select Avatar, Nickname
from Avatar Av
join Partecipazione Part on Av.Id_Avatar=Part.Avatar
join Esperienza E on Part.Esperienza = E.Id_esperienza
where E.Civilta = (	select Id_civilta 
			from CIVILTA 
			where Nome = 'Romani');


--OP9 
select Civ.Nome, count(O.codice) as NumeroOggetti
from Civilta Civ
join Collezione Col on Col.civilta = Civ.Id_Civilta
join Oggetto O on O.collezione = Col.id_collezione
where Civ.Nome = 'Romani'
group by (Civ.Nome)

--Vista: Dettagli Visita
create view VisiteCivilta as
select V.Visitatore, V.Data as DATAVISITA, Vis.Nome, Vis.Cognome, V.Id_visita as CodiceVisita, Civ.Nome as NomeCiviltà, Civ.id_Civilta as IDCIVILTA, Av.Id_Avatar as IDAVATAR
from Visita V
join Visitatore Vis on Vis.CF = V.Visitatore
join Avatar Av on V.Visitatore = Av.Visitatore
join Civilta Civ on Av.Civilta = Civ.Id_Civilta
where V.Data = Av.DataCrea 
and V.Ora = Av.OraCrea;

--Query con Vista: Esperienze Visita
select distinct VC.NomeCiviltà, E.Nome as NomeEsperinza, E.tipo as TipoEsperienza, E.luogo as LuogoEsperienza
from VisiteCivilta VC
join Partecipazione Part on Part.avatar = VC.IDAVATAR
join Esperienza E on Part.esperienza = E.id_esperienza and VC.IDCIVILTA = E.civilta
where VC.Visitatore = 'GLLLCU85M15H501X' and VC.DATAVISITA = '2024-05-01'

