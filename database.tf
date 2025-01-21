resource "aws_db_instance" "computex" {
  allocated_storage    = 10
  db_name              = "computex"
  engine               = "postgres"
  engine_version       = "13.16" # Replace with a valid version
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"          # Use secrets for sensitive information
  parameter_group_name = "default.postgres13" # Match engine version
  skip_final_snapshot  = true
}