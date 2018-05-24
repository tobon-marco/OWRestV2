--SEQUENCE=====================================================
CREATE SEQUENCE hero_id_seq
  START WITH 1
  INCREMENT BY 1;
/
CREATE SEQUENCE skin_id_seq
  START WITH 1
  INCREMENT BY 1;
/
CREATE SEQUENCE ab_id_seq
  START WITH 1
  INCREMENT BY 1;
/
--TABLES ===============================================================

--REFRENCE TABLE--------------------
DROP TABLE HEROES;
/
DROP TABLE HERO_TYPES;
/
DROP TABLE SKINS;
/
DROP TABLE ABILITIES;
/

CREATE TABLE HERO_TYPES
(
  ID NUMBER,
  TYPE VARCHAR2(250),
  
  CONSTRAINT hero_type_pk PRIMARY KEY (ID)
);
/
--ACTUAL TABLES --------------------------------------

CREATE TABLE HEROES
(
  ID NUMBER,
  name VARCHAR2(250),
  hero_type NUMBER,
  picture VARCHAR(250),
  
  CONSTRAINT hero_pk PRIMARY KEY (ID),
  CONSTRAINT type_fk FOREIGN KEY (hero_type) REFERENCES HERO_TYPES
);
/
CREATE TABLE SKINS
(
  ID NUMBER,
  HERO_ID NUMBER,
  SKIN_NAME VARCHAR2(500),
  SKIN_PIC VARCHAR2(500),
  
  CONSTRAINT skins_pk PRIMARY KEY (ID),
  CONSTRAINT skins_fk FOREIGN KEY (HERO_ID) REFERENCES HEROES
);
/
CREATE TABLE ABILITIES
(
  ID NUMBER,
  AB_NAME VARCHAR2(200),
  iSULT NUMBER(1),
  HERO_ID NUMBER,
  
  CONSTRAINT ab_fk FOREIGN KEY(HERO_ID) REFERENCES HEROES,
  CONSTRAINT ab_pk PRIMARY KEY (ID)
);
/
--TRIGGERS============================
CREATE OR REPLACE TRIGGER hero_id
  BEFORE 
    INSERT ON HEROES
  FOR EACH ROW
  BEGIN
    SELECT hero_id_seq.NEXTVAL
    INTO :new.id
    FROM dual;
  END;
/
CREATE OR REPLACE TRIGGER skin_id
  BEFORE 
    INSERT ON SKINS
  FOR EACH ROW
  BEGIN
    SELECT skin_id_seq.NEXTVAL
    INTO :new.id
    FROM dual;
  END;
/
CREATE OR REPLACE TRIGGER ab_id
  BEFORE 
    INSERT ON Abilities
  FOR EACH ROW
  BEGIN
    SELECT ab_id_seq.NEXTVAL
    INTO :new.id
    FROM dual;
  END;
