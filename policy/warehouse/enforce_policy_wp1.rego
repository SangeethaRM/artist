package terraform
import future.keywords.in
deny[msg] {
	sf_resource := input.planned_values.root_module.child_modules[_].resources[_]
	sf_type := sf_resource.type
    sf_type == "snowflake_warehouse"
    sf_whsize := sf_resource.values.warehouse_size
    sizes := concat(",", allowed_whsize)
    not sf_whsize in allowed_whsize
    msg := sprintf("Allowed Warehouse Sizes ,[%s]",[sizes])
}