create table inventory_record_mast(veh_id number(6) constraint pk7_vid primary key,
pur_no number(6) constraint fk28_pno references purchase_master(pur_no) on delete cascade,
veh_carburator_no number(6),
veh_chasis_no number(6),
veh_battery_make date,
veh_battery_no number(6))
/
