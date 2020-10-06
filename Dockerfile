FROM library/docker:18.04.0
ENV AWS_CLI_VERSION 2.0.6
ENV GLIBC_VER 2.31-r0
RUN apk update \
 && apk add --no-cache \
    binutils \
    curl \
    unzip \
    zip \
 && curl -sL https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /etc/apk/keys/sgerrand.rsa.pub \
 && curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VER}/glibc-${GLIBC_VER}.apk \
 && curl -sLO https://github.com/sgerrand/alpine-pkg-glibc/releases/download/${GLIBC_VER}/glibc-bin-${GLIBC_VER}.apk \
 && apk add --no-cache \
    glibc-${GLIBC_VER}.apk \
    glibc-bin-${GLIBC_VER}.apk \
 && curl -sL https://awscli.amazonaws.com/awscli-exe-linux-x86_64-${AWS_CLI_VERSION}.zip -o awscliv2.zip \
 && unzip -q awscliv2.zip \
 && ./aws/install \
 && rm -f awscliv2.zip