variable "terraform-credentials" {
    type     = string
    default = "<file>"
    description = "The GCP service account that terraform will use to authenticate to the project"

}
variable "region" {
    type = string
    default = ""

}
variable "zone" {
  type = string
  default = ""
}
variable "project" {
  type        = string
  description = "Project id where service account will be created."
}
variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned."
  type        = string
}

variable "dataset_name" {
  description = "Friendly name for the dataset being provisioned."
  type        = string
  default     = null
}

variable "description" {
  description = "Dataset description."
  type        = string
  default     = null
}

variable "location" {
  description = "The regional location for the dataset only US and EU are allowed in module"
  type        = string
  default     = "US"
}
variable "default_table_expiration_ms" {
  description = "TTL of tables using the dataset in MS"
  type        = number
  default     = null
}


# Format: list(objects)
# domain: A domain to grant access to.
# group_by_email: An email address of a Google Group to grant access to.
# user_by_email:  An email address of a user to grant access to.
# special_group: A special group to grant access to.


variable "access" {
  description = "An array of objects that define dataset access for one or more entities."
  type        = any

  # At least one owner access is required.
  default = [{
    role          = "roles/bigquery.dataOwner"
    special_group = "projectOwners"
  }]
}
variable "tables" {
  description = "A list of objects which include table_id, schema, clustering, time_partitioning, range_partitioning, expiration_time and labels."
  type = map(any)
  default     = {
    table1 = {
        table_id = ""

    }
    table2 = {
        table_id = ""

    }
    table3 = {
        table_id = ""

    }
    table4 = {
        table_id = ""
    }
    table5 = {
        table_id = ""

    }
  }
}
