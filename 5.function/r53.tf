resource "aws_route53_record" "practice" {
    count = length(var.instances)# this shoild me give here
    zone_id = var.zone_id
    name    = "${var.instances[count.index]}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [aws_instance.project[count.index].private_ip]
    allow_overwrite = true
}