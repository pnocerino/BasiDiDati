-- Popolamento Civilta Repubblica Romana
start transaction;
insert into AREAGEOGRAFICA (Nome) values ('Europa'), ('Africa'), ('Asia');
insert into LOCALIZZAZIONE (Civilta, Area) values (1, 'Europa'), (1, 'Africa'), (1, 'Asia');
insert into ABITO (Id_abito, Nome, Civilta, Colore, Materiale, Stile, Descrizione)
values
(1, 'Toga', 1, 'Bianco', 'Lana', 'Formale', 'Vestito tradizionale romano indossato dai cittadini maschi'),
(2, 'Palla', 1, 'Rosso', 'Lino', 'Casuale', 'Vestito femminile romano composto da due pezzi'),
(3, 'Purpura', 1, 'Porpora', 'Seta', 'Formale', 'Indumento di lusso indossato dagli imperatori'),
(4, 'Tunica', 1, 'Marrone', 'Lino', 'Casuale', 'Indumento di base indossato sia da uomini che da donne');
insert into ACCESSORIO (Id_accessorio, Nome, Civilta, Colore, Materiale, Scopo, Descrizione)
values
(1, 'Bullae', 1, 'Dorato', 'Oro', 'Protettivo', 'Amuleti indossati dai bambini romani per protezione'),
(2, 'Anello', 1, 'Oro', 'Oro', 'Gioiello', 'Anello romano decorato indossato come simbolo di status'),
(3, 'Daga', 1, 'Argento', 'Ferro', 'Arma', 'Arma da taglio corta utilizzata dai soldati romani'),
(4, 'Collana e orecchini', 1, 'Oro', 'Oro', 'Gioielli', 'Set di gioielli indossati intorno al collo e alle orecchie'),
(5, 'Bracciale e anello', 1, 'Argento', 'Argento', 'Gioielli', 'Set di gioielli indossati intorno al polso e al dito');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('ARM001', 'Gladio', 1, 'Cartagine', '200 AC', 'Arma da combattimento romana', 'Ferro', 'Comune', 'Arma principale dei legionari romani'),
('ARM002', 'Pilum', 1, 'Roma', '100 AC', 'Lancia romana da lancio', 'Ferro', 'Comune', 'Utilizzato dai legionari per rompere le linee nemiche'),
('ARM003', 'Scutum', 1, 'Roma', '300 AC', 'Scudo utilizzato dai legionari romani', 'Legno, cuoio', 'Raro', 'Forniva protezione ai legionari durante il combattimento');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (1, 'Armi da combattimento', 1, 'Armi', 'Collezione di armi utilizzate dagli antichi Romani');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('SCU001', 'Apollo di Belvedere', 2, 'Potenza', '100 AC', 'Divinità greca', 'Marmo', 'Raro', 'Statua di Apollo, dio greco della musica e delle arti'),
('SCU002', 'Augusto di Prima Porta', 2, 'Roma', '20 AC', 'Imperatore Romano', 'Marmo', 'Raro', 'Statua raffigurante limperatore Augusto in armatura'),
('SCU003', 'Discobolo', 2, 'Roma', '200 AC', 'Atletismo', 'Bronzo', 'Raro', 'Statua raffigurante un atleta che lancia un disco');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (2, 'Sculture umane', 1, 'Sculture', 'Collezione di sculture romane risalenti allantichità');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('UTE001', 'Anfora', 3, 'Atene', '100 AC', 'Contenitori', 'Terracotta', 'Comune', 'Contenitore utilizzato per il trasporto di liquidi'),
('UTE002', 'Lucerna', 3, 'Corinto', '150 AC', 'Illuminazione', 'Terracotta', 'Raro', 'Lampada ad olio utilizzata per lilluminazione'),
('UTE003', 'Strigile', 3, 'Pompei', '200 AC', 'Igiene', 'Bronzo', 'Raro', 'Strumento utilizzato per pulirsi durante il bagno pubblico');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (3, 'Utensili domestici', 1, 'Utensili', 'Collezione di utensili e attrezzi utilizzati dagli antichi Romani');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('MOS001', 'Mosaico della Battaglia di Isso', 4, 'Roma', '100 AC', 'Guerra', 'Marmo', 'Raro', 'Mosaico raffigurante la battaglia tra Alessandro Magno e Dario III di Persia'),
('MOS002', 'Mosaico della Casa del Fauno', 4, 'Pompei', '50 AC', 'Mitologia', 'Pietra', 'Raro', 'Mosaico raffigurante scene mitologiche romane'),
('MOS003', 'Mosaico delle Grotte di Nerone', 4, 'Roma', '70 AC', 'Natura', 'Vetro', 'Raro', 'Mosaico raffigurante paesaggi naturali e animali');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (4, 'Mosaici', 1, 'Mosaici', 'Collezione di mosaici romani antichi');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('STN001', 'Tavoletta di cera con messaggio criptato', 5, 'Roma', '50 AC', 'Criptografia', 'Cera', 'Comune', 'Tavoletta con un messaggio criptato che rivela una storia segreta o una comunicazione clandestina'),
('STN002', 'Amuleto di Fortuna con incisioni misteriose', 5, 'Napoli', '100 AC', 'Mistero', 'Oro', 'Raro', 'Amuleto con incisioni enigmatiche che raccontano una storia misteriosa o leggendaria'),
('STN003', 'Lucchetto di bronzo con sigillo rotto', 5, 'Frosinone', '150 AC', 'Segreti nascosti', 'Bronzo', 'Comune', 'Lucchetto con il sigillo rotto che custodiva un segreto o un tesoro nascosto');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (5, 'Storie varie', 1, 'Storie Nascoste', 'Collezione di oggetti e reperti che raccontano storie nascoste dellantica Roma');
insert into CIVILTA (Id_civilta, Nome, PeriodoStorico, Lingua, Religione, Descrizione) values (1, 'Romani','Repubblica Romana','Latino','Politeismo romano', 'Durante la Repubblica Romana, Roma prosperò come una potenza mediterranea...');
commit;
insert into ESPERIENZA (Id_esperienza, Nome, Civilta, Tipo, Durata, Luogo, SignificatoStorico, Data, Causa, Mestiere, Descrizione)
values
(1, 'Battaglia di Canne', 1, 'Evento storico', 30, 'Canne', NULL , '216 AC', 'Strategia militare', NULL, 'Sconfitta romana da parte di Annibale durante la Seconda Guerra Punica'),
(2, 'Circus Maximus', 1, 'Attività quotidiana', 15, 'Roma', 'Spettacoli di corse di carri e giochi pubblici', 'NULL', NULL, 'Auriga', 'Il Circus Maximus era un antico stadio a Roma.'),
(3, 'Costruzione dellAppia', 1, 'Evento storico', 20, 'Italia', NULL, '312 AC', 'Infrastruttura', NULL, 'Realizzazione della Via Appia, strada romana che collegava Roma al sud Italia');

