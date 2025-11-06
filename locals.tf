locals {
  comman_tags={
    Name = var.project_name
    environment = var.environment
    Terraform = true
  }

    comman_name_suffix = "${var.project_name}-${var.environment}"
    az_names = slice(data.aws_availability_zones.available.names, 0, 2)
}