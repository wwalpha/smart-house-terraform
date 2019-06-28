# # -----------------------------------------------
# # Amazon S3 (画像保存用)
# # -----------------------------------------------
# resource "aws_s3_bucket" "images" {
#   bucket = "${local.bucket_name_images}"
#   acl    = "private"

#   lifecycle_rule {
#     enabled = true

#     // 7日後削除
#     expiration {
#       days = 7
#     }
#   }
# }
