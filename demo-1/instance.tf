resource "aws_instance" "koas-example" {
  ami           = "ami-09282971cf2faa4c9"
  instance_type = "t2.micro"
}
