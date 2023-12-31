/*
    Dans la table Facture,
    affichez pour chaque DateFacture unique
    le nombre de FactureCd
    , la somme de MontantTTC
    , la moyenne de MontantTTC
    , le minimum de MontantTTC
    , le maximum de MontantTTC
    dont la DateFacture est connue
    par DateFacture croissante
*/

SELECT DISTINCT F.DateFacture
, COUNT(F.FactureCd) OVER(PARTITION BY F.DateFacture) AS NombreFacture
, SUM(F.MontantTTC) OVER(PARTITION BY F.DateFacture) AS TotalTTC
, AVG(F.MontantTTC) OVER(PARTITION BY F.DateFacture) AS MoyenneTTC
, MIN(F.MontantTTC) OVER(PARTITION BY F.DateFacture) AS MinTTC
, MAX(F.MontantTTC) OVER(PARTITION BY F.DateFacture) AS MaxTTC
FROM Facture F
WHERE F.DateFacture IS NOT NULL
ORDER BY F.DateFacture;