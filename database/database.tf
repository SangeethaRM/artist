terraform {
  required_providers {
    snowflake = {
      source = "chanzuckerberg/snowflake"
      version = "0.25.36"
    }
  }
}

  
resource "snowflake_database" "db" {
  name = var.db_name.name
}