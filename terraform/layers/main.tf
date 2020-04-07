module "ec2_prod" {
    source="../module"

providers "aws" {
     
  }   

ami = "${var.ami}"
instance_type="${var.instance_type}"
keyname = "${var.keyname}" 
tag_name = "${var.tag_name}"

}