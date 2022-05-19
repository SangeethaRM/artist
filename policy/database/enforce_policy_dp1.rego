package terraform
import future.keywords.in
deny[msg] {
	sf_resource := input.planned_values.root_module.child_modules[_].resources[_]
	sf_type := sf_resource.type
    sf_type == "snowflake_database"
    sf_db_name := sf_resource.values.name
    db_name_prefix := "LTI_"
    not startswith(sf_db_name,db_name_prefix)
    msg := sprintf("Database name should start with the prefix '%v'",[db_name_prefix])
}