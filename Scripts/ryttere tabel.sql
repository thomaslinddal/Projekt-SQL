-- jeg forsøger at skrive tekst til det jeg er i gang med, både så jeg selv er med på hvad der sker
-- og så kolleger kan forstå hvor jeg vil hen ad med mit arbejde.

-- lave en tabel for ryttere med kollonnerne rytter id, navn og land
create table ryttere(
rytter_id integer primary key, -- primary key sikrer at alle id er unikke
navn varchar(255),
land varchar (100)
);

-- indsæt data for ryttere:
INSERT INTO ryttere (rytter_id, navn, land)
VALUES
(1, 'Pedro Delgado', 'Spanien'),
(2, 'Greg LeMond', 'USA'),
(3, 'Greg LeMond', 'USA'),
(4, 'Miguel Indurain', 'Spanien'),
(5, 'Miguel Indurain', 'Spanien'),
(6, 'Miguel Indurain', 'Spanien'),
(7, 'Miguel Indurain', 'Spanien'),
(8, 'Miguel Indurain', 'Spanien'),
(9, 'Bjarne Riis', 'Danmark'),
(10, 'Jan Ulrich', 'Tyskland'),
(11, 'Marco Pantani', 'Italien'),
(12, 'Lance Armstrong', 'USA'),
(13, 'Lance Armstrong', 'USA'),
(14, 'Lance Armstrong', 'USA'),
(15, 'Lance Armstrong', 'USA'),
(16, 'Lance Armstrong', 'USA'),
(17, 'Lance Armstrong', 'USA'),
(18, 'Lance Armstrong', 'USA'),
(19, 'Oscar Pereiro', 'Spanien'),
(20, 'Alberto Contador', 'Spanien'),
(21, 'Carlos Sastre', 'Spanien'),
(22, 'Alberto Contador', 'Spanien'),
(23, 'Andy Schleck', 'Luxemborg'),
(24, 'Cadel Evans', 'Australien'),
(25, 'Bradley Wiggins', 'Storbritanien'),
(26, 'Chris Froome', 'Storbritanien'),
(27, 'Vincenzo Nibali', 'Italien'),
(28, 'Chris Froome', 'Storbritanien'),
(29, 'Chris Froome', 'Storbritanien'),
(30, 'Chris Froome', 'Storbritanien'),
(31, 'Geraint Thomas', 'Storbritanien'),
(32, 'Egan Bernal', 'Columbia'),
(33, 'Tadej Pogacar', 'Slovenien'),
(34, 'Tadej Pogacar', 'Slovenien'),
(35, 'Jonas Vingegaard', 'Danmark'),
(36, 'Jonas Vingegaard', 'Danmark'),
(37, 'Tadej Pogacar', 'Slovenien')
;

-- 
CREATE TABLE hold(
hold_id integer,
hold_navn varchar (255),
hold_land varchar (100)
);
