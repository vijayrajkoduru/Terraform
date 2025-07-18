resource "aws_instance" "project" {
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.Hack-out.id]
    instance_type = var.instance_type
    
tags ={
    Name = "instance"
}
}

resource "aws_security_group" "Hack-out" {
    name = "Hack-out"
    

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