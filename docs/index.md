## What is Infrastructure as Code?

I believe Infrastructure as Code is defining/managing infrastructure with more human readable files instead of storing everything in a database for example. The human readable file could a simple YAML file or a Python script with expressions and logic defined in it. These files are more readable in the sense of that a database file is often a binary blob that we can't easily read.

## Why is it useful?

The usefullness comes with the verifiability and automation of these configurations. One set of configuration will always produce the same output. This way, a version control system could act as a single source of truth for the whole infrastructure. Also automating these configurations avoids a lot of manual labor which is error prone.

## How does Terraform fit in?

Terraform fits in the Infrastructure as Code landscape by providing a tool that handles: configuration, deployment and state. The configuration files are human readable, which means it that easily version controllable. Cloud providers can create their own packages and publish them on the Terraform registry so that people can interact with resources of a given provider without doing manual configuration in their dashboard. Terraform also controls the state of the infrastruture. When a resource is deleted from the configuration, Terraform wil make sure that the resource is deleted in the cloud. This ties nicely together when the whole deployment process is automated.
