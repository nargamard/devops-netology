terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }
  }
  backend "s3" {
  endpoint   = "storage.yandexcloud.net"
  bucket     = "backet-tutorial"
  region     = "ru-central1"
  key        = "terraform.tfstate"
  access_key = "YCAJE_FvHO38A0E4gjfLWCKeg"
  secret_key = "YCOunXW0e2lVgFDFhJyQcXbjVj0To2hJdxkVKtAl"

  skip_region_validation      = true
  skip_credentials_validation = true
  }
}

# Provider
provider "yandex" {
  token     = var.token_path
  cloud_id  = var.yandex_cloud_id
  zone      = var.zone
}
