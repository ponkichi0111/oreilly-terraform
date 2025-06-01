provider "aws" {
  region  = "ap-northeast-1"
  profile = "dev"
}

module "webserver-cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name           = "webservices-stage"
  db_remote_state_bucket = "terraform-state-hiroyuki-2025-05-31"
  db_remote_stae_key     = "stage/data-stores/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}