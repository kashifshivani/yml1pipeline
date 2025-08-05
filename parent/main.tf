module "rg" {
    source = "../child/rg"
    rg_name = "kash"
    location = "westus"
}

module "sa" {
    source ="../child/sa"
    depends_on = [ module.rg ]
    storage_name = "kashhamza1"
    rg_name = "kash"
    location = "westus"
    account_tier = "Standard"
    account_replication_type = "GRS"

  
}