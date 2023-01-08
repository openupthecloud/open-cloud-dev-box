# Open Cloud Dev Box

Open Cloud Dev Box is a project that makes learning cloud faster, easier and safer. By having a preconfigured, isolated development environment based in a container, and compatible with various cloud-based development environment services like [Gitpod](http://gitpod.io/) + Codespaces you're safe to explore, play and learn the cloud without worrying about breaking your machine. Additionally, configurations include security best practices and standards. 

![Cloud Dev Box Logo](assets/open-cloud-dev-box-graphic.jpg)

## Motivations

1. No more wasted time setting up your environment
2. No more broken environments (isolated environment)
3. Secure, by default (best practice security)
4. Extensible and personalisable

## Getting Started

- [Open in Gitpod](https://gitpod.io/#github.com/openupthecloud/open-cloud-dev-box)
- Open in Codespaces (coming soon)
- Open locally (coming soon)

## Compatibilities

Open Cloud Dev Box is intended to be configured to work across platform / standards:

1. [devcontainer.json](https://code.visualstudio.com/docs/devcontainers/containers)
2. [.gitpod.yml](https://www.gitpod.io/docs/references/gitpod-yml)
3. [devfile](https://devfile.io)
4. [Score Dev](https://score.dev)

Allowing you to make use of both cloud-based development environments + local running container-based environments. 

## Backlog / Roadmap 

### 🏔 Milestone 1: Basic setup for Cloud Bootcamp

Description: Meet requirements of Andrew Brown's Cloud Bootcamp (see [issue](https://github.com/openupthecloud/open-cloud-dev-box/issues/6), and [course outline](https://docs.google.com/document/d/19XMyd5zCk7S9QT2q1_Cg-wvbnBwOge7EgzgvtVCgcz0/edit#heading=h.wkvwyzh618s9)). Other tools can be added in future. 

**Install all necessary tools**

- [x] Setup AWS CLI and AWS Vault
- [x] Install Terraform (https://github.com/openupthecloud/open-cloud-dev-box/pull/7)
- [x] Install kubectl (https://github.com/openupthecloud/open-cloud-dev-box/pull/7)
- [x] Install AWS CLI (https://github.com/openupthecloud/open-cloud-dev-box/pull/7)
- [ ] Install DynamodDB Local (https://github.com/openupthecloud/open-cloud-dev-box/issues/16)
- [ ] Install Momento (https://github.com/openupthecloud/open-cloud-dev-box/issues/15)

**Add compatibility across main cloud providers + local**
- [ ] Add Docker base image support
- [x] Setup flow with Gitpod
- [ ] Setup Codespaces compatibility (https://github.com/openupthecloud/open-cloud-dev-box/issues/18)
- [ ] Setup configuration to work locally with devcontainer (https://github.com/openupthecloud/open-cloud-dev-box/issues/18)

### 🏔 Milestone 2: Improve security posture + developer experience

**Setup secrets management tools**
- [ ] 1Password secrets integration
- [ ] AWS Secrets Manager integration

**Developer Experience**
- [ ] Add VS Code extensions (https://github.com/openupthecloud/open-cloud-dev-box/issues/17)
- [ ] Wizard Configuration Setup
- [ ] Add DevContainer support (https://github.com/openupthecloud/open-cloud-dev-box/issues/18)
