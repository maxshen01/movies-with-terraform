#specify what information needs to be outputed in logs after apply. Also
# will be at the top of the terraform state. 
output "my_iam_user_complete_details" {
  value = aws_iam_user.my_iam_user #grab values by specifying resource then internal name
}

#output ec2-ip address
output "http_server_ip_address" {
  value = aws_instance.http_servers[*].*.public_ip
}
