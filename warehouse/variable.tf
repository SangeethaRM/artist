variable "wh_name"{
	default={ 
		name= "TF_DEMO_WH12"
		size="SMALL"
		max_cluster_count = 3
		min_cluster_count = 5
		scaling_policy = "STANDARD"
	}
}