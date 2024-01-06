CREATE TABLE Developer
(
  Developer_ID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  PRIMARY KEY (Developer_ID)
);

CREATE TABLE Publisher
(
  Publisher_ID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  PRIMARY KEY (Publisher_ID)
);

CREATE TABLE Game
(
  Game_ID INT NOT NULL,
  Name VARCHAR(100) NOT NULL,
  Sales INT NOT NULL,
  Series VARCHAR(100) NULL,
  Release VARCHAR(30) NOT NULL,
  Developer_ID INT NOT NULL,
  Publisher_ID INT NOT NULL,
  PRIMARY KEY (Game_ID),
  FOREIGN KEY (Developer_ID) REFERENCES Developer(Developer_ID),
  FOREIGN KEY (Publisher_ID) REFERENCES Publisher(Publisher_ID)
);

CREATE TABLE Game_Genre
(
  Genre VARCHAR(100) NOT NULL,
  Genre_ID INT NOT NULL,
  Game_ID INT NOT NULL,
  PRIMARY KEY (Genre_ID),
  FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID)
);