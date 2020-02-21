module "ecclandingzone" {
  source  = "app.terraform.io/FMR_ECC_CORE/ecclandingzone/aws"
  version = "1.0.0"

  aws_region = var.aws_region
  cidr_block  = "10.0.0.0/16"
  default_tags = var.default_tags
}

resource "aws_subnet" "bu1_services" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = "10.0.1.0/24"
  tags = var.default_tags
}

resource "aws_subnet" "bu1_database" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = "10.0.2.0/24"
  tags = var.default_tags
}

resource "aws_subnet" "bu2_services" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = "10.0.3.0/24"
  tags = var.default_tags
}

resource "aws_subnet" "bu2_database" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = "10.0.4.0/24"
  tags = var.default_tags
}

resource "aws_subnet" "bu1_services_v2" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = "10.0.5.0/24"
  tags = var.default_tags
}

resource "aws_subnet" "bu1_database_v2" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = "10.0.6.0/24"
  tags = var.default_tags
}

