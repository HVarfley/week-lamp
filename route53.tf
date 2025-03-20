resource "aws_route53_record" "rc1" {
  zone_id = "Z102819211JX50BIB7QWN"
  type    = "A"
  ttl     = 300
  name    = "resume.hvarfley.xyz"
  records = [aws_lightsail_instance.server1.public_ip_address]

}