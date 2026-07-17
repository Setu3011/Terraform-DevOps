resource "azurerm_storage_account" "setu3011" {

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
 
  account_tier             = "Standard"
  account_replication_type = var.account_replication_type
  account_kind = "StorageV2"
  access_tier = "Hot"
  https_traffic_only_enabled = true
  min_tls_version = "TLS1_2"
  allow_nested_items_to_be_public = false
  shared_access_key_enabled = true
  public_network_access_enabled = true
  cross_tenant_replication_enabled = false
  default_to_oauth_authentication = false

  network_rules {
    default_action = "Allow"
    bypass = ["None"]
  }

  blob_properties {
    versioning_enabled = false
  }
}

resource "azurerm_storage_account" "azurerga2df" {

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  account_tier             = "Standard"
  account_replication_type = var.account_replication_type


  account_kind = "StorageV2"
  access_tier = "Hot"
  https_traffic_only_enabled = true
  min_tls_version = "TLS1_2"
  allow_nested_items_to_be_public = false
  shared_access_key_enabled = true
  public_network_access_enabled = true
  cross_tenant_replication_enabled = false
  default_to_oauth_authentication = false

  network_rules {
    default_action = "Allow"
    bypass = ["None"]
  }

  blob_properties {
    versioning_enabled = false
  }
}

resource "azurerm_storage_account" "azurerg91bd" {

  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  account_tier             = "Standard"
  account_replication_type = var.account_replication_type


  account_kind = "StorageV2"

  access_tier = "Hot"

  https_traffic_only_enabled = true

  min_tls_version = "TLS1_2"

  allow_nested_items_to_be_public = false

  shared_access_key_enabled = true

  public_network_access_enabled = true

  cross_tenant_replication_enabled = false

  default_to_oauth_authentication = false

  network_rules {

    default_action = "Allow"

    bypass = ["None"]

  }

  blob_properties {

    versioning_enabled = false

  }

}