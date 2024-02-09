create table vehicle_dealer_master(dealer_id number(6) constraint pk_did
primary key,
dealer_name varchar2(30),
dealer_hno varchar2(30),
dealer_street varchar2(30),
dealer_city varchar2(30),
dealer_state varchar2(30),
dealer_country varchar2(30),
dealer_zip number(8),
dealer_ph1 number(16),
dealer_ph2 number(16),
dealer_emailid varchar2(30),
delar_contact_per_fname varchar2(30),
delar_contact_per_mname varchar2(30),
delar_contact_per_lname varchar2(30),
delar_contact_per_phn number(16))
/
