combination of Docker and Terraform to create a magic.

Prerequisite: No prior knowledge of Terraform required since we will be doing everything from scratch but you need to know the basics of Docker though.

divided into following parts to make it easier:

Setup sample hello world project with Dockerfile and also build the image of it
Create configuration file for Docker provider to be used by Terraform
Create the Docker resources using Terraform to get the containers running
Test the whole setup for the local machine


commands to build: 
1- Dockerfile is ready to be built into the Docker image. Let’s build the image locally, so that we can use it with Terraform, with the following command:

 $ docker build -t hello_world_app .

2. Create configuration file for Docker provider to be used by Terraform

3. Create the Docker resources using Terraform to get the containers running

terraform init
terraform plan
terraform apply 

4. Test the whole setup for the local machine
- project running at localhost:8080