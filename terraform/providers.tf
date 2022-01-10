provider "aws" {
  default_tags {
    tags = {
      Automation  = "terraform"
      Environment = "dev"
      Owner       = "xee5ch"
    }
  }
}