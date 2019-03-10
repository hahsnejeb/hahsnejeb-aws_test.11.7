resource "aws_instance" "app-1" {
  ami           = "${var.ami_amazon}"
  instance_type = "${var.instance_type}"
  associate_public_ip_address = 1
  key_name = "${var.key}"
  subnet_id = "${local.subnet-1}"
  security_groups = ["${data.terraform_remote_state.sg.entry}"]
  tags = {
    Name = "app-1"
  }
}
output "private_ip" {
  value = ["${aws_instance.app-1.*.private_ip}"]
}
output "public_ip" {
  value = ["${aws_instance.app-1.*.public_ip}"]
}
