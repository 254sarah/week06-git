resource "aws_lightsail_instance" "server1" {
 name = "dev-server" 
 blueprint_id = "ubuntu_18_04"
 bundle_id = "medium_1_0"
 availability_zone = "us-east-1a"
 user_data = <<-EOF
              #!/bin/bash
              apt-get update -y
              apt-get install apache2 -y
              systemctl start apache2
              systemctl enable apache2
              EOF

}