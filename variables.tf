variable "domain_name" {
  type = string
  description = "Name of the domain. Example: potato.com"
}
variable "alternate_names" {
  type = list(string)
  default = []
  description = "List of alternate names. Example [*.potato.com]"
}
variable "tags" {
  type = object({})
  default = {}
  description = "Tags for the resources"
}

variable "hosted_zone_id" {
  type = string
  description = "Hosted Zone ID"
}
variable "validation_record_ttl" {
  type = string
  default = "60"
  description = "Validation record TTL"
}
variable "allow_validation_overwrite" {
  type = string
  default = "true"
  description = "Should overwrite any existing validation record?"
}