
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

module "aws_functions" {
    source = "https://github.com/ausmartway/terraform-sentinel-policies/blob/main/aws/aws-functions/aws-functions.sentinel"
}
        
policy "limit-cost-and-percentage-increase" {
    source = "./limit-cost-and-percentage-increase.sentinel"
    enforcement_level = "soft-mandatory"
}

    policy "enforce-mandatory-tags" {
    
        source = "./enforce-mandatory-tags.sentinel"    
        enforcement_level = "soft-mandatory"
        
    }
    
