/*
    Dans la table TarifFormateur,
    affichez le Nom de Contact, le Prenom de Contat, le TarifJournalier, la moyenne des TarifJournalier
        dont les DateFin de TarifFormateur ne sont pas connues
*/

--Résultat attendu
SELECT AVG(TF.TarifJournalier) AS "Résultat attendu"
FROM TarifFormateur AS TF
WHERE TF.DateFin IS NULL;

SELECT C.Nom
, C.Prenom
, TF.TarifJournalier
, AVG(TF.TarifJournalier) OVER() AS "Tarif moyen"
FROM TarifFormateur AS TF
INNER JOIN Formateur AS F
    ON F.FormateurId = TF.FormateurId
INNER JOIN Contact C
    ON C.ContactId = F.ContactId
WHERE TF.DateFin IS NULL;