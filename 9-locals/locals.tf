locals {
  final_name = "${var.project}-${var.environment}-${var.commponent}"
  ec2_tags = merge(
    var.commn_tags,
    {
        environment = "dev",
        version = "1.0"

    }

  )
}