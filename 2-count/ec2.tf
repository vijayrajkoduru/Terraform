resource "aws_instance" "project" {
    count = length(var.instances)
    ami = var.ami_id
    vpc_security_group_ids = []
    instance_type = var.instance_type

tags ={
    Name = var.instances[count.index]
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
        

    }
}