-- Popolamento Civiltà egizia
start transaction;
insert into LOCALIZZAZIONE (Civilta, Area) values (2, 'Africa');
insert into ABITO (Id_abito, Nome, Civilta, Colore, Materiale, Stile, Descrizione)
values
(5, 'Tunica', 2, 'Bianco', 'Lino', 'Formale', 'Vestito tradizionale egizio indossato sia da uomini che da donne'),
(6, 'Kalasiris', 2, 'Verde', 'Lino', 'Casuale', 'Vestito femminile egizio composto da una lunga tunica aderente'),
(7, 'Abito da Faraone', 2, 'Oro', 'Lino', 'Formale', 'Abito completo da faraone composto da Nemes, Shendyt, Cintura, Sandali'),
(8, 'Galabeya', 2, 'Blu scuro', 'Cotone', 'Casuale', 'Abito tradizionale egiziano, ampiamente utilizzato anche nella vita quotidiana moderna');
insert into ACCESSORIO (Id_accessorio, Nome, Civilta, Colore, Materiale, Scopo, Descrizione)
values
(6, 'Collana e bracciale', 2, 'Oro', 'Oro', 'Gioielli', 'Set di gioielli indossati intorno al collo e al polso'),
(7, 'Anello', 2, 'Oro', 'Oro', 'Gioiello', 'Anello egizio decorato indossato come simbolo di status'),
(8, 'Amuleto di Horus', 2, 'Oro', 'Oro', 'Amuleto', 'Amuleto raffigurante locchio di Horus, simbolo di protezione e guarigione'),
(9, 'Scarabeo in oro', 2, 'Oro', 'Oro', 'Gioiello', 'Scarabeo doro, amuleto simbolico di buon augurio e protezione'),
(10, 'Collana con pendenti', 2, 'Argento', 'Argento', 'Gioiello', 'Collana con pendenti vari, ognuno con un significato simbolico nellantica cultura egizia');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('RPT001', 'Vaso canopo', 6, 'Saqqara', '1400 AC', 'Rituale funerario', 'Alabastro', 'Raro', 'Vaso utilizzato per conservare gli organi interni durante la mummificazione'),
('RPT002', 'Ushabti', 6, 'Tebe', '1250 AC', 'Aiuto nellaldilà', 'Terracotta', 'Comune', 'Statuetta sepolcrale posta nelle tombe egizie per servire il defunto nellaldilà'),
('RPT003', 'Maschera funeraria', 6, 'Giza', '1300 AC', 'Rituale funerario', 'Oro', 'Raro', 'Maschera in oro indossata dal defunto per proteggere e accompagnare lanima nel regno dei morti'),
('RPT004', 'Amuleto di Anubi', 6, 'Menfi', '1200 AC', 'Protezione', 'Bronzo', 'Comune', 'Amuleto raffigurante Anubi, dio egizio dei morti e delloltretomba, portato dai defunti per protezione'),
('RPT005', 'Stele funeraria', 6, 'Luxor', '1350 AC', 'Commemorazione', 'Pietra', 'Raro', 'Pietra incisa con iscrizioni e immagini in onore del defunto, posta sulle tombe per commemorare la sua vita e i suoi meriti');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (6, 'Reperti funerari', 2, 'Reperti', 'Collezione di reperti e oggetti sepolcrali appartenenti alla civiltà egizia');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('GRG001', 'Stele con testi sacri', 7, 'Karnak', '1275 AC', 'Rituale religioso', 'Pietra calcarea', 'Raro', 'Stele incisa con geroglifici raffiguranti testi sacri, utilizzata nei templi egizi per scopi religiosi'),
('GRG002', 'Papiro con incisioni', 7, 'Memphis', '1300 AC', 'Scrittura', 'Papiro', 'Comune', 'Rotolo di papiro contenente testi sacri scritti in geroglifici, utilizzato come supporto per documenti religiosi'),
('GRG003', 'Tavoletta cerimoniale', 7, 'Tebe', '1250 AC', 'Rituale religioso', 'Legno', 'Raro', 'Tavoletta cerimoniale con incisioni geroglifiche utilizzata nei riti sacri egizi'),
('GRG004', 'Oggetto votivo', 7, 'Saqqara', '1225 AC', 'Religione', 'Bronzo', 'Comune', 'Oggetto votivo decorato con geroglifici, offerto agli dei nei templi come segno di devozione e gratitudine'),
('GRG005', 'Piatto cerimoniale', 7, 'Giza', '1280 AC', 'Religione', 'Alabastro', 'Raro', 'Piatto cerimoniale decorato con geroglifici utilizzato durante le cerimonie religiose egizie');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (7, 'Geroglifici sacri', 2, 'Geroglifici', 'Collezione di geroglifici incisi su pietra, raffiguranti testi sacri e rituali');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('VAS001', 'Anfora decorata', 8, 'Tebe', '1200 AC', 'Arte vascolare', 'Terracotta', 'Comune', 'Anfora decorata con motivi egizi utilizzata per il trasporto di liquidi'),
('VAS002', 'Calice cerimoniale', 8, 'Menfi', '1250 AC', 'Religione', 'Argento', 'Raro', 'Calice utilizzato nelle cerimonie religiose, decorato con simboli e motivi egizi'),
('VAS003', 'Vaso canopo ornamentale', 8, 'Saqqara', '1300 AC', 'Decorazione', 'Alabastro', 'Raro', 'Vaso canopo decorativo scolpito con figure e simboli egizi, utilizzato come oggetto rituale o decorativo'),
('VAS004', 'Brocca dipinta', 8, 'Giza', '1275 AC', 'Vita quotidiana', 'Terracotta', 'Comune', 'Brocca dipinta con scene di vita quotidiana egizia, utilizzata per contenere liquidi'),
('VAS005', 'Coppa con scene mitologiche', 8, 'Luxor', '1220 AC', 'Mito', 'Bronzo', 'Raro', 'Coppa decorata con scene mitologiche egizie, utilizzata in occasioni speciali o cerimonie');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (8, 'Arte vascolare', 2, 'Vasi', 'Collezione di vasi e contenitori decorati con motivi egizi');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('GRG006', 'Piatto decorato', 9, 'Menfi', '1250 AC', 'Ornamentale', 'Ceramica', 'Comune', 'Piatto decorato con geroglifici stilizzati, utilizzato come oggetto ornamentale'),
('GRG007', 'Vaso con geroglifici', 9, 'Luxor', '1270 AC', 'Decorativo', 'Terracotta', 'Raro', 'Vaso decorato con geroglifici raffiguranti motivi simbolici egizi, utilizzato come elemento decorativo'),
('GRG008', 'Scultura con iscrizioni', 9, 'Giza', '1240 AC', 'Arte', 'Marmo', 'Raro', 'Scultura artistica con incisioni di geroglifici, rappresentante scene mitologiche egizie'),
('GRG009', 'Tavoletta incisa', 9, 'Saqqara', '1220 AC', 'Arte', 'Legno', 'Comune', 'Tavoletta di legno incisa con geroglifici, utilizzata come elemento decorativo nelle abitazioni'),
('GRG010', 'Cofanetto ornamentale', 9, 'Tebe', '1260 AC', 'Decorazione', 'Legno', 'Raro', 'Cofanetto decorato con geroglifici e motivi egizi, utilizzato per conservare oggetti preziosi');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (9, 'Geroglifici decorativi', 2, 'Geroglifici', 'Collezione di geroglifici decorativi utilizzati per scopi artistici e ornamentali');
insert into CIVILTA (Id_civilta, Nome, PeriodoStorico, Lingua, Religione, Descrizione) values (2, 'Egizi', 'Antico Egitto', 'Egiziano', 'Politeismo', 'LAntico Egitto, una delle più antiche civiltà della storia umana, fiorì lungo il corso del Nilo...');
commit;
insert into ESPERIENZA (Id_esperienza, Nome, Civilta, Tipo, Durata, Luogo, SignificatoStorico, Data, Causa, Mestiere, Descrizione)
values
(4, 'Costruzione piramide Cheope', 2, 'Evento storico', 20, 'Giza', NULL, '2550 AC', 'Onore al faraone', NULL, 'Imponenti strutture funerarie erette per i faraoni egizi come monumenti eterni'),
(5, 'Riti religiosi', 2, 'Attività quotidiana', 10, 'Tempio', 'Pratiche rituali sacre svolte dagli egizi per venerare le divinità', NULL, NULL, 'Cittadino', 'Attività quotidiana di pratica religiosa svolta nei templi'),
(6, 'Festival di Opet', 2, 'Attività quotidiana', 10, 'Tebe', 'Antico festival religioso egizio dedicato alla dea Tebe', NULL, NULL, 'Cittadino', 'Attività quotidiana di partecipazione a festival religiosi'),
(7, 'Esplorazione del Nilo', 2, 'Attività quotidiana', 15, 'Nilo', 'Viaggio lungo il fiume Nilo per esplorare e mappare nuove terre e risorse', NULL, NULL, 'Cittadino', 'Attività quotidiana di esplorazione del fiume Nilo per ricerca e scoperta di nuove aree e risorse');

