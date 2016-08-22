--
-- DROP table
--
DROP TABLE tbl_member;
DROP TABLE tbl_user;

DROP TABLE tbl_attach;
DROP TABLE tbl_reply;
DROP TABLE tbl_board;

--
-- tbl_member
--
CREATE TABLE tbl_member
(
   userid       VARCHAR(50) NOT NULL,
   userpw       VARCHAR(50) NOT NULL,
   username     VARCHAR(100) NOT NULL,
   email        VARCHAR(100),
   regdate      TIMESTAMP DEFAULT now(),
   updatedate   TIMESTAMP DEFAULT now(),
   PRIMARY KEY(userid)
);

--
-- tbl_user
--
CREATE TABLE tbl_user
(
   uid            VARCHAR(50) NOT NULL,
   upw            VARCHAR(50) NOT NULL,
   uname          VARCHAR(100) NOT NULL,
   upoint         int NOT NULL DEFAULT 0,
   sessionkey     varchar(50) NOT NULL DEFAULT 'none',
   sessionlimit   timestamp NOT NULL DEFAULT now(),
   PRIMARY KEY(uid)
);


INSERT INTO tbl_user(UID, upw, uname)
     VALUES ('user00', 'user00', 'IRON MAN');

INSERT INTO tbl_user(UID, upw, uname)
     VALUES ('user01', 'user01', 'CAPTAIN');

INSERT INTO tbl_user(UID, upw, uname)
     VALUES ('user02', 'user02', 'HULK');

INSERT INTO tbl_user(UID, upw, uname)
     VALUES ('user03', 'user03', 'Thor');


--
-- tbl_board
--
CREATE TABLE tbl_board
(
   bno        int NOT NULL AUTO_INCREMENT,
   title      varchar(200) NOT NULL,
   content    text NULL,
   writer     varchar(50) NOT NULL,
   regdate    timestamp NOT NULL DEFAULT now(),
   viewcnt    int DEFAULT 0,
   replycnt   int DEFAULT 0,
   PRIMARY KEY(bno)
);

--
-- tbl_reply
--
CREATE TABLE tbl_reply
(
   rno          int NOT NULL AUTO_INCREMENT,
   bno          int NOT NULL DEFAULT 0,
   replytext    varchar(1000) NOT NULL,
   replyer      varchar(50) NOT NULL,
   regdate      timestamp NOT NULL DEFAULT now(),
   updatedate   timestamp NOT NULL DEFAULT now(),
   PRIMARY KEY(rno)
);

ALTER TABLE tbl_reply
  ADD CONSTRAINT fk_board_reply FOREIGN KEY(bno) REFERENCES tbl_board(bno);

--
-- tbl_attach
--
CREATE TABLE tbl_attach
(
   fullName   VARCHAR(150) NOT NULL,
   bno        INT NOT NULL,
   regdate    TIMESTAMP DEFAULT now(),
   PRIMARY KEY(fullName)
);

ALTER TABLE tbl_attach
  ADD CONSTRAINT fk_borad_attach FOREIGN KEY(bno) REFERENCES tbl_board(bno);