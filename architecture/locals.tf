locals {
  # -----------------------------------------------
  # Project Informations
  # -----------------------------------------------
  remote_init = "${data.terraform_remote_state.init.outputs}"

  project_name    = "${local.remote_init.project_name}"
  project_name_uc = "${local.remote_init.project_name_uc}"
  region          = "${local.remote_init.region}"
  region_us2      = "us-west-2"

  lambda_handler = "index.handler"
  lambda_runtime = "nodejs10.x"

  # prefix                = ""
  # bucket_name_images    = "${local.prefix}${local.project_name}-images"
  # bucket_name_audio     = "${local.prefix}${local.project_name}-mp3"
  # bucket_name_web       = "${local.prefix}${local.project_name}-web"
  # bucket_name_artifacts = "${local.prefix}${local.project_name}-artifacts"
  # bucket_name_logging   = "${local.prefix}${local.project_name}-logging"
}

data "aws_iot_endpoint" "this" {}
