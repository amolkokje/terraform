# --------------------------------
# Resources
# --------------------------------

resource "aws_instance" "test-ec2-instance" {
    ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-test"
    }
}
