# create a security group to define who can access our server

resource "aws_security_group" "http_server_sg" {
  name = "http_server_sg"
  

  vpc_id = "vpc-0cc5b6088aa62952b"

  #define how the server can be accessed
  ingress {
    from_port = 80 #http access
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"] #allow traffic from any ip address (any location in the world)
  }

  ingress {
    from_port = 22 #ssh access
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #define how traffic can be directed outward
  egress {
    from_port = 0 #access from any port
    to_port = 0
    protocol = -1 #anything goes. 
    cidr_blocks = ["0.0.0.0/0"]
  }
}