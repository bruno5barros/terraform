module "qa" {
  source = "../modules/blog"

  environment = {
    name           = "qs"
    network_prefix = "10.1."
  }

  blog_autoscaling = {
    min_size = 1
    max_size = 1
  }
}