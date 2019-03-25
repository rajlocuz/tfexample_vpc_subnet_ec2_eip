output "vpc_id" {
  value = "${aws_vpc.tfexample_vpc.id}"
}

output "vpc_cidr" {
  value = "${aws_vpc.tfexample_vpc.cidr_block}"
}

output "vpc_ipv6_cidr" {
  value = "${aws_vpc.tfexample_vpc.ipv6_cidr_block}"
}

output "vpc_ipv6_association" {
  value = "${aws_vpc.tfexample_vpc.ipv6_association_id}"
}

output "subnet_id" {
  value = "${aws_subnet.tfexample_subnet.id}"
}

output "subnet_ipv6_cidr_association" {
  value = "${aws_subnet.tfexample_subnet.ipv6_cidr_block_association_id}"
}

output "tfexample_instance_id" {
  value = "${aws_instance.tfexample_instance.id}"
}

output "tfexample_instance_subnet" {
  value = "${aws_instance.tfexample_instance.subnet_id}"
}

output "tfexample_instance_public_ip" {
  value = "${aws_instance.tfexample_instance.public_ip}"
}

output "tfexample_instance_private_ip" {
  value = "${aws_instance.tfexample_instance.private_ip}"
}

output "tfexample_eip_id" {
  value = "${aws_eip.tfexample_eip.id}"
}

output "tfexample_eip" {
  value = "${aws_eip.tfexample_eip.instance}"
}
