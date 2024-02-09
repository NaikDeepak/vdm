create table sales_master(sale_no number(6) constraint pk_sno primary key,
sale_date date,
sub_brand_id number(6) constraint fk20_sbid references vehicle_sub_brand_master(sub_brand_id)
on delete cascade,
sales_person_no number(6) constraint fk21_spid references EMP_MASTER(EMP_NO)
on delete cascade,
branch_id number(6) constraint fk22_bid references dealer_branch_master(branch_id) on delete cascade,
color_id number(6) constraint fk23_cid references vehicle_color_master(color_id) on delete cascade,
fuel_sys_id number(6) constraint fk23_fsid references fuel_sys_master( fuel_sys_id) on delete cascade,
fuel_id number(6) constraint fk24_fid references fuel_master(fuel_id) on delete cascade,
veh_temp_reg_no number(6),
veh_payment_reg_date date,
veh_chasis_id number(6),
veh_carburate_no number(6),
veh_battery_make date,
veh_battery_no number(6))

