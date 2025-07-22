output "bucket_names" {
  value = {
    me_central_1 = module.region_me_central_1.bucket_name
    ## DEFAULT REGIONS (DO NOT DELETE)
    ap_northeast_1 = module.region_ap_northeast_1.bucket_name
    ap_northeast_2 = module.region_ap_northeast_2.bucket_name
    ap_northeast_3 = module.region_ap_northeast_3.bucket_name
    ap_south_1     = module.region_ap_south_1.bucket_name
    ap_southeast_1 = module.region_ap_southeast_1.bucket_name
    ap_southeast_2 = module.region_ap_southeast_2.bucket_name
    ca_central_1   = module.region_ca_central_1.bucket_name
    eu_central_1   = module.region_eu_central_1.bucket_name
    eu_north_1     = module.region_eu_north_1.bucket_name
    eu_west_1      = module.region_eu_west_1.bucket_name
    eu_west_2      = module.region_eu_west_2.bucket_name
    eu_west_3      = module.region_eu_west_3.bucket_name
    sa_east_1      = module.region_sa_east_1.bucket_name
    us_east_1      = module.region_us_east_1.bucket_name
    us_east_2      = module.region_us_east_2.bucket_name
    us_west_1      = module.region_us_west_1.bucket_name
    us_west_2      = module.region_us_west_2.bucket_name
  }
}
