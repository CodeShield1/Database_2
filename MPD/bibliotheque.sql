CREATE DATABASE bibliotheque;
USE bibliotheque;




CREATE TABLE rayons (
    id_rayon INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL   
);





CREATE TABLE ouvrages (
    id_ouvrage INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(255) NOT NULL,
    date_publication DATE NOT NULL,
    id_rayon INT NOT NULL,
    FOREIGN KEY (id_rayon) REFERENCES rayons(id_rayon)
);







CREATE TABLE auteurs (
    id_auteur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);




CREATE TABLE lecteurs (
    id_lecteur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    telephone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    CIN VARCHAR(255) NOT NULL UNIQUE
    
);


CREATE TABLE auteurs_ouvrages (
    id_auteur INT NOT NULL,
    id_ouvrage INT NOT NULL,
    PRIMARY KEY (id_auteur, id_ouvrage),
    FOREIGN KEY (id_auteur) REFERENCES auteurs(id_auteur),
    FOREIGN KEY (id_ouvrage) REFERENCES ouvrages(id_ouvrage)
);



CREATE TABLE emprunts (
    id_emprunt INT AUTO_INCREMENT PRIMARY KEY,
    id_lecteur INT NOT NULL,
    id_ouvrage INT NOT NULL,
    date_emprunt DATE NOT NULL,
    date_retour_prevu DATE , 
    date_retour_reelle DATE,
    FOREIGN KEY (id_lecteur) REFERENCES lecteurs(id_lecteur),
    FOREIGN KEY (id_ouvrage) REFERENCES ouvrages(id_ouvrage)
);




CREATE TABLE personnels (
    id_personnel INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    telephone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    FOREIGN KEY (id_personnel) REFERENCES personnels(id_personnel),
    FOREIGN KEY (id_ouvrage) REFERENCES ouvrages(id_ouvrage)
    
)






SELECT * FROM emprunts;

SHOW TABLES;
