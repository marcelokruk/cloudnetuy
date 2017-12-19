## BUILDING
##   (from project root directory)
##   $ docker build -t java-for-marcelokruk-cloudnetuy .
##
## RUNNING
##   $ docker run java-for-marcelokruk-cloudnetuy

FROM gcr.io/bitnami-containers/minideb-extras:jessie-r14-buildpack

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="s33swys" \
    STACKSMITH_STACK_NAME="Java for marcelokruk/cloudnetuy" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install java-1.8.151-0 --checksum fbbea572d89988035aee16eefe53c852e8abfda84f6c7cf5c9a4772a72863143

ENV PATH=/opt/bitnami/java/bin:$PATH \
    JAVA_HOME=/opt/bitnami/java

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Java base template
COPY . /app
WORKDIR /app
