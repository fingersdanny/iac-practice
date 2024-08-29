variable "region" {
  type = string
  default = "ap-northeast-2"
}

variable "tags" {
  type = map(string)
  default = {
    environment = "production"
    owner = "hodako"

  }
}

variable "azs" {
  type = list(string)
  description = "Availability Zones"
  default = ["ap-northeast-2a", "ap-northeast2c"]
}