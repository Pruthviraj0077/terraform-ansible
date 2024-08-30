variable "instances" {
  type = map(string)
  default = {
    "name" = "value"
  }

}

variable "ami_id" {
  type    = string
  default = "value"

}
variable "key_name" {
  type    = string
  default = "value"
}

variable "ports" {
  type    = set(string)
  default = []

}