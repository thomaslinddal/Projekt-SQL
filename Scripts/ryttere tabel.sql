create table ryttere(
rytter_id integer primary key, -- primary key sikrer at alle id er unikke
navn varchar(255),
land varchar (100)
);


CREATE TABLE hold(
hold_id integer,
hold_navn varchar (255),
hold_land varchar (100)
);
