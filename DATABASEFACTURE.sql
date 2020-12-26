create database Factures

use factures


Create Table ClientAdmin( idClientadmin INTEGER primary key identity, TypeClinet ntext,NomClinet ntext ,Telephone NUMERIC,Emailclient ntext,adresse ntext,CodePostal ntext, ville ntext, pays ntext,Logo BINARY ,Mdp text,confirmdp text,role text,Conexteat ntext)
Create Table Banck(IDInfobanck INTEGER primary key identity, Nombanc ntext ,BIC ntext,IBAN ntext,idclientAdmin INTEGER  REFERENCES ClientAdmin(idClientadmin) on delete cascade,Devise ntext)
Create Table Client( idClient INTEGER primary key identity , TypeClinet ntext,NomClinet ntext ,Telephone NUMERIC,Emailclient ntext,adresse ntext,CodePostal ntext, ville ntext, pays ntext ,Mdp text,confirmdp text,role text)
Create Table Facture( idFacture INTEGER primary key identity, DateFacturation ntext, Datetranform ntext ,DateEchance ntext , DatePaiement ntext ,Devise ntext, idClient INTEGER  REFERENCES Client(IdClient) ,Etat ntext ,modepaiement ntext,observation ntext,signature binary)
Create Table commandeFacture(Idcomfact INTEGER primary key identity, IdFacture INTEGER REFERENCES Facture(idFacture) on delete cascade, Libille ntext,TypeProd ntext , PrixHT DECIMAL ,Qte int, TVA DECIMAL,Remise DECIMAL )
Create Table Devis(idDevis INTEGER primary key identity ,DateCreation ntext,DateValidation ntext ,Datetransform ntext , Devise ntext, idClient INTEGER  REFERENCES Client(IdClient),Etat ntext, modepaiement ntext ,observation ntext,signature binary)
Create Table commandeDevis(idcomdev INTEGER primary key identity, IdDevis INTEGER REFERENCES Devis(idDevis)on delete cascade ,libille ntext,TypeProd ntext, Prixht Decimal, Qte INTEGER, TVA DECIMAL, Remise DECIMAL)
Create Table Produit(idProduit INTEGER primary key identity, Nomproduit ntext ,Prix REAL,typePro ntext,tva Decimal)


SELECT * FROM ClientAdmin