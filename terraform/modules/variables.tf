variable "ami" {
  description = "ami-id of instance"
}

variable "instance_type" {
  description = "type of instance"
}

variable "key_name" {
  description = "pem key name"
}

variable "iam_instance_profile" {
  description  = "iam role name to attach"
}

variable "tag_name" {
  description   = "tag name of instance"
}
