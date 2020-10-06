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
```

## Tags

* `18.04.0-cli-2.0.6`, `latest`

## License

View [license information](https://github.com/horidaisuke/docker-awscli/blob/main/LICENSE) for the software contained in this image.

This license is inherited from licenses of two docker images, [library/docker](https://hub.docker.com/_/docker) and [amazon/aws-cli](https://hub.docker.com/r/amazon/aws-cli).
