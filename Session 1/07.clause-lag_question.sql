/*
    Dans la table TarifFormateur,
    affichez le FormateurId, la DateDebut, le TarifJournalier
    , le TarifJournalier (si aucun, 0) par FormateurId et DateDebut croissants
    , 1 ou 0 si il y a eu une augmentation
*/

SELECT TF.FormateurId
, TF.DateDebut
, TF.TarifJournalier AS NouveauTarif
, /*LAG()*/
FROM TarifFormateur TF;