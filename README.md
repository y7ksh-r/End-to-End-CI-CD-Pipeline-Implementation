# End-to-End CI/CD Pipeline Implementation

• Implemented End to End CI/CD Pipeline for a N-Tier Architecture Microservice Application. This Application comprises of 3 Microservices, each written in a different language, and there is a Redis for Caching and a MySQL Database for storing the User Information.

• Created the pipeline for Python, .NET, and Java Applications using Azure CI Pipelines and deployed the microservices onto the Azure Kubernetes Service(AKS) using Argo CD.

• Experience in implementing advanced CD architecture using GitOps and deploying services for every change that is created in the Azure repo.

## Tech Stack Used

• **Azure Cloud** - Resource groups, Virtual Machine(VM) for running the agent pool required for the pipelines, AKS (Azure Kubernetes Service),ACR(Azure Container Registry) for storing microservice containers ,VMSS, 

• **Azure DevOps** - Repository for storing the project, Pipelines(CI)

• **GitOps & ArgoCD** - used for CD pipelines that monitor the changes in the Repos and update those changes on the AKS cluster 

• **Shell Scripting** - used for creating a script such that any changes occur in the Repo, the CI pipeline will update the Repo and push it to ACR while the Script picks up the new updated Container and updates it to the K8sManifest Files

## Working of the Project

![RP0_QY~1](https://github.com/user-attachments/assets/29aceeef-6a72-44ed-a95c-29c81e259529)

**CI:**

The Voting App comprises three microservices, so we will create a CI pipeline for each of them, which will detect changes in the microservices and automatically build and push the image to their respective ACRs.

**Script:**

The Script would be responsible for updating the K8sManifests files in the Repo with the latest image created through the CI pipelines

**CD:**

ArgoCD then watches the K8sManifests files. If it catches any updates to them, it redirects those new changes to the nodes, and the updated application gets deployed on the AKS.

## Video Walkthrough of the Project

*Before going through the video, I'm assuming that you have a Valid Azure and Azure DevOps account with the free tier enabled, or else you'll be charged.*

[Click here!](https://youtu.be/B3LlZ0eKZMI)

## Have Doubts?

Contact me through:

[Github](https://github.com/y7ksh-r) | [LinkedIn](https://www.linkedin.com/in/yaksh7/) | [Medium](https://medium.com/@yakshrajput77)  | [Dev.to](https://dev.to/yakshrajput7)



