output "app_ip" {
  value = "${aws_instance.app_instance.public_ip}"
}
