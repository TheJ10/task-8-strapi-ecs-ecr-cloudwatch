module "ecs_jaspal_task8" {
  source = "./modules/ecs"

  image_tag           = var.image_tag
  ecr_repository_url = module.ecr_jaspal_task8.repository_url
  execution_role_arn = var.execution_role_arn
  subnet_ids          = var.subnet_ids

  db_host     = module.rds_jaspal_task7.db_endpoint
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}

module "rds_jaspal_task7" {
  source     = "./modules/rds"
  subnet_ids = var.subnet_ids

  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}

module "ecr_jaspal_task8" {
  source = "./modules/ecr"
}

module "cloudwatch_jaspal_task8" {
  source = "./modules/cloudwatch"
}
