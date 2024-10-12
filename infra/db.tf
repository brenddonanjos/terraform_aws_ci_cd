# resource "aws_db_instance" "tperson_db" {
#     allocated_storage = 10
#     db_name = "tperson"
#     engine = "mysql"
#     engine_version = "8.0"
#     instance_class = "db.t3.micro"
#     username = "tperson_user"
#     password = "tperson_passwd"
#     skip_final_snapshot = true
#     parameter_group_name = "default.mysql8.0"
#     vpc_security_group_ids = [ aws_security_group.tperson_db_sg.id ]
# }