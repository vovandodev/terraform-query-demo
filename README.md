# Terraform Search Feature Demo

Demo of Terraform v1.14.0's new `terraform query` command and needed `.tfquery.hcl` files.

## Prerequisites

- Terraform v1.14.0-beta1+
- AWS CLI configured
- SSH public key

## Setup Steps

1. **Edit variables.tf** and add your SSH public key.

2. **Initialize and deploy**:
   ```bash
   terraform init
   terraform apply
   ```

3. **Create demo scenario** (simulate unmanaged resource):
   ```bash
   # First, comment out the Amazon Linux instance in aws_instance.tf
   # Then remove it from Terraform state
   terraform state rm aws_instance.amazon_linux
   ```

4. **Search for instances**:
   ```bash
   # Find all instances
   terraform query
   
   # Search specific instance
   terraform query -var 'keyword=amazon'
   ```

5. **Generate configuration**:
   ```bash
   terraform query -var 'keyword=4d66' -generate-config-out=found.tf
   ```

6. **Clean up generated config** (experimental feature requires manual fixes):
   - Remove: `arn`, `id`, `instance_state`, `availability_zone`
   - Fix: `amd_sev_snp = ""` and conflicting attributes

## What It Creates

- 5 managed EC2 instances (Amazon Linux, Ubuntu, Debian, CentOS, Fedora)
- Security group and key pair

## Key Files

- `aws.tfquery.hcl` - Search query definitions
- `aws_instance.tf` - EC2 instances

## Cleanup

```bash
terraform destroy
```
