create table dealer_manu_master(dealer_id number(6) constraint fk3_did
references vehicle_dealer_master(dealer_id) on delete cascade,
manufac_id number(6) constraint fk4_mid references
vehicle_manufa_master(veh_manu_id)  on delete cascade,
delar_contract_start_date date,
delar_contract_end_date date,
primary key(dealer_id,manufac_id))
/
