/*
    Dans la table TarifFormateur,
    affichez le FormateurId, la DateDebut, le TarifJournalier
    , le TarifJournalier (si aucun, 0) par FormateurId et DateDebut croissants
    , 1 ou 0 si il y a eu une augmentation
*/

SELECT TF.FormateurId
, TF.DateDebut
, TF.TarifJournalier AS NouveauTarif
, LAG(TF.TarifJournalier, 1, 0) OVER(ORDER BY TF.FormateurId, TF.DateDebut) AS AncienTarif
, TF.TarifJournalier > LAG(TF.TarifJournalier, 1, 0) OVER(ORDER BY TF.FormateurId, TF.DateDebut) AS Augmentation
FROM TarifFormateur TF;