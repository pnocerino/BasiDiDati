drop table if exists VISITATORE cascade;
drop table if exists VISITA cascade;
drop table if exists UTILIZZA cascade;
drop table if exists OGGETTIINFORMATICI cascade;
drop table if exists AVATAR cascade;
drop table if exists CIVILTA cascade;
drop table if exists LOCALIZZAZIONE cascade;
drop table if exists AREAGEOGRAFICA cascade;
drop table if exists ABITO cascade;
drop table if exists ACCESSORIO cascade;
drop table if exists ESPERIENZA cascade;
drop table if exists PARTECIPAZIONE cascade;
drop table if exists INTERAZIONE cascade;
drop table if exists COLLEZIONE cascade;
drop table if exists CORRELAZIONE cascade;
drop table if exists OGGETTO cascade;
drop table if exists CONVERSAZIONE cascade;
drop table if exists AZIONE cascade;
drop table if exists INTERAZIONEAVATAR cascade;

create domain CodiceFiscale as char(16)
check (value ~ '^[A-Z]{6}\d{2}[A-Z]\d{2}[A-Z]\d{3}[A-Z]$');

create domain Email as varchar(50)
CHECK (VALUE ~ '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');

CREATE TABLE VISITATORE (
    CF CodiceFiscale primary key,
    Nome varchar(20) not null,
    Cognome varchar(20) not null,
    Email Email not null,
    DatadiNascita date not null,
    LuogodiNascita varchar(20) not null,
    unique(Nome,Cognome,DataDiNascita,LuogodiNascita)
);

CREATE TABLE VISITA (
    Id_visita int primary key,
    Data date not null,
    Ora time not null,
    Durata int null check (Durata > 0), --durata in minuti
    Visitatore CodiceFiscale not null,
    foreign key (Visitatore) references VISITATORE(CF) on delete cascade on update cascade deferrable initially deferred,
	unique(Data,Ora,Visitatore)
);

CREATE TABLE OGGETTIINFORMATICI (
    NumeroDiSerie varchar(20) primary key,
    Tipo varchar(20) not null,
    Marca varchar(10) not null,
    Modello varchar(20) not null,
    Tecnologia varchar(20) not null,
    Misura varchar(20) not null,
    Precisione varchar(20) null,
    Connettivita varchar(20) null,
    Risoluzione varchar(10) null,
    CampoVisvo varchar(10) null,
    Sensibilita varchar(10) null,
    Stato varchar(20) not null
);

CREATE TABLE UTILIZZA (
    Visita int,
    OggettoInformatico varchar(20),
  	primary key(Visita, OggettoInformatico),
	foreign key (Visita) references VISITA(Id_visita) on delete cascade on update cascade deferrable initially deferred,
	foreign key (OggettoInformatico) references OGGETTIINFORMATICI(NumeroDiSerie) on delete cascade on update cascade
);

CREATE TABLE CIVILTA (
    Id_civilta int primary key,
    Nome varchar(20) not null,
    PeriodoStorico varchar(20) not null,
    Lingua varchar(10) not null,
    Religione varchar(20) not null,
    Descrizione text not null,
    unique(Nome, PeriodoStorico)
);

CREATE TABLE AREAGEOGRAFICA (
    Nome varchar(20) primary key
);

CREATE TABLE LOCALIZZAZIONE (
    Civilta int,
    Area varchar(20),
    primary key (Civilta, Area),
    foreign key (Civilta) references CIVILTA(Id_civilta) on delete restrict on update restrict deferrable initially deferred,
    foreign key (Area) references AREAGEOGRAFICA(Nome) on delete cascade on update cascade
);

CREATE TABLE ABITO (
    Id_abito int primary key,
    Nome varchar(20) not null,
    Civilta int not null,
    Colore varchar(10) not null,
    Materiale varchar(20) not null,
    Stile varchar(20) not null,
    Descrizione text not null,
    unique(Nome, Civilta),
    foreign key (Civilta) references CIVILTA(Id_civilta) on delete restrict on update restrict deferrable initially deferred
);

CREATE TABLE ACCESSORIO (
    Id_accessorio int primary key,
    Nome varchar(20) not null,
    Civilta int not null,
    Colore varchar(10) not null,
    Materiale varchar(20) not null,
    Scopo varchar(20) not null,
    Descrizione Text not null, 
    unique(Nome, Civilta),
    foreign key (Civilta) references CIVILTA(Id_civilta) on delete restrict on update restrict deferrable initially deferred
);

