terraform {
  required_providers {
    snowflake = {
      source = "chanzuckerberg/snowflake"
      version = "0.25.36"
    }
  }

}
variable "sfuser"{}
variable "sfacct"{}
variable "sfregion"{}
variable "sfpwd"{}
variable "sfrole"{}

provider "snowflake" {
  username = var.sfuser
  account  = var.sfacct
  region   = var.sfregion
  password = var.sfpwd
  role     = var.sfrole
}

module "mod" {
  source = "./database"
}

