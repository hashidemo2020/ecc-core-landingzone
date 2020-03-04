output "vpc_id" {
  value = module.ecclandingzone.vpc_id
}

output "vpc_cidr" {
  value = module.ecclandingzone.vpc_cidr
}

output "bu1_services_subnet_id_v1" {
  value = aws_subnet.bu1_services.id
}

output "bu1_database_subnet_id_v1" {
  value = aws_subnet.bu1_database.id
}

#output "bu1_database_subnet_group_id" {
#  value = aws_db_subnet_group.bu1_database_group.id
#}

#output "bu2_services_subnet_id_v1" {
#  value = aws_subnet.bu2_services.id
#}

#output "bu2_database_subnet_id_v1" {
#  value = aws_subnet.bu2_database.id
#}

#output "bu1_services_subnet_id_v2" {
#  value = aws_subnet.bu1_services_v2.id
#}

#output "bu1_database_subnet_id_v2" {
#  value = aws_subnet.bu1_database_v2.id
#}

