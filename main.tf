resource "aws_lightsail_instance" "server1" {
  name              = "lamp-server"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "medium_1_0"
  availability_zone = "us-east-1a"
  key_pair_name     = aws_lightsail_key_pair.lightsail_key2.name
  user_data         = file("resume.sh")
}