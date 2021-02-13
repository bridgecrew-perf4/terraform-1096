provider "aws" {
    region                  = var.region_oi
    shared_credentials_file = var.credentials_path_oi
    profile                 = var.credentials_profile_oi
}
