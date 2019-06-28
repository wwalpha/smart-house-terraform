resource "aws_iot_thing" "this" {
  depends_on = ["aws_iot_thing_type.this"]

  name            = "${local.project_name}-raspberry"
  thing_type_name = "${aws_iot_thing_type.this.name}"
}

resource "aws_iot_thing_type" "this" {
  name = "${local.project_name_uc}-Raspberry"
}

# # resource "aws_iot_certificate" "this" {
# #   csr    = "${file("file.crt")}"
# #   active = true
# # }

resource "aws_iot_policy" "this" {
  name = "${local.project_name_uc}-RaspberryPolicy"

  policy = "${data.aws_iam_policy_document.iot_policy.json}"
}

data "aws_iam_policy_document" "iot_policy" {
  statement {
    actions = [
      "iot:*",
    ]

    effect = "Allow"

    resources = [
      "*",
    ]
  }
}
