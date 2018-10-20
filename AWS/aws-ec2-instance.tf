# --------------------------------
# Resources
# --------------------------------

resource "aws_instance" "test-ec2-instance" {
    ami           = "${lookup(var.AMIS, var.AWS_REGION)}"
    instance_type = "${var.ec2_instance_type}"
    tags = {
        Name = "amol-terraform-test"
    }
}
