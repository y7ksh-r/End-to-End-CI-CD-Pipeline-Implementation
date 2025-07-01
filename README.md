# End-to-End CI/CD Pipeline Implementation

## Overview
• Implemented End to End CI/CD Pipeline for a N-Tier Architecture Microservice Application. This Application comprises of 3 Microservices, each written in a different language, and there is a Redis for Caching and MySQL Database for storing the User Information.
• Created the pipeline for Python, .NET, and Java Applications using Azure CI Pipelines and deployed the microservices onto the Azure Kubernetes Service(AKS) using Argo CD.
• Experience in implementing advanced CD architecture using GitOps and deploying services for every change that is created in the Azure repo.

## Tech Stack Used

• Azure Cloud - Resource groups, Virtual Machine(VM) for running the agent pool required for the pipelines, AKS (Azure Kubernetes Service),ACR(Azure Container Registry) for storing microservice containers ,VMSS, 
• Azure DevOps - Repository for storing the project, Pipelines(CI)
• GitOps & ArgoCD - used for CD pipelines which monitors the changes on the Repos and update those changes on the AKS cluster 
• Shell Scripting - used for creating a script such that any changes occurs in the Repo, the CI pipeline will update the Repo and push it to ACR while the Script picks up the new updated Container and updates it to the K8sManifest Files

## Working of the Project

![Uploading WhatsApp Image 2025-07-01 at 12.57.01_90b6057d.jpg…]()




