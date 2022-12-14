-- question 1

SELECT hot_nom AS "nom de l'hotel", hot_ville AS 'nom de la ville'
FROM hotel

-- question 2

SELECT cli_nom AS 'nom client', cli_prenom AS 'prenom client', cli_adresse AS 'adresse client'
FROM client

-- question 3

SELECT sta_nom AS 'nom de la station', sta_altitude AS 'altitude de la station'
FROM station
WHERE sta_altitude < 1000

-- question 4

SELECT cha_numero AS 'numéro de chambre', cha_capacite AS 'capacité de chambre'
FROM chambre
WHERE cha_capacite > 1

-- question 5

SELECT cli_nom AS 'nom client', cli_ville AS 'ville du client'
FROM client
WHERE cli_ville <> 'Londres'

-- question 6

SELECT hot_nom AS 'nom hotel', hot_ville AS 'ville hotel', hot_categorie AS 'categorie hotel'
FROM hotel
WHERE hot_ville = 'Bretou' AND hot_categorie > 3

-- question 7

SELECT sta_nom, hot_nom, hot_categorie, hot_ville
FROM hotel
INNER JOIN station ON hot_sta_id = sta_id

-- question 8

SELECT hot_nom, hot_categorie, hot_ville, cha_numero
FROM hotel
INNER JOIN chambre ON cha_hot_id = hot_id

-- question 9

SELECT hot_nom, hot_categorie, hot_ville, cha_numero, cha_capacite
FROM hotel
INNER JOIN chambre ON cha_hot_id = hot_id
WHERE cha_capacite > 1 AND hot_ville = 'Bretou'

-- question 10

SELECT cli_nom, hot_nom, res_date
FROM hotel
JOIN chambre on chambre.cha_hot_id = hotel.hot_id
JOIN reservation on reservation.res_cha_id = chambre.cha_id
JOIN client on client.cli_id = reservation.res_cli_id

-- question 11

SELECT sta_nom, hot_nom, cha_numero, cha_capacite
FROM station
JOIN hotel on hotel.hot_sta_id = station.sta_id
JOIN chambre on chambre.cha_hot_id = hotel.hot_sta_id

-- question 12

