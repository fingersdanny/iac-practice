variable "public_subnet_cidrs" {
  type = list(string)
  description = "Public Subnet CIDR values"
  default = ["10.0.11.0/24, 10.0.12.0/24"]
}

variable "private_subnet_cidrs" {
  type = list(string)
  description = "Private Subnet CIDR values"
  default = ["10.0.1.0/24, 10.0.2.0/24"]
}

variable "region" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "azs" {
  type = list(string)
}