-- Popolamento Civiltà Greca
start transaction;
insert into LOCALIZZAZIONE (Civilta, Area) values (3, 'Europa');
insert into ABITO (Id_abito, Nome, Civilta, Colore, Materiale, Stile, Descrizione)
values
(9, 'Chitone', 3, 'Bianco', 'Lino', 'Formale', 'Indumento tradizionale greco, una tunica lunga indossata da uomini e donne'),
(10, 'Peplo', 3, 'Rosso', 'Lana', 'Formale', 'Indumento femminile greco costituito da due pezzi sovrapposti'),
(11, 'Chlamys', 3, 'Viola', 'Lana', 'Casuale', 'Mantello corto indossato dagli uomini grechi'),
(12, 'Himation', 3, 'Marrone', 'Lana', 'Formale', 'Mantello greco');
insert into ACCESSORIO (Id_accessorio, Nome, Civilta, Colore, Materiale, Scopo, Descrizione)
values
(11, 'Diadema', 3, 'Oro', 'Oro', 'Accessorio', 'Benda ornamentale indossata attorno alla testa, spesso simbolo di nobiltà o divinità'),
(12, 'Fibula', 3, 'Argento', 'Argento', 'Gioiello', 'Spilla utilizzata per chiudere i vestiti, spesso decorata con motivi artistici'),
(13, 'Filòtto', 3, 'Argento', 'Argento', 'Gioiello', 'Bracciale greco tradizionale indossato attorno al braccio o alla caviglia'),
(14, 'Xiphos', 3, 'Argento', 'Bronzo', 'Arma', 'Una spada corta utilizzata dagli antichi guerrieri greci, nota per la sua efficacia in combattimento ravvicinato'),
(15, 'Aspis', 3, 'Nero', 'Legno e bronzo', 'Scudo', 'Lo scudo tradizionale dei soldati greci, utilizzato per proteggersi in battaglia'),
(16, 'Dory', 3, 'Bronzo', 'Bronzo', 'Lancia', 'Una lancia lunga utilizzata dai guerrieri greci, particolarmente comune nellantica falange greca');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('ARM004', 'Xiphos', 10, 'Atene', '500 AC', 'Guerra', 'Bronzo', 'Comune', 'Spada corta utilizzata dai soldati greci'),
('ARM005', 'Lancia', 10, 'Sparta', '600 AC', 'Guerra', 'Ferro', 'Comune', 'Lancia utilizzata dagli opliti greci nello scudo'),
('ARM006', 'Elmo Corinthian', 10, 'Corinto', '550 AC', 'Difesa', 'Bronzo', 'Raro', 'Elmo greco caratterizzato da un nasello a forma di griglia'),
('ARM007', 'Scudo Aspis', 10, 'Atene', '520 AC', 'Difesa', 'Legno, bronzo', 'Comune', 'Scudo rotondo utilizzato dagli opliti greci per la difesa');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (10, 'Armi e armature', 3, 'Armi', 'Collezione di armi e armature utilizzate dagli antichi Greci');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('SCU004', 'Discobolo di Mirone', 11, 'Olimpia', '450 AC', 'Atletismo', 'Bronzo', 'Raro', 'Statua raffigurante un atleta che lancia un disco'),
('SCU005', 'Auriga di Delfi', 11, 'Delfi', '470 AC', 'Vittoria', 'Bronzo', 'Raro', 'Statua di un auriga su un carro, scoperta a Delfi'),
('SCU006', 'Afrodite di Milo', 11, 'Milo', '100 AC', 'Mito', 'Marmo', 'Raro', 'Statua raffigurante la dea dellamore e della bellezza, Afrodite, rinvenuta sullisola di Milo');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (11, 'Sculture divinità', 3, 'Sculture', 'Collezione di sculture risalenti allantica Grecia');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values
('CER001', 'Anfora a figure nere', 12, 'Atene', '550 AC', 'Arte', 'Terracotta', 'Comune', 'Anfora greca decorata con figure nere su uno sfondo rosso'),
('CER002', 'Krater a figure rosse', 12, 'Corinto', '500 AC', 'Arte', 'Terracotta', 'Comune', 'Krater greco decorato con figure rosse su uno sfondo nero'),
('CER003', 'Kylix', 12, 'Atene', '520 AC', 'Arte', 'Argento', 'Raro', 'Coppa greca utilizzata per bere vino, spesso decorata con scene mitologiche o di vita quotidiana');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (12, 'Ceramica greca', 3, 'Ceramica', 'Collezione di ceramiche decorate in stile greco');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico)
values 
('POE001', 'La Repubblica', 13, 'Atene', '380 AC', 'Filosofia', 'Papiro', 'Comune', 'Dialogo filosofico di Platone che esplora il concetto di giustizia e politica nellantica Atene'),
('POE002', 'Iliade', 13, 'Grecia antica', '750 AC', 'Guerra', 'Pergamena', 'Raro', 'Epopea epica attribuita a Omero, celebre per narrare gli eventi della guerra di Troia'),
('POE003', 'Odissea', 13, 'Grecia antica', '720 AC', 'Avventura', 'Pergamena', 'Raro', 'Epopea epica attribuita a Omero, narra le avventure di Ulisse nel suo ritorno a casa dopo la guerra di Troia'),
('POE004', 'Storia di Erodoto', 13, 'Grecia antica', '440 AC', 'Biografia', 'Pergamena', 'Comune', 'Opera storica di Erodoto che racconta le guerre persiane e altri eventi della Grecia antica');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (13, 'Poemi Epici', 3, 'Poemi', 'Collezione di epopee e poemi epici della civiltà greca antica');
insert into OGGETTO (Codice, Nome, Collezione, Provenienza, Datazione, Tema, Materiale, Rarita, SignificatoStorico) 
values 
('STN004', 'Misteri Eleusini', 14, 'Eleusi, Grecia', 'Epoca classica', 'Riti misterici', 'Papiro', 'Raro', 'Segreti cerimoniali legati ai misteri eleusini, che comprendevano rituali di iniziazione e venerazione di Demetra e Persefone'),
('STN005', 'Oracolo di Delfi', 14, 'Delfi, Grecia', 'Epoca arcaica', 'Divinazione', 'Bronzo', 'Unico', 'Famoso oracolo della Grecia antica, dove si credeva che la sacerdotessa di Apollo fornisse risposte e profezie agli inquirenti'),
('STN006', 'Tavolette di Lineare B', 14, 'Creta, Grecia', 'Età del bronzo tarda', 'Scrittura', 'Argilla', 'Raro', 'Testi in lingua Lineare B, utilizzati dai Micenei per registrare inventari, amministrazione e altri documenti'),
('STN007', 'Libro di Enoch', 14, 'Egitto', 'Circa 300 a.C.', 'Apocrifi', 'Pergamena', 'Unico', 'Testo apocrifo attribuito a Enoch, che contiene narrazioni religiose e apocalittiche, anche se non fa parte del canone biblico'),
('STN008', 'Epistolario di Seneca', 14, 'Roma, Impero Romano', 'I secolo d.C.', 'Letteratura', 'Pergamena', 'Comune', 'Raccolta di lettere scritte da Lucio Anneo Seneca, filosofo stoico e consigliere dellimperatore Nerone');
insert into COLLEZIONE (Id_collezione, Nome, Civilta, Tipo, Descrizione) values (14, 'Storie antichi', 3, 'Storie Nascoste', 'Collezione di testi e manoscritti antichi della civiltà greca');
insert into CIVILTA (Id_civilta, Nome, PeriodoStorico, Lingua, Religione, Descrizione) values (3, 'Greci', 'Antica Grecia', 'Greco', 'Politeismo greco', 'LAntica Grecia è stata una delle più influenti civiltà della storia occidentale, con contributi significativi alla politica, alla filosofia, allarte e alla cultura...');
commit;
insert into ESPERIENZA (Id_esperienza, Nome, Civilta, Tipo, Durata, Luogo, SignificatoStorico, Data, Causa, Mestiere, Descrizione)
values
(8, 'Festa delle Panatenee', 3, 'Attività quotidiana', 5, 'Atene', 'Celebrazione in onore della dea Atena', NULL, NULL, 'Cittadino', 'Festival annuale celebrato ad Atene in onore della dea Atena, includendo gare sportive, sacrifici e processioni'),
(9, 'Filosofia nelle Scuole di Atene', 3, 'Attività quotidiana', 10, 'Atene', 'Sviluppo dellintelletto e della riflessione filosofica', NULL, NULL, 'Filosofo', 'Partecipazione a discussioni filosofiche nelle scuole di Atene, tra cui lAcropoli e il Liceo'),
(10, 'Battaglia di Maratona', 3, 'Evento storico', 15, 'Maratona', NULL, '490 AC', 'Difesa della libertà e dellindipendenza greca', NULL, 'Importante battaglia durante le Guerre Persiane, in cui i Greci sconfissero linvasione persiana sulla pianura di Maratona');

