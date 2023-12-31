/*
    Dans la table Contact,
    Réparti par Sexe, compter le nombre d'individus
        dont le Titre n'est pas connu
*/

SELECT Sexe, COUNT(*) AS "Titre non renseignés"
FROM Contact
WHERE Titre IS NULL
GROUP BY Sexe;