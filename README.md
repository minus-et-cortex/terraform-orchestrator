# Terraform orchestrator

Before starting, first launch [terraform-versioner](https://github.com/minus-et-cortex/terraform-versioner) alone, as this will create the required resource to version future deployments.

Note : [terraform-versioner](https://github.com/minus-et-cortex/terraform-versioner) is not versioned, as it should be only responsible for providing a versioning mechanism.

Once done, no need to deploy each module separatly, instead :

1.  Don't forget `terraform init` as this will delegate the deployment versioning to the remote state lock created by [terraform-versioner](https://github.com/minus-et-cortex/terraform-versioner). You will be asked for the AWS region in the prompt, use the same as provided to every modules.

1.  Then the orchestrator changes will version the whole architecture (a.k.a all modules) remotely.

Note: your AWS credentials will automatically be retrieved by Terraform as long as there are located in `~/.aws/credentials` (under `[default]` section).