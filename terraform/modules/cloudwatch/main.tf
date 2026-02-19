resource "aws_cloudwatch_log_group" "strapi" {
  name = "/ecs/jaspal-task8-strapi"
  retention_in_days = 7
}
