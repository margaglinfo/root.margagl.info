module "margaglinfo" {
  source        = "git::https://github.com/cloudposse/terraform-aws-iam-user.git?ref=tags/0.1.1"
  name          = "margaglinfo"
  pgp_key       = "keybase:margaglinfo"
  groups        = "${local.admin_groups}"
  force_destroy = "true"
}

output "margaglinfo" {
  description = "Decrypt command"
  value       = "${module.margaglinfo.keybase_password_decrypt_command}"
}