/
--INSERTIONS =========================================
--HERO_TYPES
INSERT INTO HERO_TYPES VALUES (1, 'OFFENSE');
/
INSERT INTO HERO_TYPES VALUES (2, 'DEFENSE');
/
INSERT INTO HERO_TYPES VALUES (3, 'TANK');
/
INSERT INTO HERO_TYPES VALUES (4, 'SUPPORT');
--HEROS
INSERT INTO HEROES VALUES ( 0,'Ana', 4, 'https://blzgdapipro-a.akamaihd.net/hero/ana/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Bastion',  1, 'https://blzgdapipro-a.akamaihd.net/hero/bastion/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'D.Va',  3, 'https://blzgdapipro-a.akamaihd.net/hero/dva/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Genji',  1, 'https://blzgdapipro-a.akamaihd.net/hero/genji/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Hanzo',  1, 'https://blzgdapipro-a.akamaihd.net/hero/hanzo/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Junkrat',  1, 'https://blzgdapipro-a.akamaihd.net/hero/junkrat/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Lúcio',  4, 'https://blzgdapipro-a.akamaihd.net/hero/lucio/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'McCree',  1, 'https://blzgdapipro-a.akamaihd.net/hero/mccree/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Mei',  2, 'https://blzgdapipro-a.akamaihd.net/hero/mei/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Mercy',  4, 'https://blzgdapipro-a.akamaihd.net/hero/mercy/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Orisa',  3, 'https://blzgdapipro-a.akamaihd.net/hero/orisa/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Pharah',  1, 'https://blzgdapipro-a.akamaihd.net/hero/pharah/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Reaper',  1, 'https://blzgdapipro-a.akamaihd.net/hero/reaper/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Reinhardt',  3, 'https://blzgdapipro-a.akamaihd.net/hero/reinhardt/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Roadhog',  3, 'https://blzgdapipro-a.akamaihd.net/hero/roadhog/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Soldier: 76',  1, 'https://blzgdapipro-a.akamaihd.net/hero/soldier-76/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Sombra',  1, 'https://blzgdapipro-a.akamaihd.net/hero/sombra/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Symmetra',  4, 'https://blzgdapipro-a.akamaihd.net/hero/symmetra/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Torbjorn',  2, 'https://blzgdapipro-a.akamaihd.net/hero/torbjorn/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Tracer',  1, 'https://blzgdapipro-a.akamaihd.net/hero/tracer/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Widowmaker',  2, 'https://blzgdapipro-a.akamaihd.net/hero/widowmaker/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Winston',  3, 'https://blzgdapipro-a.akamaihd.net/hero/winston/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Zarya',  3, 'https://blzgdapipro-a.akamaihd.net/hero/zarya/hero-select-portrait.png');
/
INSERT INTO HEROES VALUES ( 0, 'Zenyatta',  4, 'https://blzgdapipro-a.akamaihd.net/hero/zenyatta/hero-select-portrait.png');
/
-- ABILTIES
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 1,' Biotic Rifle',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 1,' Sleep Dart',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 1,' Biotic Grenade',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 1,' NANO BOOST',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 2,' Configuration: Recon',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 2,' Configuration: Sentry',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 2,' Reconfigure',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 2,' Self-Repair',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 2,' CONFIGURATION: TANK',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 3,' Fusion Cannons',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 3,' Light Gun',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 3,' Boosters',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 3,' Defense Matrix',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 3,' SELF-DESTRUCT',1,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 3,' CALL MECH',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 4,' Shuriken',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 4,' Deflect',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 4,' Swift Strike',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 4,' DRAGONBLADE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 5,' Storm Bow',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 5,' Sonic Arrow',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 5,' Scatter Arrow',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 5,' DRAGONSTRIKE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 6,' Frag Launcher',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 6,' Concussion Mine',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 6,' Steel Trap',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 6,' Total Mayhem',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 6,' RIP-TIRE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 7,' Sonic Amplifier',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 7,' Crossfire',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 7,' Amp It Up',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 7,' SOUND BARRIER',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 8,' PeaceKeeper',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 8,' Combar Roll',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 8,' Flash Bang',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 8,' DEADEYE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 9,' Endothermic Blaster',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 9,' Cryo-Freeze',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 9,' Ice Wall',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 9,' BLIZZARD',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 10,' Caduceus Staff',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 10,' Caduceus Blaster',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 10,' Guardian Angel',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 10,' Angelic Descent',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 10,' RESSURECT',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 11,' Fusion Driver',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 11,' Fortify',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 11,' Halt!',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 11,' Protective Barrier',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 11,' SUPERCHARGER',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 12,' Rocket Launcher',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 12,' Jump Jet',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 12,' Concussive Blast',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 12,' BARRAGE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 13,' Hellfire Shotgun',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 13,' Wraith Form',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 13,' Shadow Step',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 13,' DEATH BLOSSOM',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 14,' Rocket Hammer',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 14,' Barrier Field',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 14,' Charge',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 14,' First Strike',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 14,' EARTHSHATTER',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 15,' Scrap Gun',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 15,' Take A Breather',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 15,' Chain Hook',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 15,' WHOLE HOG',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 16,' Heavy Pulse Rifle',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 16,' Helix Rockets',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 16,' Sprint',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 16,' Biotic Field',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 16,' TACTICAL VISOR',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 17,' Machine Pistol',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 17,' Hack',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 17,' Stealth',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 17,' Translocator',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 17,' EMP',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 18,' Photon Projector',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 18,' Sentry Turret',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 18,' Photon Barrier',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 18,' TELEPORTER',1,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 18,' SHIELD GENERATOR',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 19,' Rivet Gun',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 19,' Forge Hummer',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 19,' Build Turret',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 19,' Armor Pack',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 19,' MOLTEN CORE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 20,' Pulse Pistols',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 20,' Blink',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 20,' Recall',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 20,' PULSE BOMB',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 21,' Widows Kiss',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 21,' Grappling Hook',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 21,' Venom Mine',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 21,' INFRA-SIGHT',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 22,' Tesla Cannon',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 22,' Jump Pack',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 22,' Barrier Projector',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 22,' PRIMAL RAGE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 23,' Particle Cannon',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 23,' Particle Barrier',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 23,' Projected Barrier',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 23,' GRAVITON SURGE',1,0);

INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 24,' Orb Of Destruction',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 24,' Orb Of Harmony',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 24,' Orb Of Discord',0,0);
INSERT INTO ABILITIES (HERO_ID, AB_NAME, iSULT, ID) VALUES ( 24,' TRANSCENDENCE',1,0);



COMMIT;