--Inserimento Oggetti Informatici
insert into OGGETTIINFORMATICI (NumeroDiSerie, Tipo, Marca, Modello, Tecnologia, Misura, Precisione, Connettivita, Risoluzione, CampoVisvo, Sensibilita, Stato)
values
    ('12345678946398', 'VISORE VR', 'Oculus', 'Quest 2', 'LCD', 'Grande', null, 'Wi-Fi', '1832x1920', '110 gradi', null, 'Disponibile'),
    ('98765432129861', 'VISORE VR', 'HTC', 'Vive Pro 2', 'AMOLED', 'Grande', null, 'Wi-Fi', '2448x2448', '120 gradi', null, 'Disponibile'),
    ('45612378910267', 'VISORE VR', 'Sony', 'PlayStation VR 2', 'OLED', 'Medio', null, 'USB-C', '2000x2040', '100 gradi', null, 'Disponibile'),
    ('78912345610374', 'VISORE VR', 'Valve', 'Index', 'LCD', 'Grande', null, 'USB 3.0', '1440x1600', '130 gradi', null, 'Disponibile'),
    ('32165498710274', 'VISORE VR', 'Samsung', 'Odyssey G7', 'AMOLED', 'Medio', null, 'DisplayPort', '1440x1600', '110 gradi', null, 'Disponibile'),
    ('20240501', 'GUANTI HAPTIC', 'HaptX', 'HaptX Gloves', 'Tactile', 'Medium', 'Alta', null, null, null, 'Alta', 'Disponibile'),
    ('20240502', 'GUANTI HAPTIC', 'bHaptics', 'Tactosy', 'Tactile', 'Large', 'Media', null, null, null, 'Media', 'Disponibile'),
    ('20240503', 'GUANTI HAPTIC', 'Teslasuit', 'TactSuit', 'Tactile', 'Medium', 'Alta', null, null, null, 'Alta', 'Disponibile'),
    ('20240504', 'GUANTI HAPTIC', 'Dexmo', 'Dexmo Haptic Glove', 'Tactile', 'Medium', 'Bassa', null, null, null, 'Bassa', 'Disponibile'),
    ('20240505', 'GUANTI HAPTIC', 'SynTouch', 'BioTac SP', 'Tactile', 'Small', 'Media', null, null, null, 'Media', 'Disponibile');

