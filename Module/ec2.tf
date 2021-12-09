provider "aws" {

    region = "${var.region}"

    }

resource "aws_instance" "ec2_pro" {

    availability_zone = "${var.availability_zones}"

    ami ="${var.ami}"

    instance_type = "${var.instance_type}"

    key_name = "oregon_iam_key"


    tags = {

        Name = "Production_Server"


        }

    security_groups= ["${aws_security_group.ProductionSecurityGroup.name}"]   

    }




resource "aws_security_group" "ProductionSecurityGroup" {

     name="ProductionSecurityGroup"



    ingress {

        from_port = 22

        to_port = 22

        protocol = "tcp"

        cidr_blocks = ["0.0.0.0/0"]

     }

    ingress {

        from_port = 8080

        to_port = 8080

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



