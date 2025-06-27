resource "aws_instance" "project" {
    
    ami = var.ami_id
    vpc_security_group_ids = [aws_security_group.Hacking.id]
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"

tags ={
    Name = var.instances[count.index]
    environment = var.environment
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
        Name = "condition"
        environment = var.environment 
        

    }
}