-- Find the team names, coaches, field, and gametime for all games played
SELECT homeTeam AS "Home Team", awayTeam AS "Away Team", coach AS "Coach",
HomeField AS "Field", gameTime AS "Game Time"
FROM teams T INNER JOIN games G ON T.teamName = G.homeTeam; 


-- List all the players with their player coach's names
SELECT C.PlayerName AS "Coach", P.PlayerName AS "Player"
FROM players C LEFT OUTER JOIN players P ON C.Coach = P.PlayerID;











-- CREATE DATABASE

--
-- Table structure for table  teams 
--

--DROP TABLE players ;
--DROP TABLE games ;
--DROP TABLE teams ;
CREATE TABLE  teams  (
   TeamName  varchar(20) NOT NULL,
   Coach  varchar(45) DEFAULT NULL,
   HomeField  varchar(45) DEFAULT NULL,
   teamscol  varchar(45) DEFAULT NULL,
  PRIMARY KEY ( TeamName ));
  
--
-- Table structure for table  games 
--


CREATE TABLE games (
   HomeTeam  varchar(20) NOT NULL,
   AwayTeam  varchar(20) NOT NULL,
   Field  varchar(45) DEFAULT NULL,
   HomeScore  int DEFAULT NULL,
   AwayScore  int DEFAULT NULL,
   GameTIme  varchar(45) NOT NULL,
  PRIMARY KEY ( HomeTeam , AwayTeam , GameTIme ),
  CONSTRAINT  AwayTeam_fk  FOREIGN KEY ( AwayTeam ) REFERENCES  teams  ( TeamName ),
  CONSTRAINT  HomeTeam_fk  FOREIGN KEY ( HomeTeam ) REFERENCES  teams  ( TeamName ));
  
  --
  -- Table structure for table  players 
  --
  

  CREATE TABLE  players  (
     PlayerName  varchar(45) NOT NULL,
     TeamName  varchar(20) NOT NULL,
     JerseyNumber  int NOT NULL,
     Coach  int DEFAULT NULL,
     PlayerID  int NOT NULL,
    PRIMARY KEY ( PlayerID ),
    CONSTRAINT  PlayerCoach_fk  FOREIGN KEY ( Coach ) REFERENCES  players  ( PlayerID ),
    CONSTRAINT  PlayerTeam_fk  FOREIGN KEY ( TeamName ) REFERENCES  teams  ( TeamName )) ;
  
  --
  -- Dumping data for table  teams 
  --
  
  INSERT INTO teams ( TeamName ,  Coach ,  HomeField ,  teamscol ) VALUES ('Angels','Scoscia','Anaheim Stadium','Red'),('Athletics','Melvin','Collisium','Green'),('Dodgers','Roberts','Dodger Stadium','Blue'),('Giants','Bochy','PacBell Park','Black');


--
-- Dumping data for table 'games'
--

INSERT INTO games ( HomeTeam ,  AwayTeam ,  Field ,  HomeScore ,  AwayScore ,  GameTIme ) VALUES ('Angels','Dodgers','Anaheim Stdium',1,0,'04/04/2016'),('Athletics','Giants','Collisium',2,7,'04/08/2016'),('Dodgers','Angels','Dodger Stadium',3,2,'04/02/2016'),('Giants','Dodgers','PacBell Park',2,8,'04/07/2016');


--
-- Dumping data for table 'players'
--


INSERT INTO players ( PlayerName ,  TeamName ,  JerseyNumber ,  Coach ,  PlayerID ) VALUES ('Dusty Baker','Dodgers',17,NULL,1),('Sam Sweeter','Dodgers',21,1,2),('William Walker','Dodgers',22,1,3),('Davey Lopes','Dodgers',7,3,4),('Angel Player','Angels',17,NULL,5),('Fify Fofum','Giants',13,NULL,6),('Rally Monkey','Angels',8,5,7),('Jared Weaver','Angels',21,7,8),('Willy Mays','Giants',12,6,9),('Tiny Tim','Giants',88,9,10);

