resource "aws_instance" "project" {
    for_each = toset(var.instances)
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.Hacking.id]
    instance_type = var.instance_type

    tags ={
        Name = each.key
        }
}
resource "aws_security_group" "Hacking" {
    name = "Hacking"

    ingress{
        from_port = 0
        to_port =  0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }
   egress{
        from_port = 0
        to_port =  0
        protocol = "-1"
        cidr_blocks = [ "0.0.0.0/0" ]
    }

    tags={
        Name = "project"
        environment = "DEV"
    }
}