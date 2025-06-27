resource "aws_instance" "project" {
    ami = data.aws_ami.joindevops.id
    vpc_security_group_ids = [aws_security_group.Hacking.id]
    instance_type = "t3.micro"

tags ={
    Name = "single-instance"
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


}