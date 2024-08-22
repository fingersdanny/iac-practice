variable "region" {
  type = string
  default = "ap-northeast-2"
}

variable "tags" {
  type = map(string)
  default = {
    environment = "production"
    owner = "hodako"
    created_at = timestamp()
    updated_at = timestamp()
  }
}