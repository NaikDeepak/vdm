create table vehicle_sub_brand_master(sub_brand_id number(6) constraint pk_sbid
primary key,
brand_id number(6) constraint fk_sbid references
vehic_brand_master(brand_id) on delete cascade,
launch_date date,
sub_brand_desc long,
sub_brand_name varchar2(30),
seating_cap number(6),
brand_cost number(10,2),
no_of_gears number(3))
/
