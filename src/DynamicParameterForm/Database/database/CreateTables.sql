ALTER TABLE PARAMETER_FORM_ITEM_SET DROP CONSTRAINT "PARAMETER_FORM_ITEM_SET_FK"
;

ALTER TABLE PARAMETER_FORM_ITEM_SET DROP CONSTRAINT "PARAMETER_FORM_ITEM_SET_FK1"
;

ALTER TABLE PARAMETER_CHOICES DROP CONSTRAINT "PARAMETER_CHOICES_FK"
;

DROP TABLE PARAMETER_FORM_DEFINITION CASCADE CONSTRAINTS;

DROP TABLE PARAMETER_FORM_ITEM_SET CASCADE CONSTRAINTS;

DROP TABLE PARAMETER_CHOICES CASCADE CONSTRAINTS;

DROP TABLE PARAMETER_DEFINITION CASCADE CONSTRAINTS;

CREATE TABLE PARAMETER_FORM_DEFINITION
(
ID VARCHAR2(30) NOT NULL,
DESCRIPTION VARCHAR2(80)
)
;

CREATE TABLE PARAMETER_FORM_ITEM_SET
(
PARAMETER_DEFINITION_ID VARCHAR2(30) NOT NULL,
PARAMETER_FORM_DEFINITION_ID VARCHAR2(30) NOT NULL
)
;

CREATE TABLE PARAMETER_CHOICES
(
VALUE VARCHAR2(80) NOT NULL,
DESCRIPTION VARCHAR2(80),
PARAMETER_DEFINITION_ID VARCHAR2(30) NOT NULL
)
;

CREATE TABLE PARAMETER_DEFINITION
(
ID VARCHAR2(30) NOT NULL,
DESCRIPTION VARCHAR2(80),
DISPLAY_TYPE VARCHAR2(1)
)
;

ALTER TABLE PARAMETER_FORM_DEFINITION
ADD CONSTRAINT PARAMETER_FORM_DEFINITION_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE PARAMETER_FORM_ITEM_SET
ADD CONSTRAINT PARAMETER_FORM_ITEMS_PK PRIMARY KEY
(
PARAMETER_FORM_DEFINITION_ID,
PARAMETER_DEFINITION_ID
)
 ENABLE
;

ALTER TABLE PARAMETER_CHOICES
ADD CONSTRAINT PARAMETER_FORM_ITEM_CHOICES_PK PRIMARY KEY
(
VALUE,
PARAMETER_DEFINITION_ID
)
 ENABLE
;

ALTER TABLE PARAMETER_DEFINITION
ADD CONSTRAINT PARAMETER_DEFINITION_PK PRIMARY KEY
(
ID
)
 ENABLE
;

ALTER TABLE PARAMETER_FORM_ITEM_SET
ADD CONSTRAINT PARAMETER_FORM_ITEM_SET_FK FOREIGN KEY
(
PARAMETER_DEFINITION_ID
)
REFERENCES PARAMETER_DEFINITION
(
ID
) ENABLE
;

ALTER TABLE PARAMETER_FORM_ITEM_SET
ADD CONSTRAINT PARAMETER_FORM_ITEM_SET_FK1 FOREIGN KEY
(
PARAMETER_FORM_DEFINITION_ID
)
REFERENCES PARAMETER_FORM_DEFINITION
(
ID
) ENABLE
;

ALTER TABLE PARAMETER_CHOICES
ADD CONSTRAINT PARAMETER_CHOICES_FK FOREIGN KEY
(
PARAMETER_DEFINITION_ID
)
REFERENCES PARAMETER_DEFINITION
(
ID
) ENABLE
;

