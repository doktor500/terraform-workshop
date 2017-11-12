resource "aws_instance" "app_instance" {
  ami                         = "${lookup(var.AMIS, var.AWS_REGION)}"
  instance_type               = "${var.AWS_INSTANCE_TYPE}"
  subnet_id                   = "${aws_subnet.main_public.id}"
  vpc_security_group_ids      = ["${aws_security_group.app_securitygroup.id}"]
  key_name                    = "${aws_key_pair.ssh_key.key_name}"
  associate_public_ip_address = true

  provisioner "remote-exec" {
    connection {
      type  = "ssh"
      agent = "true"
      user  = "${var.SSH_USER}"
    }

    inline = [
      "sudo apt-get update > /dev/null",
      "sudo apt-get install -y docker.io > /dev/null",
      "sudo docker run -d -p 80:8080 ${var.DOCKER_USER}/${var.DOCKER_IMAGE}:latest > /dev/null",
    ]
  }

  tags {
    Name = "app"
  }
}
