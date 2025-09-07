1. Create default.pem access keys file for specific location.

2. Give it permissions by running:
`chmod 400 default-ec2.pem`

3. create a new ec2 instance for ansible. make sure to select default-ec2.pem in the keys section and also allow both https and ssh access. 

4. connect via ssh using the button given. you need to be in the same directory ias your default-ec2.pem file. 

5. download ansible and git:

`sudo yum update -y
sudo yum install ansible -y
ansible --version`

6. download terraform:

`sudo yum install -y wget unzip
wget https://releases.hashicorp.com/terraform/1.7.5/terraform_1.7.5_linux_amd64.zip
unzip terraform_1.7.5_linux_amd64.zip
sudo mv terraform /usr/local/bin/
terraform version`

7. export your secret key and access key:

`export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""`

8. copy the default.ec2-pem file over for permissions:

`scp -i ./default-ec2.pem ./default-ec2.pem ec2-user@ec2-3-90-178-139.compute-1.amazonaws.com:/home/ec2-user/`

9. put it in the right folder: 

aws/aws_keys/default-ec2.pem

10. Give it permissions:

`chmod 400 default-ec2.pem`

