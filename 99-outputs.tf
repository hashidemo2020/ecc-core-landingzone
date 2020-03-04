output "vpc_id" {
  value = module.ecclandingzone.vpc_id
}

output "vpc_cidr" {
  value = module.ecclandingzone.vpc_cidr
}

output "bu1_services_subnet_id" {
  value = aws_subnet.bu1_services.id
}

output "bu1_database_subnet_id" {
  value = aws_subnet.bu1_database.id
}
