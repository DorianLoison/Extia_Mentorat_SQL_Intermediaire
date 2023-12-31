/*
    Dans la table Facture,
    affichez la DateFacture, le MontantTTC, le rang des meilleurs MontantTTC en premier
        dont les DateFacture sont connues
    Par DateFacture les plus récentes
*/

SELECT F.DateFacture
, F.MontantTTC
, RANK() OVER (<PARTITION BY> <ORDER BY>)
FROM Facture F
WHERE F.DateFacture IS NOT NULL
ORDER BY F.DateFacture DESC;