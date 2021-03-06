CREATE TABLE PRODUCT (
		PRODUCT_ID    number(7,0)			NOT NULL ,
		BRAND         varchar2(30 BYTE)		NOT NULL ,
		COLLECTION    varchar2(50 BYTE)		NULL ,
	 	CATEGORY      varchar2(50 BYTE) 	NOT NULL ,
	 	ENG_NAME      varchar2(1000 BYTE) 	NOT NULL ,
	 	KOR_NAME      varchar2(1000 BYTE) 	NOT NULL ,
	 	GENDER        number(1,0) 			NOT NULL ,
	 	RELEASE_DATE  date 					NULL ,
	 	RELEASE_PRICE varchar2(50 BYTE) 	NULL ,
	 	MODEL_NUMBER  varchar2(100 BYTE) 	NULL ,
	 	COLOR         varchar2(500 BYTE) 	NOT NULL ,
	 	POST_STATUS   varchar2(30 BYTE) 	NOT NULL ,
	 	REGDATE       date 					NOT NULL ,
		PRIMARY KEY (PRODUCT_ID)
);

CREATE SEQUENCE PRODUCT_SEQ START WITH (NUM)
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE TABLE PRO_IMAGE (
		PRO_IMAGE_ID	 number(7,0)		 	NOT NULL,
		PRODUCT_ID   	 number(7,0) 			NOT NULL 
          		REFERENCES PRODUCT(PRODUCT_ID) ON DELETE CASCADE,
		ORG_FILE_NAME	 varchar2(1000 BYTE) 	NOT NULL,
		FILE_PATH   	 varchar2(4000 BYTE)  	NOT NULL,
		PRIMARY KEY (PRO_IMAGE_ID)
);

CREATE SEQUENCE PRO_IMAGE_SEQ START WITH (NUM)
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE TABLE MARKET_PRICE(
		MARKET_PRICE_ID	 number(7,0) 		NOT NULL,
		PRODUCT_ID     	 number(7,0) 		NOT NULL
          		REFERENCES PRODUCT(PRODUCT_ID) ON DELETE CASCADE,
		PRICE          	 number(30,0)		NOT NULL,
		SIGNING_DATE   	 date				NOT NULL,
		PRIMARY KEY (MARKET_PRICE_ID)
);

CREATE SEQUENCE MARKET_PRICE_SEQ START WITH (NUM)
INCREMENT BY 1
NOCACHE NOCYCLE;

CREATE TABLE LIKE_PRO (
		LIKE_PRO_ID   number(7) 		NOT NULL,
		USER_ID       varchar2(30) 		NOT NULL
        REFERENCES USER_TABLE(USER_ID) ON DELETE CASCADE,
		PRODUCT_ID    number(7) 		NOT NULL
				REFERENCES PRODUCT(PRODUCT_ID) ON DELETE SET NULL,
		LIKE_PRO_DATE date 				NOT NULL,
		PRIMARY KEY (LIKE_PRO_ID)
);

CREATE SEQUENCE LIKE_PRO_SEQ START WITH 1
INCREMENT BY 1
NOCACHE NOCYCLE;