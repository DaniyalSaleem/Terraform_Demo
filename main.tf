resource "aws_vpc" "mod" {
  cidr_block = "${var.cidr_block}"

  instance_tenancy = "${var.instance_tenancy}"

  enable_dns_support   = "${var.enable_dns_support}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_classiclink   = "${var.enable_classiclink}"

  tags = "${merge(map(
    "Name",        "${format("%s-vpc", var.stack_name)}",
    "StackName",   "${var.stack_name}",
    "Environment", "${var.environment}",
    "Version",     "${var.version}"
  ), var.tags)}"
}
