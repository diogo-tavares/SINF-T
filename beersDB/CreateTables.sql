/*******************************************************************************
   Beers Database - Version 0.1
   Script: CreateTables.sql
   Description: Creates and populates the beers database.
   DB Server: PostgreSql
   Author: Gil Gonçalves
   License:
********************************************************************************/


/*******************************************************************************
   Create Tables
********************************************************************************/
CREATE TABLE beers
(
    beername VARCHAR(160) NOT NULL,
    manufacturer VARCHAR(160),
    CONSTRAINT PK_beers PRIMARY KEY  (beername)
);

CREATE TABLE drinkers
(
    drinkername VARCHAR(160) NOT NULL,
    address VARCHAR(160),
    phone VARCHAR(16),
    CONSTRAINT PK_drinkers PRIMARY KEY  (drinkername)
);

CREATE TABLE bars
(
    barname VARCHAR(160) NOT NULL,
    address VARCHAR(160),
    license VARCHAR(16),
    CONSTRAINT PK_bars PRIMARY KEY  (barname)
);

CREATE TABLE likes
(
    drinkername VARCHAR(160) NOT NULL,
    beername VARCHAR(160) NOT NULL,
    CONSTRAINT PK_likes PRIMARY KEY  ( drinkername, beername)
);

CREATE TABLE sells
(
    barname VARCHAR(160) NOT NULL,
    beername VARCHAR(160) NOT NULL,
    price NUMERIC(10,2),
    CONSTRAINT PK_sells PRIMARY KEY  ( barname, beername)
);

CREATE TABLE frequents
(
    drinkername VARCHAR(160) NOT NULL,
    barname VARCHAR(160) NOT NULL,
    CONSTRAINT PK_frequents PRIMARY KEY  ( drinkername, barname)
);
