
output "ip_address" {
  value       = aws_lightsail_static_ip.static-ip.*.ip_address
  description = "The Ip Address name of the Lightsail instance."
}

