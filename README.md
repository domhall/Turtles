# Turtles
This repository was created by terraform to host itself

## Get your own turtles
1. Clone this repository
2. `cd github`
2. Configure the remote state
    - Note: you can run without s3 by commenting out backend.tf and run with local state
    1. Make sure your current AWS_PROFILE is the one with your state bucket
    2. Create a state bucket and update the name in backend.tf
3. `terraform init`
3. `terraform apply`
4. Enter your token (or use secrets.auto.tfvars)
5. `./add-remote.sh`

And now you have your own turtle repository
