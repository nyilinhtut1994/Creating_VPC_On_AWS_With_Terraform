# Terraform AWS VPC Configuration

* Note : 
This Terraform configuration creates an AWS Virtual Private Cloud (VPC) with associated resources, including subnets, an Internet Gateway, and a custom route table. The custom route table is also set as the main route table for the VPC.

## Prerequisites

Make sure you have the following prerequisites installed on your machine:

- [Terraform](https://www.terraform.io/downloads.html)
- [AWS CLI](https://aws.amazon.com/cli/)

## Configuration Overview

The Terraform configuration is organized into the following files:

- `main.tf`: Defines the AWS provider, VPC, Internet Gateway, Route Table, Subnets, and associated resources.
- `variables.tf`: Can be used to declare input variables.
- `outputs.tf`: Defines the output variables to display information after Terraform applies the configuration.
- `versions.tf`: Specifies the required Terraform version.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/nyilinhtut1994/Creating_VPC_On_AWS_With_Terraform.git
    cd your-terraform-vpc
    ```

2. Initialize the Terraform configuration:

    ```bash
    terraform init
    ```

3. Review the configuration parameters in `main.tf` and `variable.tf` and update them according to your requirements.

4. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

5. Confirm the changes and let Terraform create the VPC and associated resources.

## Resources Created

- **VPC**: Defines the main networking container for AWS resources.
- **Internet Gateway**: Provides a gateway to the internet for resources within the VPC.
- **Route Table**: Manages the routes for the VPC's subnets.
- **Subnets**: Logical subdivisions within the VPC associated with specific availability zones.

## Outputs

- **VPC ID**: The ID of the created VPC.
- **Internet Gateway ID**: The ID of the created Internet Gateway.
- **Route Table ID**: The ID of the custom route table associated with the VPC.
- **Subnet IDs**: List of IDs for the created subnets.

## Additional Notes

- Make sure to customize the configurations in `main.tf` according to your specific use case, including VPC CIDR block, subnet CIDR blocks, and other parameters.

- Always be cautious when making changes to networking configurations, especially in a production environment. Confirm the changes before applying them.

- This README assumes basic familiarity with Terraform and AWS concepts. Refer to the Terraform documentation and AWS documentation for more details.

## License

This Terraform configuration is licensed under the [MIT License](LICENSE).


