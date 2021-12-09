module "ec2" {

  source = "../Modules"

  region = "us-west-2"

  availability_zones = "us-west-2a"

  ami = "ami-0142f6ace1c558c7d"

  instance_type = "t2.micro"


  }