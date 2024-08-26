module "vpc" {
  source = "./modules/vpc"

  // 테라폼은 모듈화를 중요시함, 따라서 상위 모듈의 변수를 하위 모듈에서 참조할 경우 명시적으로 변수를 전달해야함
  tags   = var.tags
  region = var.region
  azs    = var.azs
}