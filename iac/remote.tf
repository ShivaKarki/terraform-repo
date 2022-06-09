terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "Kyndryl-Github-Actions-Dev1"


    workspaces {
    name = "github_action_terraforn_cloud"
     }
   }
}
