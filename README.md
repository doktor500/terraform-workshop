# terraform-workshop-app

### Setup:

#### Install terraform (Mac OS X using brew)

	brew install terraform

#### Install terraform (Ubuntu Linux)

	sudo apt-get install unzip
	wget https://releases.hashicorp.com/terraform/0.11.1/terraform_0.11.1_linux_amd64.zip
	sudo mv terraform /usr/local/bin/

#### Create the AWS credentials file

	touch ~/.aws/credentials

#### Edit the `credentials` file with the following content (replacing the variables)

	[default]
	aws_access_key_id = $AWS_ACCESS_KEY_ID
	aws_secret_access_key = $AWS_SECRET_ACCESS_KEY

#### Create the variables file

	terraform/terraform.tfvars

#### Edit the `terraform.tfvars` file with the following content (replacing the variables)

	S3_BUCKET = "terraform-workshop-app-state-$USERNAME"
	DOCKER_USER = "$DOCKER_USER"
	DOCKER_IMAGE = "$DOCKER_IMAGE"