CREATE TABLE AVATAR (
    Id_Avatar int primary key,
    Nickname varchar(20) not null,
    Punteggio int null check(Punteggio >= 0),
    DataCrea date not null,
    OraCrea time not null,
    DataFine date null,
    OraFine time null,
    Visitatore char(16) not null,
    Civilta int not null,
    Abito int not null,
    Accessorio int not null,
    unique(Nickname, DataCrea, OraCrea),
    foreign key (Visitatore) references VISITATORE(CF) on delete cascade on update cascade deferrable initially deferred,
    foreign key (Civilta) references CIVILTA(Id_civilta) on delete restrict on update restrict,
    foreign key (Abito) references ABITO(Id_abito) on delete restrict on update restrict,
    foreign key (Accessorio) references ACCESSORIO(Id_accessorio) on delete restrict on update restrict
);

CREATE TABLE ESPERIENZA (
    Id_esperienza int primary key,
    Nome varchar(50) not null,
    Civilta int not null,
    Tipo VARCHAR(20) not null,
    Durata int not null check (Durata > 0), --durata in minuti
    Luogo varchar(20) not null,
    SignificatoStorico text null,
    Data varchar(20) null,
    Causa text null,
    Mestiere varchar(20) null,
    Descrizione text not null,
    unique(Nome,Civilta), 
    foreign key (Civilta) references CIVILTA(Id_civilta) on delete restrict on update restrict
);

CREATE TABLE PARTECIPAZIONE (
    Data date,
    Ora time,
    Avatar int,
    Esperienza int not null,
    primary key (Data, Ora, Avatar),
    foreign key (Avatar) references AVATAR(Id_Avatar) on delete cascade on update cascade,
    foreign key (Esperienza) references ESPERIENZA(Id_esperienza) on delete cascade on update cascade
);

CREATE TABLE COLLEZIONE (
    Id_collezione int primary key,
    Nome varchar(100) not null,
    Civilta int not null,
    Tipo varchar(50) not null,
    Descrizione text not null,
    unique(Nome,Civilta),
    foreign key (Civilta) references CIVILTA(Id_civilta) on delete restrict on update restrict deferrable initially deferred
);

CREATE TABLE OGGETTO (
    Codice varchar(20) primary key,
    Nome varchar(100) not null,
    Collezione int not null,
    Provenienza varchar(20) null,
    Datazione varchar(20) null,
    Tema varchar(100) not null,
    Materiale varchar(50) not null,
    Rarita varchar(50) not null  check (Rarita in ('Comune', 'Raro', 'Unico')),
    SignificatoStorico text not null,
    foreign key  (Collezione) references COLLEZIONE(Id_collezione) on delete cascade on update cascade deferrable initially deferred
);

CREATE TABLE INTERAZIONE (
    Data date,
    Ora time,
    Avatar int,
    Oggetto varchar(20) not null,
    Descrizione text not null,
    primary key (Data, Ora, Avatar),
    foreign key (Avatar) references AVATAR(Id_Avatar) on delete cascade on update cascade,
    foreign key (Oggetto) references OGGETTO(Codice) on delete cascade on update cascade
);

CREATE TABLE CORRELAZIONE (
    Oggetto1 varchar(20),
    Oggetto2 varchar(20),
    primary key (Oggetto1, Oggetto2),
    foreign key (Oggetto1) references OGGETTO(Codice) on delete cascade on update cascade,
    foreign key (Oggetto2) references OGGETTO(Codice) on delete cascade on update cascade,
    constraint controlloCORRELAZIONE check (Oggetto1 <> Oggetto2)
);

CREATE TABLE CONVERSAZIONE (
    Titolo varchar(50) primary key,
    Tipo varchar(50) not null,
    Argomento text not null,
    Motivo text null,
    TemaStorico varchar(50) null,
    Descrizione text null
);

CREATE TABLE AZIONE (
    Nome varchar(20) primary key,
    Tipo varchar(20) not null,
    Lunghezza int null check(Lunghezza > 0),
    Contenuto text not null
);

CREATE TABLE INTERAZIONEAVATAR (
    Data date,
    Ora time,
    Avatar int,
    Azione varchar(20) not null,
    Conversazione varchar(50) not null,
    Descrizione text not null,
    primary key (Data, Ora, Avatar),
    foreign key (Avatar) references AVATAR(Id_Avatar) on delete cascade on update cascade,
    foreign key (Azione) references AZIONE(Nome) on delete cascade on update cascade,
    foreign key (Conversazione) references CONVERSAZIONE(Titolo) on delete cascade on update cascade
);
