create table purchase_master(pur_no number(6) constraint  pk5_pno primary key,
pur_date date,
manufact_id number(6) constraint fk24_mid references vehicle_manufa_master(veh_manu_id) on delete cascade)
