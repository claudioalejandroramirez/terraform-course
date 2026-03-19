terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.62.1"
    }
  }
}

provider "azurerm" {
  features {}

  resource_provider_registrations = "none"

  # Autenticação via ARM_ACCESS_TOKEN (env var definida no setup-local.sh)
  # NÃO definir client_id/client_secret aqui — se estiverem presentes,
  # o azurerm ignora o ARM_ACCESS_TOKEN e tenta OAuth no AAD real
  use_cli  = false
  use_msi  = false
  use_oidc = false

  subscription_id = "00000000-0000-0000-0000-000000000000"
  tenant_id       = "00000000-0000-0000-0000-000000000000"
}
