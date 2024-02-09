create table sub_brand_color_master(sub_brand_id number(6) constraint fk9_sbrid
references vehicle_sub_brand_master(sub_brand_id) on delete cascade,
color_id number(6) constraint fk10_cid references
vehicle_color_master(color_id) on delete cascade,
primary key(sub_brand_id,color_id))
/
