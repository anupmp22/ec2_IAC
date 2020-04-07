variable "ami" {
  description = "ami id of instance"
  default     = "ami-0ab32f727f27e8ae8"
}

variable "instance_type" {
  description = "type of instance"
  default     = "t2.micro"
}

variable "key_name" {
  description = "pem key name"
  default     = "awsdemo"
}

variable "iam_instance_profile" {
  description  = "iam role name to attach"
  default      = "codedeployinstancerole"
}

variable "tag_name" {
   description = "tag name of instance"
   default     = "ec2_test"
}

