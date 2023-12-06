/*
    Dans la table Contact,
    affichez le Nom, Prenom, Email et Telephone 
        dont le Titre est 'Mme'
        Et dont le l'Email est connu
        Ou le Telephone est connu
    Ordonnez par Nom dans l'ordre alphabétique et Prenom dans le sens inverse
*/

SELECT Nom, Prenom, Email, Telephone
FROM Contact
WHERE Titre = 'Mme'
AND (
    Email IS NOT NULL 
    OR Telephone IS NOT NULL
)
ORDER BY Nom ASC, Prenom DESC;