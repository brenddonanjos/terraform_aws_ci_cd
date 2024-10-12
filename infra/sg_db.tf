# resource "aws_security_group" "tperson_db_sg" {
#   name        = "tperson_db_sg"
#   description = "Allow Tperson APP DB inbound traffic and all outbound traffic"
#   vpc_id      = aws_default_vpc.default.id

#   tags = {
#     Name = "tperson_db_sg"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "tperson_db_allow_mysql" {
#   security_group_id = aws_security_group.tperson_db_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 3306
#   ip_protocol       = "tcp"
#   to_port           = 3306
# }

# resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4_mydb" {
#   security_group_id = aws_security_group.tperson_db_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }