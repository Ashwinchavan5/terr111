resource "aws_instance" "one" {
ami = "ami-01a4f99c4ac11b03c"
instance_type = "t2.medium"
key_name = "terra"
vpc_security_group_ids = [aws_security_group.three.id]
availability_zone = "ap-south-1a"
user_data = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "haii all this is my website created by terraform infrastructure by sir server-2" > /var/www/html/index.html
EOF
tags = {
Name = "swiggy-01"
}
}
resource "aws_instance" "two" {
ami = "ami-01a4f99c4ac11b03c"
instance_type = "t2.medium"
key_name = "terra"
vpc_security_group_ids = [aws_security_group.three.id]
availability_zone = "ap-south-1b"
user_data = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "haii all this is my website created by terraform infrastructure by sir server-2" > /var/www/html/index.html
EOF
tags = {
Name = "swiggy-02"
}
}
