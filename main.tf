resource "aws_instance" "inst1" {
  #count         = 1
  ami           = "ami-06e46074ae430fba6"
  instance_type = "t2.micro"
  
  tags = {
    Name = "my_comp"
  }

}
