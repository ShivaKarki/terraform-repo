terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Kyndryl-Github-Actions-Dev1"


    workspaces {
    name = "Githunb_Actions_demo"
     }
   }
}
