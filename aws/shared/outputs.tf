output "bucket_cloudtrail_trail_name" {
    value = module.bucket_cloudtrail_trail.bucket_name
}

output "bucket_config_log_names" {
    value = {
        me_central_1 = module.bucket_config_logs_me_central_1.bucket_name
        ap_northeast_1 = module.bucket_config_logs_ap_northeast_1.bucket_name
        ap_northeast_2 = module.bucket_config_logs_ap_northeast_2.bucket_name
        ap_northeast_3 = module.bucket_config_logs_ap_northeast_3.bucket_name
        ap_south_1     = module.bucket_config_logs_ap_south_1.bucket_name
        ap_southeast_1 = module.bucket_config_logs_ap_southeast_1.bucket_name
        ap_southeast_2 = module.bucket_config_logs_ap_southeast_2.bucket_name
        ca_central_1   = module.bucket_config_logs_ca_central_1.bucket_name
        eu_central_1   = module.bucket_config_logs_eu_central_1.bucket_name
        eu_north_1     = module.bucket_config_logs_eu_north_1.bucket_name
        eu_west_1      = module.bucket_config_logs_eu_west_1.bucket_name
        eu_west_2      = module.bucket_config_logs_eu_west_2.bucket_name
        eu_west_3      = module.bucket_config_logs_eu_west_3.bucket_name
        sa_east_1      = module.bucket_config_logs_sa_east_1.bucket_name
        us_east_1      = module.bucket_config_logs_us_east_1.bucket_name
        us_east_2      = module.bucket_config_logs_us_east_2.bucket_name
        us_west_1      = module.bucket_config_logs_us_west_1.bucket_name
        us_west_2      = module.bucket_config_logs_us_west_2.bucket_name
    }
}