--Inserimento azioni già predefinite
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto)
values
    ('Saluto Informale', 'Saluto', NULL, 'Ciao! Come stai?'),
    ('Saluto Formale', 'Saluto', NULL, 'Buongiorno! È un piacere incontrarti.'),
    ('Saluto Amichevole', 'Saluto', NULL, 'Hey! Che bello vederti.'),
    ('Saluto Rispettoso', 'Saluto', NULL, 'Salve! Spero che la tua giornata sia piacevole.'),
    ('Saluto Affettuoso', 'Saluto', NULL, 'Ciao amico! Come va?'),
    ('Saluto Cordiale', 'Saluto', NULL, 'Buonasera! È sempre un piacere vederti.'),
    ('Saluto Gentile', 'Saluto', NULL, 'Salve! Spero che tu stia bene.'),
    ('Saluto Sincero', 'Saluto', NULL, 'Ciao! Spero che la tua giornata sia piena di gioia.'),
    ('Saluto Allegro', 'Saluto', NULL, 'Hey! Spero che tu stia avendo una giornata fantastica.'),
    ('Saluto Caloroso', 'Saluto', NULL, 'Buongiorno! Come va? Spero tutto bene.');

--Inserimento visita Mario Rossi
start transaction; 
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (1, 'MarioRossi90', 5, '2024-05-01', '18:00:00', NULL, NULL, 'RSSMRA90A01H501U', 1, 3, 2);
insert into UTILIZZA (Visita, OggettoInformatico) values (1, '98765432129861'), (1, '20240504');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (1, '2024-05-01', '18:00:00', 120 , 'RSSMRA90A01H501U');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('RSSMRA90A01H501U', 'Mario', 'Rossi', 'mario.rossi@example.com', '1990-01-01', 'Roma' );
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '18:10:00', 1, 1),('2024-05-01', '18:50:00', 1, 1);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '18:05:00', 1, 'SCU002', 'Ammirazione della scultura'), ('2024-05-01', '18:45:00', 1, 'UTE003', 'Utilzzo dellutensile'),('2024-05-01', '19:15:00', 1, 'STN001', 'Lettura della storia nascosta'),('2024-05-01', '19:20:00', 1, 'MOS001', 'Visione del mosaico');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Discussione Storica', 'Discussione virtuale', 'Discussione sulla storia antica', NULL, 'Storia antica', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessMR1', 'Messaggio', NULL, 'Penso che lAntica Roma sia stata la civiltà...'), ('MessMR2', 'Messaggio', 100, 'Sono daccordo in parte, poichè penso che...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '18:00:00', 1, 'MessMR1', 'Discussione Storica', 'Partecipa attivamente alla discussione sulla storia antica'), ('2024-05-01', '18:42:00', 1, 'MessMR2', 'Discussione Storica', 'Analizza un oggetto storico');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Amicizia', 'Incontro Amichevole', 'Conoscenza', NULL, NULL, NULL);
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '19:20:00', 1, 'Saluto Formale', 'Amicizia', 'Conosciamoci'), ('2024-05-01', '19:25:00', 1, 'Saluto Gentile', 'Amicizia', 'Conosciamoci') ;

