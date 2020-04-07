resource "aws_instance" "ec2_Test" {
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name= "{var.key_name}"
    security_groups= ["${aws_security_group.ec2_sg.name}"]
    tags = {
        Name = "${var.tag_name}"
    }
    iam_instance_profile  = "${var.iam_instance_profile}"
}

resource "aws_security_group" "ec2_sg" {
    name="ec2_sg"

    ingress {
        from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
ingress {
        from_port = 22
      to_port = 22
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
ingress {
        from_port = 80
      to_port = 80
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

egress {
       from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]

}
 }
      