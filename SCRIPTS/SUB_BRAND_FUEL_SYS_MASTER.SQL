create table sub_brand_fuel_sys_master(sub_brand_id number(6) constraint fk11_sbid references
vehicle_sub_brand_master(sub_brand_id) on delete cascade,
fuel_sys_id number(6) constraint fk12_fid references
fuel_sys_master( fuel_sys_id) on delete cascade,
primary key(sub_brand_id,fuel_sys_id))
/