-- Inserimento visita Carlo Casini
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (2, 'CarloCasini85', 5, '2024-05-01', '19:30:00', NULL, NULL, 'CRNSMN85A01H501V', 1, 2, 1);
insert into UTILIZZA (Visita, OggettoInformatico) values (2, '12345678946398'), (2, '20240504');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (2, '2024-05-01', '19:30:00', 120 , 'CRNSMN85A01H501V');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('CRNSMN85A01H501V', 'Carlo', 'Casini', 'carlo.casini@example.com', '1985-01-01', 'Roma');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '19:40:00', 2, 2),('2024-05-01', '20:00:00', 2, 3);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '19:35:00', 2, 'SCU001', 'Ammirazione della statua di Apollo'), ('2024-05-01', '19:55:00', 2, 'UTE002', 'Esplorazione di una lucerna'), ('2024-05-01', '20:15:00', 2, 'STN002', 'Studio di un amuleto misterioso');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '19:45:00', 2, 'Saluto Formale', 'Amicizia', 'Inizia una conversazione formale'), ('2024-05-01', '19:50:00', 2, 'Saluto Gentile', 'Amicizia', 'Continua la conversazione con gentilezza');

-- Inserimento visita Giovanni Verdi
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (3, 'GiovanniVerdi85', 10, '2024-05-01', '19:30:00', NULL, NULL, 'VRDGVN85C15H501Z', 2, 5, 6);
insert into UTILIZZA (Visita, OggettoInformatico) values (3, '32165498710274'), (3, '20240505');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (3, '2024-05-01', '19:30:00', 90, 'VRDGVN85C15H501Z');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('VRDGVN85C15H501Z', 'Giovanni', 'Verdi', 'giovanni.verdi@example.com', '1985-03-15', 'Frosinone');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '19:35:00', 3, 4), ('2024-05-01', '20:15:00', 3, 5);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '19:40:00', 3, 'RPT001', 'Osservazione del vaso canopo'), ('2024-05-01', '19:50:00', 3, 'RPT002', 'Osservazione dellushabti'), ('2024-05-01', '20:05:00', 3, 'GRG001', 'Lettura della stele con testi sacri'), ('2024-05-01', '20:25:00', 3, 'GRG002', 'Osservazione del papiro con incisioni'), ('2024-05-01', '20:35:00', 3, 'VAS001', 'Osservazione dellanfora decorata');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Discussione sullAntico Egitto', 'Discussione virtuale', 'Confronto sulla civiltà egizia', NULL, 'Antico Egitto', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessGV1', 'Messaggio', NULL, 'Trovo che la civiltà egizia sia affascinante per i suoi geroglifici...'), ('MessGV2', 'Messaggio', NULL, 'Sono daccordo, le piramidi sono un capolavoro di ingegneria...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '19:45:00', 3, 'MessGV1', 'Discussione sullAntico Egitto', 'Partecipazione alla discussione sulla civiltà egizia'), ('2024-05-01', '20:10:00', 3, 'MessGV2', 'Discussione sullAntico Egitto', 'Analisi di un reperto storico');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Nuove Amicizie', 'Incontro Sociale', 'Socializzazione', NULL, NULL, NULL);
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '20:35:00', 3, 'Saluto Cordiale', 'Nuove Amicizie', 'Introduzione reciproca con Elena'), ('2024-05-01', '20:40:00', 3, 'Saluto Amichevole', 'Nuove Amicizie', 'Presentazione personale a Elena');

-- Inserimento visita Elena Bianchi
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (4, 'ElenaBianchi90', 15, '2024-05-01', '19:30:00', NULL, NULL, 'BNCLNE90T10A001Y', 2, 5, 6);
insert into UTILIZZA (Visita, OggettoInformatico) values (4, '98765432129861'), (4, '20240501');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (4, '2024-05-01', '19:30:00', 90, 'BNCLNE90T10A001Y');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('BNCLNE90T10A001Y', 'Elena', 'Bianchi', 'elena.bianchi@example.com', '1990-12-10', 'Livorno');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '19:50:00', 4, 6), ('2024-05-01', '20:30:00', 4, 7);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '19:45:00', 4, 'RPT004', 'Esplorazione dellAmuleto di Anubi'), ('2024-05-01', '20:05:00', 4, 'RPT005', 'Osservazione della Stele funeraria'), ('2024-05-01', '20:25:00', 4, 'GRG001', 'Lettura della Stele con testi sacri'), ('2024-05-01', '20:45:00', 4, 'VAS002', 'Ammirazione del Calice cerimoniale'), ('2024-05-01', '20:50:00', 4, 'GRG003', 'Osservazione della Tavoletta cerimoniale');
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessEB1', 'Messaggio', NULL, 'Anche io sono affascinata dai geroglifici, sono così misteriosi...'), ('MessEB2', 'Messaggio', NULL, 'Le piramidi sono davvero straordinarie, raccontano una storia incredibile...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '19:55:00', 4, 'MessEB1', 'Discussione sullAntico Egitto', 'Partecipazione alla discussione sulla civiltà egizia'), ('2024-05-01', '20:20:00', 4, 'MessEB2', 'Discussione sullAntico Egitto', 'Analisi di un reperto storico');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '20:35:00', 4, 'Saluto Cordiale', 'Nuove Amicizie', 'Introduzione reciproca con Giovanni'), ('2024-05-01', '20:40:00', 4, 'Saluto Amichevole', 'Nuove Amicizie', 'Presentazione personale a Giovanni');

