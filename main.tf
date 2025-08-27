 resource "aws_instance" "ec2-instance1" {
   ami = "ami-00ca32bbc84273381"
   instance_type = "t2.micro"

   tags = {                                
     Name = "demo-server1"
}
}


resource "aws_instance" "ec2-Instance2" {
  provider      = aws.west
  ami           = "ami-00ca32bbc84273381"  # AMI for us-west-1
  instance_type = "t2.micro"

  tags = {                                
    Name = "demo-server2"
}
}