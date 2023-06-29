module "vpc" {
  source = "git::https://github.com/meghasyam1997/tf-module-vpc.git"

  for_each = var.vpc
  cidr_block = each.value["cidr_block"]
  subnets = each.value["subnets"]
  env = var.env
  tags = local.tags

}