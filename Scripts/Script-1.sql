-- jeg forsøger at skrive tekst til det jeg er i gang med, både så jeg selv er med på hvad der sker
-- og så kolleger kan forstå hvor jeg vil hen ad med mit arbejde.

-- lave en tabel for ryttere med kollonnerne rytter id, navn og land
CREATE TABLE ryttere (
    årstal INTEGER PRIMARY KEY, -- PRIMARY KEY baseret på årstal
    navn VARCHAR(255),
    land VARCHAR(100)
);

-- Indsæt data for ryttere med årstal
INSERT INTO ryttere (årstal, navn, land)
VALUES
    (1988, 'Pedro Delgado', 'Spanien'),
    (1989, 'Greg LeMond', 'USA'),
    (1990, 'Greg LeMond', 'USA'),
    (1991, 'Miguel Indurain', 'Spanien'),
    (1992, 'Miguel Indurain', 'Spanien'),
    (1993, 'Miguel Indurain', 'Spanien'),
    (1994, 'Miguel Indurain', 'Spanien'),
    (1995, 'Miguel Indurain', 'Spanien'),
    (1996, 'Bjarne Riis', 'Danmark'),
    (1997, 'Jan Ulrich', 'Tyskland'),
    (1998, 'Marco Pantani', 'Italien'),
    (1999, 'Lance Armstrong', 'USA'),
    (2000, 'Lance Armstrong', 'USA'),
    (2001, 'Lance Armstrong', 'USA'),
    (2002, 'Lance Armstrong', 'USA'),
    (2003, 'Lance Armstrong', 'USA'),
    (2004, 'Lance Armstrong', 'USA'),
    (2005, 'Lance Armstrong', 'USA'),
    (2006, 'Oscar Pereiro', 'Spanien'),
    (2007, 'Alberto Contador', 'Spanien'),
    (2008, 'Carlos Sastre', 'Spanien'),
    (2009, 'Alberto Contador', 'Spanien'),
    (2010, 'Andy Schleck', 'Luxemborg'),
    (2011, 'Cadel Evans', 'Australien'),
    (2012, 'Bradley Wiggins', 'Storbritanien'),
    (2013, 'Chris Froome', 'Storbritanien'),
    (2014, 'Vincenzo Nibali', 'Italien'),
    (2015, 'Chris Froome', 'Storbritanien'),
    (2016, 'Chris Froome', 'Storbritanien'),
    (2017, 'Chris Froome', 'Storbritanien'),
    (2018, 'Geraint Thomas', 'Storbritanien'),
    (2019, 'Egan Bernal', 'Columbia'),
    (2020, 'Tadej Pogacar', 'Slovenien'),
    (2021, 'Tadej Pogacar', 'Slovenien'),
    (2022, 'Jonas Vingegaard', 'Danmark'),
    (2023, 'Jonas Vingegaard', 'Danmark');
    
-- lave det samme for holdene
   CREATE TABLE hold(
hold_id integer,
hold_navn varchar (255),
hold_land varchar (100)
);
   
   