
This Terraform code is to create VPC flow logs
==============================================

It's assumed that AWS VPC is already created in AWS.

If you are not familiar with AWS VPC flow logs, Please check the AWS Documentation how to create VPC flow logs.

For Terraform Guide, please refer the following link:
https://www.terraform.io/docs/providers/aws/r/flow_log.html

This terraform code creates the VPC flow logs based on VPC id which is currently active in your AWS region.

It uses the default IAM role arn for flow log role.

Once the flow log group is created it it starts forwarding all VPC flow logs to AWS cloudwatch.

Variables
=========
  aws_iam_role_arn : Default IAM role arn for flow log role. (You can modify the this paramater, based your requirement)

  aws_vps_region : it checks the AWS region where VPC is deployed.

  aws_vpcs : aws_vpc provides details about a specific VPC.
  (Please check following link for more details: https://www.terraform.io/docs/providers/aws/d/vpc.html )
