variable "ratomir-ip" {
  type    = "string"
}

variable "subscription_id" {
  type        = "string"
  description = "Azure subscription Id."
}

# tenant
variable "tenant_id" {
  type        = "string"
  description = "Azure tenant Id."
}

# appId
variable "client_id" {
  type        = "string"
  description = "Azure service principal application Id"
}

# password
variable "client_secret" {
  type        = "string"
  description = "Azure service principal application Secret"
}

variable projectname {
  default = "maestraldemo"
}

variable "rg_name" {
  type        = "string"
  description = "Resource group name"
  default     = "rg-maestraldemo-sql"
}

variable "sql_database_username" {
  type    = "string"
}

variable "sql_database_password" {
  type    = "string"
}

variable "user_admin" {
  type    = "string"
}

variable "sql_server" {
  type    = "string"
  default = "maestraldemo"
}

variable "env" {
}
