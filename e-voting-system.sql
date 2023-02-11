--------------------------------------------------------
--  File created - Wednesday-December-21-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence AGE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "AGE_SEQ"  MINVALUE 1 MAXVALUE 99 INCREMENT BY 1 START WITH 33 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence DEPARTMENTS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "DEPARTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9990 INCREMENT BY 10 START WITH 280 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence EMPLOYEES_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "EMPLOYEES_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 207 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LOCATIONS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "LOCATIONS_SEQ"  MINVALUE 1 MAXVALUE 9900 INCREMENT BY 100 START WITH 3300 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table MANAGES
--------------------------------------------------------

  CREATE TABLE "MANAGES" 
   (	"ADMIN_ID" NUMBER(2,0), 
	"PRIZE_NAME" VARCHAR2(15 BYTE), 
	"MOVIE_NAME" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table MOVIE
--------------------------------------------------------

  CREATE TABLE "MOVIE" 
   (	"MOVIE_NAME" VARCHAR2(25 BYTE), 
	"NUM_OF_VOTES" NUMBER(3,0)
   ) ;
--------------------------------------------------------
--  DDL for Table MOVIE_GENRE
--------------------------------------------------------

  CREATE TABLE "MOVIE_GENRE" 
   (	"MOVIE_NAME" VARCHAR2(25 BYTE), 
	"MOVIEGENRE" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table NOMINATED_FOR
--------------------------------------------------------

  CREATE TABLE "NOMINATED_FOR" 
   (	"MOVIE_NAME" VARCHAR2(25 BYTE), 
	"PRIZE_NAME" VARCHAR2(15 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table ORGANIZER
--------------------------------------------------------

  CREATE TABLE "ORGANIZER" 
   (	"ADMIN_ID" NUMBER(2,0), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(25 BYTE), 
	"GENDER" VARCHAR2(10 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table PRIZE_ELECTIONS
--------------------------------------------------------

  CREATE TABLE "PRIZE_ELECTIONS" 
   (	"PRIZE_NAME" VARCHAR2(25 BYTE), 
	"START_DATE" DATE, 
	"END_DATE" DATE, 
	"WINNER_NAME" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table VOTER
--------------------------------------------------------

  CREATE TABLE "VOTER" 
   (	"VOTER_ID" NUMBER(5,0), 
	"FIRST_NAME" VARCHAR2(25 BYTE), 
	"LAST_NAME" VARCHAR2(25 BYTE)
   ) ;
--------------------------------------------------------
--  DDL for Table VOTES_FOR
--------------------------------------------------------

  CREATE TABLE "VOTES_FOR" 
   (	"VOTER_ID" NUMBER(5,0), 
	"MOVIE_NAME" VARCHAR2(25 BYTE), 
	"PRIZE_NAME" VARCHAR2(15 BYTE)
   ) ;

---------------------------------------------------
--   DATA FOR TABLE MOVIE_GENRE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MOVIE_GENRE
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('avengers infinity war','action');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('barbie','drama');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('inception','sci-fi');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('interstellar','sci-fi');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('mission impossible','action');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('the fault in our stars','romance');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('the joker','drama');
Insert into MOVIE_GENRE (MOVIE_NAME,MOVIEGENRE) values ('the notebook','romance');

---------------------------------------------------
--   END DATA FOR TABLE MOVIE_GENRE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE PRIZE_ELECTIONS
--   FILTER = none used
---------------------------------------------------
REM INSERTING into PRIZE_ELECTIONS
Insert into PRIZE_ELECTIONS (PRIZE_NAME,START_DATE,END_DATE,WINNER_NAME) values ('Oscar',null,null,'the fault in our stars');

---------------------------------------------------
--   END DATA FOR TABLE PRIZE_ELECTIONS
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE NOMINATED_FOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into NOMINATED_FOR
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('interstellar','Oscar');
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('inception','Oscar');
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('avengers infinity war','Oscar');
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('the fault in our stars','Oscar');
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('mission impossible','Oscar');
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('the notebook','Oscar');
Insert into NOMINATED_FOR (MOVIE_NAME,PRIZE_NAME) values ('barbie','Oscar');

---------------------------------------------------
--   END DATA FOR TABLE NOMINATED_FOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE VOTER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VOTER
Insert into VOTER (VOTER_ID,FIRST_NAME,LAST_NAME) values (12340,'Mohamed','riad');
Insert into VOTER (VOTER_ID,FIRST_NAME,LAST_NAME) values (12341,'Mohamed','ahmed');
Insert into VOTER (VOTER_ID,FIRST_NAME,LAST_NAME) values (12342,'Mohamed','bahaa');
Insert into VOTER (VOTER_ID,FIRST_NAME,LAST_NAME) values (12343,'Mohamed','barakat');
Insert into VOTER (VOTER_ID,FIRST_NAME,LAST_NAME) values (12344,'Mohamed','salama');

---------------------------------------------------
--   END DATA FOR TABLE VOTER
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE VOTES_FOR
--   FILTER = none used
---------------------------------------------------
REM INSERTING into VOTES_FOR
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12340,'interstellar','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12341,'the joker','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12342,'avengers infinity war','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12343,'the fault in our stars','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12344,'inception','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12340,'inception','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12341,'the fault in our stars','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12342,'avengers infinity war','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12343,'the joker','Oscar');
Insert into VOTES_FOR (VOTER_ID,MOVIE_NAME,PRIZE_NAME) values (12344,'interstellar','Oscar');

---------------------------------------------------
--   END DATA FOR TABLE VOTES_FOR
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE ORGANIZER
--   FILTER = none used
---------------------------------------------------
REM INSERTING into ORGANIZER
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (1,'mahmoud@gmail.com','mahmoud','male');
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (2,'kareem@gmail.com','Kareem','male');
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (3,'mohamed@gmail.com','Mohamed','male');
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (4,'rasmy@gmail.com','Rasmy','male');
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (5,'mostafa@gmail.com','Mostafa','male');
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (6,'ammar@gmail.com','Ammar','male');
Insert into ORGANIZER (ADMIN_ID,EMAIL,NAME,GENDER) values (7,'amr@gmail.com','Amr','male');

---------------------------------------------------
--   END DATA FOR TABLE ORGANIZER
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE MOVIE
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MOVIE
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('interstellar',1);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('the joker',2);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('inception',3);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('avengers infinity war',4);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('the fault in our stars',5);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('mission impossible',0);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('the notebook',2);
Insert into MOVIE (MOVIE_NAME,NUM_OF_VOTES) values ('barbie',3);

---------------------------------------------------
--   END DATA FOR TABLE MOVIE
---------------------------------------------------

---------------------------------------------------
--   DATA FOR TABLE MANAGES
--   FILTER = none used
---------------------------------------------------
REM INSERTING into MANAGES
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (1,'Oscar','interstellar');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (2,'Oscar','inception');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (3,'Oscar','the joker');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (3,'Oscar','barbie');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (4,'Oscar','avengers infinity war');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (5,'Oscar','mission impossible');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (6,'Oscar','the fault in our stars');
Insert into MANAGES (ADMIN_ID,PRIZE_NAME,MOVIE_NAME) values (7,'Oscar','the notebook');

---------------------------------------------------
--   END DATA FOR TABLE MANAGES
---------------------------------------------------

--------------------------------------------------------
--  Constraints for Table MOVIE
--------------------------------------------------------

  ALTER TABLE "MOVIE" ADD PRIMARY KEY ("MOVIE_NAME") ENABLE;
--------------------------------------------------------
--  Constraints for Table MOVIE_GENRE
--------------------------------------------------------

  ALTER TABLE "MOVIE_GENRE" MODIFY ("MOVIE_NAME" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIE_GENRE" MODIFY ("MOVIEGENRE" NOT NULL ENABLE);
 
  ALTER TABLE "MOVIE_GENRE" ADD PRIMARY KEY ("MOVIE_NAME", "MOVIEGENRE") ENABLE;

--------------------------------------------------------
--  Constraints for Table ORGANIZER
--------------------------------------------------------

  ALTER TABLE "ORGANIZER" ADD PRIMARY KEY ("ADMIN_ID") ENABLE;
--------------------------------------------------------
--  Constraints for Table PRIZE_ELECTIONS
--------------------------------------------------------

  ALTER TABLE "PRIZE_ELECTIONS" ADD PRIMARY KEY ("PRIZE_NAME") ENABLE;
--------------------------------------------------------
--  Constraints for Table VOTER
--------------------------------------------------------

  ALTER TABLE "VOTER" ADD PRIMARY KEY ("VOTER_ID") ENABLE;

--------------------------------------------------------
--  DDL for Index SYS_C0012278
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012278" ON "MOVIE" ("MOVIE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0012283
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012283" ON "MOVIE_GENRE" ("MOVIE_NAME", "MOVIEGENRE") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0012282
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012282" ON "ORGANIZER" ("ADMIN_ID") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0012281
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012281" ON "PRIZE_ELECTIONS" ("PRIZE_NAME") 
  ;
--------------------------------------------------------
--  DDL for Index SYS_C0012277
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYS_C0012277" ON "VOTER" ("VOTER_ID") 
  ;
--------------------------------------------------------
--  Ref Constraints for Table MANAGES
--------------------------------------------------------

  ALTER TABLE "MANAGES" ADD FOREIGN KEY ("MOVIE_NAME")
	  REFERENCES "MOVIE" ("MOVIE_NAME") ENABLE;
 
  ALTER TABLE "MANAGES" ADD FOREIGN KEY ("PRIZE_NAME")
	  REFERENCES "PRIZE_ELECTIONS" ("PRIZE_NAME") ENABLE;
 
  ALTER TABLE "MANAGES" ADD FOREIGN KEY ("ADMIN_ID")
	  REFERENCES "ORGANIZER" ("ADMIN_ID") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table MOVIE_GENRE
--------------------------------------------------------

  ALTER TABLE "MOVIE_GENRE" ADD FOREIGN KEY ("MOVIE_NAME")
	  REFERENCES "MOVIE" ("MOVIE_NAME") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table NOMINATED_FOR
--------------------------------------------------------

  ALTER TABLE "NOMINATED_FOR" ADD FOREIGN KEY ("MOVIE_NAME")
	  REFERENCES "MOVIE" ("MOVIE_NAME") ENABLE;
 
  ALTER TABLE "NOMINATED_FOR" ADD FOREIGN KEY ("PRIZE_NAME")
	  REFERENCES "PRIZE_ELECTIONS" ("PRIZE_NAME") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table PRIZE_ELECTIONS
--------------------------------------------------------

  ALTER TABLE "PRIZE_ELECTIONS" ADD FOREIGN KEY ("WINNER_NAME")
	  REFERENCES "MOVIE" ("MOVIE_NAME") ENABLE;

--------------------------------------------------------
--  Ref Constraints for Table VOTES_FOR
--------------------------------------------------------

  ALTER TABLE "VOTES_FOR" ADD FOREIGN KEY ("VOTER_ID")
	  REFERENCES "VOTER" ("VOTER_ID") ENABLE;
 
  ALTER TABLE "VOTES_FOR" ADD FOREIGN KEY ("MOVIE_NAME")
	  REFERENCES "MOVIE" ("MOVIE_NAME") ENABLE;
 
  ALTER TABLE "VOTES_FOR" ADD FOREIGN KEY ("PRIZE_NAME")
	  REFERENCES "PRIZE_ELECTIONS" ("PRIZE_NAME") ENABLE;


--------------------------------------------------------
--  DDL for Procedure SECURE_DML
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SECURE_DML" 
IS
BEGIN
  IF TO_CHAR (SYSDATE, 'HH24:MI') NOT BETWEEN '08:00' AND '18:00'
        OR TO_CHAR (SYSDATE, 'DY') IN ('SAT', 'SUN') THEN
	RAISE_APPLICATION_ERROR (-20205,
		'You may only make changes during normal office hours');
  END IF;
END secure_dml;

/

