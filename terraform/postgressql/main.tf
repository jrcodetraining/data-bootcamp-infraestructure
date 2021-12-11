
resource "google_sql_database" "database" {
  name      = var.database_name
  instance  = var.instance_name
}

resource "google_sql_user" "users" {
  instance = var.instance_name
  host     = var.host
  name     = var.db_username
  password = var.db_password
}