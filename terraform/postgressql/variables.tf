variable "project_id" {
  description = "project id"
}
variable "location" {
  description = "location"
}

variable "region" {
  description = "region"
}

# CloudSQL
variable "instance_name" {
  description = "Name for the sql instance database"
  default     = "instance-name"
}

variable "database_name" {
  description = "Name for the database to be created"
  default     = "dbname"
}

variable "db_username" {
  description = "Username credentials for root user"
  default     = "dbuser"
}

variable "db_password" {
  description = "Password credentials for root user"
  default     = "dbpassword"
}

variable "host" {
  description = "host"
  default     = ""
}