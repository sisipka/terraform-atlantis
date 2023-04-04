terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
      version = "0.85.0"
    }
  }
  required_version = ">= 0.13"
  backend "s3" {
  endpoint   = "storage.yandexcloud.net"
  bucket     = "state-shestihin"
  region     = "ru-central1"
  key        = "terraform.tfstate"
  access_key = "YCAJEejVa1KaHadoWcrKrxQ5x"
  secret_key = "YCMN_ZAZTMs1cqnN1vNjFrBI8vfWwpCbr_wCg5x6"

  skip_region_validation      = true
  skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.token 
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
}
