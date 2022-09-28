## What is a pipeline?

I believe a pipeline is set of elements that can be executed in series and/or in parallel. The input of one instruction can depend on the output of the previous one. The input can be the source code of a particular repository. The output can be a release artifact.

## Why are they useful?

These pipelines can be triggered automatically on various events such as the opening of a pull request. A pipeline can be set up to run a set of tests from the pull request to see if the code is compatible and completes all tests before merging and closing the pull request.

## Ties with the DevOps movement

In terms of DevOps, a pipeline can be a sort of workflow to automatically test and deploy code to servers.

It begins when someone creates a release from the develop branch. The pipeline can run all tests for the last time. Once all tests are green, the building step can begin. In this step the application is built from source. The exact process depends from language to language and from workflow to workflow. The last step is creating a release artifact.

Now the release artifact can be deployed using another pipeline if desired. It can be deployed to a Kubernetes cluster using Helm for example.

This can tie neatly together with the DevOps principle. Code is constantly being tested that it can run on the infrastruture. Using this kind of workflow forces people to work together and they both get benefits from it.
