module "ecclandingzone" {
  source  = "app.terraform.io/FMR_ECC_CORE/ecclandingzone/aws"
  version = "1.0.0"

  aws_region = var.aws_region
  cidr_block  = var.vpc_cidr_block
  default_tags = var.default_tags
}

resource "aws_subnet" "bu1_services" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = var.bu1_services_subnet_cidr
  tags = var.default_tags
}

resource "aws_subnet" "bu1_database" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = var.bu1_database_subnet_cidr
  tags = var.default_tags
}

resource "aws_db_subnet_group" "bu1_database_group" {
  name       = "bu1_database"
  subnet_ids = [aws_subnet.bu1_database.id]
  tags = var.default_tags
}



resource "aws_subnet" "bu2_services" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = var.bu2_services_subnet_cidr
  tags = var.default_tags
}

resource "aws_subnet" "bu2_database" {
  vpc_id     = module.ecclandingzone.vpc_id
  cidr_block = var.bu2_database_subnet_cidr
  tags = var.default_tags
}