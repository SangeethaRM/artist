terraform {
  required_providers {
    snowflake = {
      source = "chanzuckerberg/snowflake"
      version = "0.25.36"
    }
  }
}


resource snowflake_warehouse "wh" {
  name           = var.wh_name.name
  warehouse_size = var.wh_name.size
  max_cluster_count = var.wh_name.max_cluster_count
  min_cluster_count = var.wh_name.min_cluster_count
  scaling_policy = var.wh_name.scaling_policy
}