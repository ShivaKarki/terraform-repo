variable "AZURE_AD_CLIENT_ID" {
  type = string
  sensitive = true
  default=  "ea020ec2-a950-4418-a353-2d70a8aedd9e"
  
}


variable "AZURE_AD_CLIENT_SECRET" {
  type = string
  sensitive = true
  default= "bMu8Q~iGJv3x0MKFBr055qSme6LDlebzPCx2vb6o"
}



variable "AZURE_SUBSCRIPTION_ID" {
  type = string
  sensitive = true
  default= "a54b6fd0-015e-4f77-a123-3ba3e93a64d8"
}



variable "AZURE_AD_TENANT_ID" {
  type = string
  sensitive = true
  default= "4569bf05-cab0-4330-93f8-4e8563c99907"
}