-- Inserimento visita Luca Gialli
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (5, 'LucaGialli85', 8, '2024-05-01', '22:00:00', NULL, NULL, 'GLLLCU85M15H501X', 3, 9, 11);
insert into UTILIZZA (Visita, OggettoInformatico) values (5, '45612378910267'), (5, '20240502');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (5, '2024-05-01', '22:00:00', 120, 'GLLLCU85M15H501X');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('GLLLCU85M15H501X', 'Luca', 'Gialli', 'luca.gialli@example.com', '1985-06-15', 'Salerno');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '22:10:00', 5, 9), ('2024-05-01', '22:50:00', 5, 10);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '22:05:00', 5, 'SCU004', 'Ammirazione del Discobolo di Mirone'), ('2024-05-01', '22:45:00', 5, 'ARM007', 'Osservazione dello Scudo Aspis'), ('2024-05-01', '23:15:00', 5, 'CER001', 'Osservazione dellAnfora a figure nere'), ('2024-05-01', '23:20:00', 5, 'SCU005', 'Ammirazione dellAuriga di Delfi'), ('2024-05-01', '23:25:00', 5, 'POE003', 'Lettura dellOdissea');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Discussione sulla Filosofia Greca', 'Discussione virtuale', 'Discussione sulle scuole filosofiche di Atene', NULL, 'Filosofia greca', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessLG1', 'Messaggio', 60, 'Platone e Aristotele hanno plasmato la filosofia occidentale...'), ('MessLG2', 'Messaggio', 100, 'Le loro idee sono ancora rilevanti oggi...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '22:30:00', 5, 'MessLG1', 'Discussione sulla Filosofia Greca', 'Partecipa attivamente alla discussione sulle scuole filosofiche di Atene'), ('2024-05-01', '23:05:00', 5, 'MessLG2', 'Discussione sulla Filosofia Greca', 'Analizza un concetto filosofico greco');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Nuove Amicizie Greche', 'Incontro Sociale', 'Socializzazione tra visitatori della Grecia', NULL, NULL, NULL);
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '23:20:00', 5, 'Saluto Amichevole', 'Nuove Amicizie Greche', 'Presentazione personale con Andrea'), ('2024-05-01', '23:25:00', 5, 'Saluto Cordiale', 'Nuove Amicizie Greche', 'Introduzione reciproca con Sara');

-- Inserimento visita Andrea Rossi
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (6, 'AndreaRossi88', 12, '2024-05-01', '22:00:00', NULL, NULL, 'RSSAND88T15H501X', 3, 10, 12);
insert into UTILIZZA (Visita, OggettoInformatico) values (6, '32165498710274');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (6, '2024-05-01', '22:00:00', 120, 'RSSAND88T15H501X');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('RSSAND88T15H501X', 'Andrea', 'Rossi', 'andrea.rossi@example.com', '1988-02-15', 'Avellino');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '22:15:00', 6, 8), ('2024-05-01', '22:55:00', 6, 9);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '22:20:00', 6, 'CER002', 'Osservazione del Krater a figure rosse'), ('2024-05-01', '22:50:00', 6, 'ARM004', 'Osservazione dello Xiphos'), ('2024-05-01', '23:10:00', 6, 'POE004', 'Lettura della Storia di Erodoto'), ('2024-05-01', '23:30:00', 6, 'SCU006', 'Ammirazione dellAfrodite di Milo'), ('2024-05-01', '23:35:00', 6, 'CER003', 'Osservazione del Kylix');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Discussione sulle Arti Greche', 'Discussione virtuale', 'Discussione sulle arti e le ceramiche greche', NULL, 'Arti greche', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessAR1', 'Messaggio', NULL, 'Le ceramiche greche sono unespressione unica della loro arte...'), ('MessAR2', 'Messaggio', NULL, 'Ogni vaso racconta una storia straordinaria...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '22:45:00', 6, 'MessAR1', 'Discussione sulle Arti Greche', 'Partecipa alla discussione sulle ceramiche greche'), ('2024-05-01', '23:15:00', 6, 'MessAR2', 'Discussione sulle Arti Greche', 'Analisi di unopera darte greca');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '23:20:00', 6, 'Saluto Amichevole', 'Nuove Amicizie Greche', 'Presentazione personale con Luca'), ('2024-05-01', '23:25:00', 6, 'Saluto Cordiale', 'Nuove Amicizie Greche', 'Introduzione reciproca con Sara');

-- Inserimento visita Sara Verdi
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (7, 'SaraVerdi92', 7, '2024-05-01', '22:00:00', NULL, NULL, 'VRDSRA92A41H501X', 3, 10, 11);
insert into UTILIZZA (Visita, OggettoInformatico) values (7, '12345678946398'), (7, '20240504');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (7, '2024-05-01', '22:00:00', 90, 'VRDSRA92A41H501X');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('VRDSRA92A41H501X', 'Sara', 'Verdi', 'sara.verdi@example.com', '1992-04-01', 'Benevento');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '22:05:00', 7, 8), ('2024-05-01', '22:35:00', 7, 10);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-01', '22:10:00', 7, 'SCU004', 'Ammirazione della statua del Discobolo di Mirone'), ('2024-05-01', '22:20:00', 7, 'SCU005', 'Osservazione dellAuriga di Delfi'), ('2024-05-01', '22:30:00', 7, 'STN005', 'Esplorazione dellOracolo di Delfi');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Discussione sulla Mitologia', 'Discussione virtuale', 'Confronto sulle divinità greche', NULL, 'Mitologia greca', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessSV1', 'Messaggio', NULL, 'Adoro i miti greci, sono così affascinanti e pieni di significato...'), ('MessSV2', 'Messaggio', NULL, 'Concordo, le storie degli dei e degli eroi sono fonte di ispirazione...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '22:15:00', 7, 'MessSV1', 'Discussione sulla Mitologia', 'Partecipazione attiva alla discussione sulle divinità greche'), ('2024-05-01', '22:25:00', 7, 'MessSV2', 'Discussione sulla Mitologia', 'Analisi approfondita dei miti e delle leggende');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Nuove Esplorazioni', 'Incontro Esplorativo', 'Scoperta di nuovi reperti', NULL, NULL, NULL);
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-01', '22:30:00', 7, 'Saluto Cordiale', 'Nuove Esplorazioni', 'Introduzione reciproca con Marco'), ('2024-05-01', '22:35:00', 7, 'Saluto Amichevole', 'Nuove Esplorazioni', 'Presentazione personale a Marco');

-- Inserimento visita Mario Rossi
start transaction;
insert into UTILIZZA (Visita, OggettoInformatico) values (8, '12345678946398'), (8, '20240503');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (8, '2024-05-02', '21:00:00', 120 , 'RSSMRA90A01H501U');
commit;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (8, 'MarioRossi90', 5, '2024-05-02', '21:00:00', NULL, NULL, 'RSSMRA90A01H501U', 2, 5, 6);
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-02', '21:10:00', 8, 5),('2024-05-02', '21:50:00', 8, 5);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-02', '21:05:00', 8, 'GRG001', 'Ammirazione della decorazione'), ('2024-05-02', '21:45:00', 8, 'VAS004', 'Utilizzo della brocca'),('2024-05-02', '22:15:00', 8, 'GRG003', 'Lettura della tavoletta cerimoniale'),('2024-05-02', '22:20:00', 8, 'VAS003', 'Visione del vaso canopo'), ('2024-05-02', '22:25:00', 8, 'GRG004', 'Utilizzo dellamuleto di Anubi') ;

