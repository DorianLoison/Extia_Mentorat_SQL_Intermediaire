/*
    Compter le nombre d'individus répartis par Sexe
    dont le Titre n'est pas connu
*/

SELECT Sexe, COUNT(*) AS "Titre non renseignés"
FROM Contact
WHERE Titre IS NULL
GROUP BY Sexe;