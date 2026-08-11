# Deploy on everything

This repository ships ready-to-run deployment workflows for every major platform — the same spread GitHub's Actions template gallery (`/actions/new?category=deployment`) offers. Every workflow triggers manually (`workflow_dispatch`), so nothing deploys until you run it.

| Platform | Workflow | Secrets required |
|---|---|---|
| alibaba-cloud-fc | `.github/workflows/deploy-alibaba-cloud-fc.yml` | ALIBABA_ACCESS_KEY_ID, ALIBABA_ACCESS_KEY_SECRET |
| aws-amplify | `.github/workflows/deploy-aws-amplify.yml` | AWS_ROLE_TO_ASSUME, AMPLIFY_APP_ID |
| aws-codedeploy | `.github/workflows/deploy-aws-codedeploy.yml` | AWS_ROLE_TO_ASSUME, CODEDEPLOY_BUCKET |
| aws-ecr | `.github/workflows/deploy-aws-ecr.yml` | AWS_ROLE_TO_ASSUME |
| aws-ecs | `.github/workflows/deploy-aws-ecs.yml` | AWS_ROLE_TO_ASSUME |
| aws-eks | `.github/workflows/deploy-aws-eks.yml` | AWS_ROLE_TO_ASSUME |
| aws-elasticbeanstalk | `.github/workflows/deploy-aws-elasticbeanstalk.yml` | AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY |
| aws-lambda | `.github/workflows/deploy-aws-lambda.yml` | AWS_ROLE_TO_ASSUME |
| aws-s3 | `.github/workflows/deploy-aws-s3.yml` | AWS_ROLE_TO_ASSUME, S3_BUCKET, CLOUDFRONT_DISTRIBUTION_ID |
| azure-aks | `.github/workflows/deploy-azure-aks.yml` | AZURE_CREDENTIALS |
| azure-container-apps | `.github/workflows/deploy-azure-container-apps.yml` | AZURE_CREDENTIALS, AZURE_CONTAINER_IMAGE |
| azure-functions | `.github/workflows/deploy-azure-functions.yml` | AZURE_CREDENTIALS, AZURE_FUNCTIONS_PUBLISH_PROFILE |
| azure-static-web-apps | `.github/workflows/deploy-azure-static-web-apps.yml` | AZURE_STATIC_WEB_APPS_API_TOKEN |
| azure-webapp | `.github/workflows/deploy-azure-webapp.yml` | AZURE_CREDENTIALS, AZURE_WEBAPP_PUBLISH_PROFILE |
| cloud-foundry | `.github/workflows/deploy-cloud-foundry.yml` | CF_API, CF_USERNAME, CF_PASSWORD, CF_ORG, CF_SPACE |
| cloudflare-pages | `.github/workflows/deploy-cloudflare-pages.yml` | CLOUDFLARE_API_TOKEN, CLOUDFLARE_ACCOUNT_ID |
| deno-deploy | `.github/workflows/deploy-deno-deploy.yml` | DENO_DEPLOY_TOKEN |
| digitalocean-app-platform | `.github/workflows/deploy-digitalocean-app-platform.yml` | DIGITALOCEAN_ACCESS_TOKEN |
| dockerhub | `.github/workflows/deploy-dockerhub.yml` | DOCKERHUB_USERNAME, DOCKERHUB_TOKEN |
| firebase-functions | `.github/workflows/deploy-firebase-functions.yml` | FIREBASE_SERVICE_ACCOUNT |
| firebase-hosting | `.github/workflows/deploy-firebase-hosting.yml` | FIREBASE_SERVICE_ACCOUNT |
| fly-io | `.github/workflows/deploy-fly-io.yml` | FLY_API_TOKEN |
| gcp-app-engine | `.github/workflows/deploy-gcp-app-engine.yml` | GCP_WORKLOAD_IDENTITY_PROVIDER, GCP_SERVICE_ACCOUNT |
| gcp-cloud-run | `.github/workflows/deploy-gcp-cloud-run.yml` | GCP_WORKLOAD_IDENTITY_PROVIDER, GCP_SERVICE_ACCOUNT |
| gcp-functions | `.github/workflows/deploy-gcp-functions.yml` | GCP_WORKLOAD_IDENTITY_PROVIDER, GCP_SERVICE_ACCOUNT |
| gcp-gke | `.github/workflows/deploy-gcp-gke.yml` | GCP_WORKLOAD_IDENTITY_PROVIDER, GCP_SERVICE_ACCOUNT |
| ghcr | `.github/workflows/deploy-ghcr.yml` | none (GITHUB_TOKEN) |
| github-pages | `.github/workflows/deploy-github-pages.yml` | none (built-in) |
| heroku | `.github/workflows/deploy-heroku.yml` | HEROKU_API_KEY, HEROKU_EMAIL |
| koyeb | `.github/workflows/deploy-koyeb.yml` | KOYEB_TOKEN |
| kubernetes | `.github/workflows/deploy-kubernetes.yml` | KUBE_CONFIG |
| netlify | `.github/workflows/deploy-netlify.yml` | NETLIFY_AUTH_TOKEN, NETLIFY_SITE_ID |
| railway | `.github/workflows/deploy-railway.yml` | RAILWAY_TOKEN |
| render | `.github/workflows/deploy-render.yml` | RENDER_API_KEY, RENDER_SERVICE_ID |
| ssh | `.github/workflows/deploy-ssh.yml` | SSH_HOST, SSH_USER, SSH_PRIVATE_KEY, SSH_PORT |
| surge | `.github/workflows/deploy-surge.yml` | SURGE_DOMAIN, SURGE_TOKEN |
| vercel-edge-config | `.github/workflows/deploy-vercel-edge-config.yml` | VERCEL_TOKEN |
| vercel | `.github/workflows/deploy-vercel.yml` | VERCEL_TOKEN, VERCEL_ORG_ID, VERCEL_PROJECT_ID |

To deploy: open the **Actions** tab, pick a platform workflow, **Run workflow**, and add the secrets listed in the table. Every workflow is `workflow_dispatch` — nothing runs on push without you.
