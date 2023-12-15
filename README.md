# Terraform AWS Infrastructure

## Overview

This repository contains Terraform code for creating an AWS VPC with public subnets, an Internet Gateway, and associated route tables. The infrastructure is defined using HashiCorp Configuration Language (HCL) in Terraform.

## Prerequisites

Before using this Terraform configuration, make sure you have the following prerequisites:

- [Terraform](https://www.terraform.io/downloads.html) installed.
- AWS credentials set up with appropriate permissions.
- AWS CLI configured with the desired profiles.

## Configuration

### Variables

The following variables can be customized in the `variables.tf` file:

- `vpc_cidr_block`: CIDR block for the VPC.
- `public_subnet_cidr_blocks`: List of CIDR blocks for public subnets.
- `availability_zones`: List of AWS availability zones.

### Providers

This configuration uses multiple AWS profiles. You can use our own profiles.

## Usage

1. Clone the repository:

   ```bash
   git clone https://github.com/nyilinhtut1994/Creating_VPC_On_AWS_With_Terraform.git

2. Initialize Terraform:

    ```bash
    terraform init

3. Review the plan:

    ```bash
    terraform plan 

4. Apply the changes:

    ```bash
    terraform apply 

Enter 'yes' when prompted.

##  Outputs

After applying the Terraform configuration, you can obtain the following outputs:

* `vpc`: VPC ID.
* `igw`: Internet Gateway ID.
* `route_table`: Main Route Table ID.

## Cleanup

To destroy the infrastructure created by Terraform, run:

    terraform destroy 

Enter 'yes' when prompted.

## Contributing

Feel free to contribute by opening issues or submitting pull requests.