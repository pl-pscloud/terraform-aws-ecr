resource "aws_ecr_repository" "pscloud-ecr" {
  name                 = var.pscloud_ecr_name
  image_tag_mutability = var.pscloud_mutable

  image_scanning_configuration {
    scan_on_push       = var.pscloud_scan_on_push
  }

  tags = {
    Name    = "${var.pscloud_company}_ecr_${var.pscloud_env}_${var.pscloud_project}_${var.pscloud_ecr_name}"
    Project = var.pscloud_project
  }
}