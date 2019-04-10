provider "aws" {
  region = "${var.region}"
}

resource "aws_vpc" "tfexample_vpc" {
    cidr_block = "190.0.0.0/16"
    instance_tenancy = "dedicated"

    tags {
      Name = "tfexample_vpc"
      Location = "Bangalore"
    }
}

resource "aws_subnet" "tfexample_subnet" {
    vpc_id = "${aws_vpc.tfexample_vpc.id}"
    cidr_block = "190.0.1.0/24"

    tags {
      Name = "tfexample_subnet"
      Location = "Bangalore"
    }
}

/*resource "aws_network_interface" "tfexample_network" {
  subnet_id   = "${aws_subnet.tfexample_subnet.id}"
  #private_ips = ["190.0.1.10"]

  tags = {
    Name = "tfexample_primary_network_interface"
  }
}
*/
resource "aws_instance" "tfexample_instance" {
    ami = "ami-02bcbb802e03574ba"
    instance_type = "t2.micro"
    /*network_interface {
    network_interface_id = "${aws_network_interface.tfexample_network.id}"
    device_index         = 0
    }*/
    tags {
      Name = "tfexample_instance"
    }
    #subnet_id = "${aws_subnet.tfexample_subnet.id}"
}

resource "aws_eip" "tfexample_eip" {
    instance = "${aws_instance.tfexample_instance.id}"
    associate_with_private_ip = "${aws_instance.tfexample_instance.private_ip}"
    vpc = true
}
