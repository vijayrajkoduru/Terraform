resource "aws_route53_record" "practice" {
    for_each = aws_instance.project
    zone_id = var.zone_id
    name    = "${each.key}.${var.domain_name}"
    type    = "A"
    ttl     = 1
    records = [each.value.private_ip]
    allow_overwrite = true
}


