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

SELECT F.DateFacture
, F.FactureCd
, F.MontantTTC
, SUM(F.MontantTTC) OVER(PARTITION BY F.DateFacture) AS TotalTTC
FROM Facture F
WHERE F.DateFacture IS NOT NULL
ORDER BY F.DateFacture;