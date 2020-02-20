variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "tenancy" {
  description = "The tenancy of the instance. Must be one of: default or dedicated."
  default     = "default"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

variable "bu1_services_subnet_cidr" {
  description = "CIDR block for the services subnet"
}

variable "bu1_database_subnet_cidr" {
  description = "CIDR block for the database subnet"
}

variable "bu2_services_subnet_cidr" {
  description = "CIDR block for the services subnet"
}

variable "bu2_database_subnet_cidr" {
  description = "CIDR block for the database subnet"
}