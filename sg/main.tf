resource "aws_security_group" "entry" {
  name        = "entry"
  description = "Allow NO inbound traffic"
  vpc_id      = "${local.vpc_id}"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

output "entry" {
  value = "${aws_security_group.entry.id}"
}
