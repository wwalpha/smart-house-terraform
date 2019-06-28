# -----------------------------------------------
# Project Informations
# -----------------------------------------------
output "default_client_id" {
  value = "${aws_iot_thing.this.default_client_id}"
}
output "alexa_app_id" {
  value = "${var.alexa_app_id}"
}
output "iot_endpoint" {
  value = "${data.aws_iot_endpoint.this.endpoint_address}"
}
