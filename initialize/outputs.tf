# -----------------------------------------------
# Project Informations
# -----------------------------------------------
output "region" {
  value = "${var.region}"
}
output "project_name" {
  value = "${local.project_name}"
}
output "project_name_uc" {
  value = "${local.project_name_uc}"
}
output "alexa_app_id" {
  value = "${var.alexa_app_id}"
}
output "dynamodb_devices_arn" {
  value = "${aws_dynamodb_table.devices.arn}"
}
output "dynamodb_devices_name" {
  value = "${aws_dynamodb_table.devices.name}"
}
output "dynamodb_status_arn" {
  value = "${aws_dynamodb_table.status.arn}"
}
output "dynamodb_status_name" {
  value = "${aws_dynamodb_table.status.name}"
}
