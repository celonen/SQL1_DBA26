CREATE TABLE UTBILDNINGSOMRADE (
    utbildningsomrade_id		NUMBER(5),
    utbildningsomrade  			VARCHAR2(100)		
);


CREATE TABLE SUN5_INRIKTNING (
    sun5_id				NUMBER(5),
    sun5_inriktning			VARCHAR2(10),		
    utbildningsomrade_id		NUMBER(5),
    sun5_inriktning_namn		VARCHAR(250)
);


CREATE TABLE SEQF (
    seqf_id				NUMBER(5),		
    seqf_niva				NUMBER(10),
    examenstyp				VARCHAR2(50)
);


CREATE TABLE UTBILDNINGSANORDNARE (
    anordnare_id			NUMBER(5),
    utbildningsanordnare_administr	VARCHAR2(250),
    huvudmannatyp			VARCHAR2(50)
);


CREATE TABLE LAN (
    lan_id				NUMBER(5),
    lan					VARCHAR2(50),
);


CREATE TABLE KOMMUN (    
    kommun_id				NUMBER(5),
    kommun				VARCHAR2(50),
    lan_id				NUMBER(5)
);


CREATE TABLE ANSOKAN_KOMMUN (
    ansokan_kommun_id			NUMBER(5),
    diarienummer			VARCHAR2(20),
    ansokan_id				NUMBER(5),
    kommun_id				NUMBER(5)
);


CREATE TABLE ANSOKAN (
    ansokan_id				NUMBER(5),
    diarienummer			VARCHAR2(20),
    sun5_inriktning			VARCHAR2(10),
    seqf_niva				NUMBER(10),
    anordnare_id			NUMBER(5),
    utbildningsnamn			VARCHAR2(250),
    beslut				VARCHAR2(50),
    yh_poang				NUMBER(10),
    studieform				VARCHAR2(10),
    studietakt				NUMBER(10),
    smalt_yrkesomrade			VARCHAR2(5),
    sokta_utbildningsomgangar		NUMBER(5),
    beviljade_utbildningsomgangar	NUMBER(5),
    sokta_platser_totalt		NUMBER(10),
    beviljade_platser_totalt		NUMBER(10)
);


EXIT