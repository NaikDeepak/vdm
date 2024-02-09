CREATE TABLE PRO_EMP_MASTER(login_id number(6) constraint pk8_lid primary key,
PROFIL_ID NUMBER(6) 
CONSTRAINT PROFEMPID REFERENCES 
PROFILE_MASTER(PROFILE_ID) on delete cascade,
profile_alloc_date date,
profile_dealloc_date date,
EMP_NO NUMBER(6) CONSTRAINT PROFEMPNO REFERENCES 
EMP_MASTER(EMP_NO) on delete cascade,
emp_login_name varchar2(30),
emp_PW_OLD VARCHAR2(20),
emp_PW_NEW VARCHAR2(20))

/
