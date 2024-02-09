create table sub_brand_fuel_master(su_brand_id number(6) constraint fk13_sbid
references vehicle_sub_brand_master(sub_brand_id) on delete cascade,
fuel_id number(6) constraint fk14_fid references
fuel_master(fuel_id) on delete cascade,
primary key(su_brand_id,fuel_id))
/
