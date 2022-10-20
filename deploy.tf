module "cargarage" {
    source = "./deployment"
    application_name = "cargarage"
    application_version = "ea26446"
    artifact_bucket = "aws-terraform-cicd-java-springboot-deploy-bucket"
    worker_ami = "ami-01c907a9b51818bd9"
    instance_profile = "allow_s3_ec2_github_demo"
    backend_port = 8080
    subnets = [
    {
      az     = "us-east-1a",
      prefix = "10.1.1.0/24"
    },
    {
      az     = "us-east-1b",
      prefix = "10.1.2.0/24"
    },
    {
      az     = "us-east-1c",
      prefix = "10.1.3.0/24"
    }
  ]
}
