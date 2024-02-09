create table purchase_details(purchase_no number(6) constraint fk27_pno references purchase_master(pur_no) on delete cascade,
sub_brand_id number(6) constraint fk28_sbid references vehicle_sub_brand_master(sub_brand_id)
on delete cascade,
purchase_cost number(10,2),
sub_brand_qnty number(6),
primary key(purchase_no, sub_brand_id))
/
