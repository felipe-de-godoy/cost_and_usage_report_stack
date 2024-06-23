# AWS Cost and Usage Report Automation with CloudFormation

## Introduction

This project automates the setup of the AWS Cost and Usage Report (CUR) using AWS CloudFormation. The stack creates an S3 bucket for storing the reports, configures CUR to export data in Parquet format, and sets up AWS Glue and Athena for querying the data.

With this setup, you can efficiently track and manage your AWS costs, utilizing services like S3, Glue, Athena, and IAM.

## Folder Structure

```

project_folder

project_folder
│
├── cloudformation
│ ├── MasterTemplate.yaml # Combined CloudFormation template
│
├── athena
│ ├── YourCURReport-create-table.sql # The query created by aws
│ ├── example_query.sql # Example SQL query for Athena
│
├── README.md
```

## Pre-requisites

Before you start, ensure you have:

- An AWS account

- AWS CLI installed and configured

- Appropriate permissions to create AWS resources (S3, Athena, Glue, CUR)

## Deployment Steps

### 1. Create an S3 Bucket

First, create an S3 bucket where your CloudFormation templates and CUR reports will be stored:

```bash

aws s3 mb s3://your-cur-reports-bucket-fg --region us-east-1

```

### 4. Deploy CloudFormation Stack

Use AWS CLI to deploy the master template:

```bash

aws cloudformation create-stack --stack-name your-cur-stack2 --template-body file://cloudformation/MasterTemplate.yaml --capabilities CAPABILITY_NAMED_IAM

```

## Conclusion

This project automates the setup of the AWS Cost and Usage Report, making it easy to manage and analyze your AWS expenses. By leveraging CloudFormation, you ensure that your infrastructure is created in a repeatable and reliable manner.

For any further customization, feel free to modify the individual CloudFormation templates and re-deploy as needed.

## Contributing

Please fork the repository and create pull requests for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
