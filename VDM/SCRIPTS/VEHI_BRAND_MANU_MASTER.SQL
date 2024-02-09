create table vehi_brand_manu_master(vehicle_manu_id number(6) constraint fk1_vmid
references vehicle_manufa_master(veh_manu_id) on delete cascade,
brand_id number(6) constraint fk2_bid
references vehic_brand_master(brand_id) on delete cascade,
 primary key(vehicle_manu_id,brand_id))
/
