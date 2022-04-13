
module "tfplan-functions" {
    source = "https://raw.githubusercontent.com/ausmartway/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "https://raw.githubusercontent.com/ausmartway/terraform-sentinel-policies/main/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "https://raw.githubusercontent.com/ausmartway/terraform-sentinel-policies/main/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "https://raw.githubusercontent.com/ausmartway/terraform-sentinel-policies/main/common-functions/tfrun-functions/tfrun-functions.sentinel"
}

policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-and-percentage-increase.sentinel"
    enforcement_level = "soft-mandatory"
}
