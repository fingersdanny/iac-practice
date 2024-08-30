variable "region" {
  type = string
}

variable "tags" {
  type = map(string)
}

variable "azs" {
  type = list(string)
}