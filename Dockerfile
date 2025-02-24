FROM hashicorp/packer:1.9.1

LABEL "com.github.actions.name" = "Packer build"
LABEL "com.github.actions.description" = "Run packer build on a template file"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="blue"

LABEL "repository" = "https://github.com/getsentry/packer-build-action"
LABEL "homepage" = "https://github.com/getsentry/packer-build-action"
LABEL "maintainer" = "Robert Anderson <riznob@gmail.com>"

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