-- Inserimento visita Carlo Casini
start transaction;
insert into UTILIZZA (Visita, OggettoInformatico) values (9, '78912345610374'), (9, '20240502');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (9, '2024-04-01', '19:30:00', 120 , 'CRNSMN85A01H501V');
commit;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (9, 'CarloCasini85', 5, '2024-04-01', '19:30:00', NULL, NULL, 'CRNSMN85A01H501V', 2, 6, 7);
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-04-01', '19:40:00', 9, 4), ('2024-04-01', '20:00:00', 9, 5);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-04-01', '19:35:00', 9, 'GRG003', 'Una tavoletta interessante'),('2024-04-01', '19:55:00', 9, 'GRG009', 'Una tavoletta incisa a terra');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-04-01', '19:45:00', 9, 'Saluto Formale', 'Amicizia', 'Inizia una conversazione formale'), ('2024-04-01', '19:50:00', 9, 'Saluto Gentile', 'Amicizia', 'Continua la conversazione con gentilezza');

--Inserimento visita Matteo Gaeta
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (10, 'MatteGaeta17', 5, '2024-08-01', '18:00:00', NULL, NULL, 'GTAMTT29P19Y132Q', 1, 3, 2);
insert into UTILIZZA (Visita, OggettoInformatico) values (10, '32165498710274');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (10, '2024-05-01', '18:00:00', 90 , 'GTAMTT29P19Y132Q');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('GTAMTT29P19Y132Q', 'Matteo', 'Gaeta', 'mgaeta@example.it', '1960-05-16', 'Salerno');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-01', '18:10:00', 10, 3), ('2024-05-01', '18:50:00', 10, 1);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-08-01', '18:05:00', 10, 'SCU002', 'Ammirazione della scultura'), ('2024-08-01', '18:45:00', 10, 'UTE003', 'Utilzzo dellutensile'), ('2024-08-01', '19:15:00', 10, 'STN001', 'Lettura della storia nascosta'), ('2024-08-01', '19:20:00', 10, 'MOS001', 'Visione del mosaico');
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('MessMR10', 'Messaggio', NULL, 'Il colosseo è il più grande anfiteatro al mondo...'),  ('MessMR11', 'Messaggio', 100, 'Sono daccordo in parte, poichè penso che...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-08-01', '18:00:00', 10, 'MessMR1', 'Discussione Storica', 'Partecipa attivamente alla discussione sulla storia antica'), ('2024-08-01', '18:42:00', 10, 'MessMR2', 'Discussione Storica', 'Analizza un oggetto storico');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione)  values ('Discordie', 'Incontro poco Amichevole', 'Conoscenza', NULL, NULL, NULL);
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-08-01', '19:20:00', 10, 'Saluto Formale', 'Amicizia', 'Conosciamoci');

--Inserimento visita Carmine Vardaro
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (12, 'CarmineVardy', 30, '2024-05-29', '18:00:00', NULL, NULL, 'VRDCMN03B10B963E', 2, 7, 10); 
insert into UTILIZZA (Visita, OggettoInformatico) values (12, '32165498710274');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (12, '2024-05-29', '18:00:00', 30 , 'VRDCMN03B10B963E');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('VRDCMN03B10B963E', 'Carmine', 'Vardaro', 'c.vardaro1@studenti.unisa.it', '2003-02-10', 'Caserta');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-29', '18:10:00', 12, 5);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-29', '18:05:00', 12, 'RPT004', 'Osservazione Interessante');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Discussione Egizi', 'Discussione virtuale','Importanza di cleopatra', NULL, 'Storia antica', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('Saluto egizio', 'Messaggio', NULL, 'La sfinge è davvero enorme...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-29', '18:00:00', 10, 'Saluto egizio', 'Discussione Egizi', 'Partecipa attivamente alla discussione sugliecizi');

--Inserimento visita Pierluigi Pio Nocerino
start transaction;
insert into AVATAR (Id_Avatar, Nickname, Punteggio, DataCrea, OraCrea, DataFine, OraFine, Visitatore, Civilta, Abito, Accessorio) values (11, 'Piergiggi27', 1926, '2024-08-27', '18:00:00', NULL, NULL, 'NCRPLG02H16B715T', 3, 11, 14);
insert into UTILIZZA (Visita, OggettoInformatico) values (11, '32165498710274');
insert into VISITA (Id_visita, Data, Ora, Durata, Visitatore) values (11, '2024-08-27', '18:00:00', 50 , 'NCRPLG02H16B715T');
insert into VISITATORE (CF, Nome, Cognome, Email, DatadiNascita, LuogodiNascita) values ('NCRPLG02H16B715T', 'Pierluigi Pio', 'Nocerino', 'p.nocerino@studenti.unisa.it', '2002-06-16','Capua');
commit;
insert into PARTECIPAZIONE (Data, Ora, Avatar, Esperienza) values ('2024-05-29', '18:10:00', 11, 10);
insert into INTERAZIONE (Data, Ora, Avatar, Oggetto, Descrizione) values ('2024-05-29', '18:05:00', 11, 'ARM005', 'Utilizzo'), ('2024-05-29', '18:07:00', 11, 'POE002', 'lettura');
insert into CONVERSAZIONE (Titolo, Tipo, Argomento, Motivo, TemaStorico, Descrizione) values ('Dibattiti', 'Discussione virtuale','Importanza della cultura classica', NULL, 'Storia antica', NULL);
insert into AZIONE (Nome, Tipo, Lunghezza, Contenuto) values ('Saluto greco', 'Messaggio', NULL, 'Addio Grecia addio...');
insert into INTERAZIONEAVATAR (Data, Ora, Avatar, Azione, Conversazione, Descrizione) values ('2024-05-29', '18:50:00', 11, 'Saluto greco', 'Dibattiti', 'Partecipa attivamente alla discussione sulla grecia');


