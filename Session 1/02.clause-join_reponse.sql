/*
    Joindre les tables Contact et Societe,
    affichez le Nom de Contact, Prenom de Contact et Nom de Societe 
    ET n'afficher que les Contacts sans Nom de Societe
    (Aide : Un LEFT EXCLUSIVE est une piste)
*/

SELECT C.Nom AS 'Nom Contact', C.Prenom AS 'Prénom Contact', S.Nom AS 'Nom Société'
FROM Contact AS C
LEFT JOIN Societe AS S
    ON S.SocieteId = C.SocieteId
WHERE C.SocieteId IS NULL;