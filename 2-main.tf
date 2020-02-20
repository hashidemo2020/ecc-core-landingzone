module "ecclandingzone" {
  source  = "app.terraform.io/FMR_ECC_CORE/ecclandingzone/aws"
  version = "1.0.0"

  aws_reegion = var.aws_region
  cidr_block  = var.vpc_cidr_block
  default_tags = var.default_tags
}