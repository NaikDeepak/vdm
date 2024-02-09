create table sales_details(sale_no number(6) constraint fk25_sno references sales_master(sale_no) on
delete cascade,
feature_id number(6) constraint fk26_fid references vehic_features_master(feature_id) on delete cascade,
feature_cost number(10,2),
feature_qnty number(6),
primary key(sale_no, feature_id))
/
