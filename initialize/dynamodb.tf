# -----------------------------------------------
# Dynamodb Table: Devices
# -----------------------------------------------
resource "aws_dynamodb_table" "devices" {
  provider = "aws.oregon"

  name           = "${local.project_name_uc}_Devices"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "endpointId"

  attribute {
    name = "endpointId"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table_item" "tv_device" {
  provider = "aws.oregon"

  table_name = "${aws_dynamodb_table.devices.name}"
  hash_key   = "${aws_dynamodb_table.devices.hash_key}"

  item = "${file("${path.module}/json/tv_device.json")}"
}

resource "aws_dynamodb_table_item" "light_device" {
  provider = "aws.oregon"

  table_name = "${aws_dynamodb_table.devices.name}"
  hash_key   = "${aws_dynamodb_table.devices.hash_key}"

  item = "${file("${path.module}/json/light_device.json")}"
}

# -----------------------------------------------
# Dynamodb Table: Status
# -----------------------------------------------
resource "aws_dynamodb_table" "status" {
  provider = "aws.oregon"

  name           = "${local.project_name_uc}_Status"
  billing_mode   = "PROVISIONED"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "endpointId"

  attribute {
    name = "endpointId"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_dynamodb_table_item" "tv_status" {
  provider = "aws.oregon"

  table_name = "${aws_dynamodb_table.status.name}"
  hash_key   = "${aws_dynamodb_table.status.hash_key}"

  item = "${file("${path.module}/json/tv_status.json")}"
}

resource "aws_dynamodb_table_item" "light_status" {
  provider = "aws.oregon"

  table_name = "${aws_dynamodb_table.status.name}"
  hash_key   = "${aws_dynamodb_table.status.hash_key}"

  item = "${file("${path.module}/json/light_status.json")}"
}
