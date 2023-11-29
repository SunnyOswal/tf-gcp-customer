# Prerequistes for this repo:

## Repo Secret
+ This will be used to clone base repo.
+ Create `Repository Secret` called `GH_TOKEN` and add your Github PAT as value for the secret.

## Customer Environment
+ This will be per customer where we can restrict branches and create secrets for that customer.
+ In below screenshot, `customer1` branch is only allowed to deploy to `customer1` env which uses `customer1` google credentials.

![image](https://github.com/SunnyOswal/tf-gcp-customer/assets/19683199/5b6cda24-17d9-452e-b4c2-dc76544865ca)

 ## Customer Environment GCP Secret
+ This will be used to auth to gcp.
+ In your customer env, Create `Environment Secret` called `GOOGLE_CREDENTIALS` and add your service account key json as value for the secret.
![image](https://github.com/SunnyOswal/tf-gcp-customer/assets/19683199/db952cf8-40ca-4f62-925d-fbdbe09a6df3)

# Automation
+ Github action workflow file : https://github.com/SunnyOswal/tf-gcp-customer/blob/main/.github/workflows/workflow.yml

# Customer Deployment Trigger
+ Create a local branch (use same name as the environment name used above in prerequistes)
+ Create provider.tf, backend.tf and `Customer.tfvars` (use same name , do not change)
+ Commit and push local branch to remote and it will trigger the terraform pipeline.
