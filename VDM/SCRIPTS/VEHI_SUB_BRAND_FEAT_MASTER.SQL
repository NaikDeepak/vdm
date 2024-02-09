create table vehi_sub_brand_feat_master(sub_brand_id number(6) constraint fk6_sbid
references vehicle_sub_brand_master(sub_brand_id) on delete cascade,
feat_id number(6) constraint fk7_feid references
vehic_features_master(feature_id) on delete cascade,
feat_qty number(6),
primary key(sub_brand_id,feat_id))
/
