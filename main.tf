provider "aws" {
    region = var.server_region


}


resource "aws_lightsail_instance" "nodejsite" {
  name              = "nodejsite"
  availability_zone = var.availability_zone
  blueprint_id      = "nodejs"
  bundle_id         = var.bundles
  key_pair_name     = aws_lightsail_key_pair.key_pair.id
  tags = {
    Name = "NodeJswebsite"
  }

    


}

resource "aws_lightsail_key_pair" "key_pair" {
  name = "lg_key_pair"
}




resource "aws_lightsail_static_ip" "static-ip" {
  name = "static-ipforwebsite"
}

resource "aws_lightsail_static_ip_attachment" "attach" {
  static_ip_name = aws_lightsail_static_ip.static-ip.id
  instance_name  = aws_lightsail_instance.nodejsite.id
}