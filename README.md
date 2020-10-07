# Docker-awscli

Docker image with aws cli installed for use as circleci executor

## Usage

Define executor in `.circleci/config.yml` like this:

```yaml
executors:
  docker-awscli:
    docker:
      - image: horidaisuke/docker-awscli:latest
    shell: /bin/bash -leo pipefail
    environment:
      - BASH_ENV: /etc/profile

# Use orbs command directly in docker-awscli executor
orbs:
  aws-ecr: circleci/aws-ecr@6.12.2
jobs:
  docker-push-example:
    executor:
      name: docker-awscli
    steps:
      - run:
          command: |
            echo 'export AWS_ECR_ACCOUNT_URL="${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com"' >> $BASH_ENV
            echo 'export AWS_REGION="${AWS_DEFAULT_REGION}"' >> $BASH_ENV
      - aws-ecr/ecr-login
      - aws-ecr/push-image:
          repo: example
```

## Tags

* `19.03.13-cli-2.0.54`, `latest`
* `19.03.12-cli-2.0.54`
* `19.03.11-cli-2.0.54`
* `19.03.10-cli-2.0.54`
* `19.03.9-cli-2.0.54`
* `19.03.8-cli-2.0.54`
* `19.03.7-cli-2.0.54`
* `19.03.6-cli-2.0.54`
* `19.03.5-cli-2.0.54`
* `19.03.4-cli-2.0.54`
* `19.03.3-cli-2.0.54`
* `19.03.2-cli-2.0.54`
* `19.03.1-cli-2.0.54`
* `19.03.0-cli-2.0.54`
* `18.06.3-cli-2.0.54`
* `18.06.2-cli-2.0.54`
* `18.06.1-cli-2.0.54`
* `18.06.0-cli-2.0.54`
* `18.05.0-cli-2.0.54`
* `18.04.0-cli-2.0.54`

## License

View [license information](https://github.com/horidaisuke/docker-awscli/blob/main/LICENSE) for the software contained in this image.

This license is inherited from licenses of two docker images, [library/docker](https://hub.docker.com/_/docker) and [amazon/aws-cli](https://hub.docker.com/r/amazon/aws-cli).
