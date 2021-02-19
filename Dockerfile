FROM bitnami/prestashop:1.7-debian-10

## Change user to perform privileged actions
USER 0
## Install 'vim'
RUN install_packages vim
ADD ./my_module /bitnami/prestashop/modules
## Revert to the original non-root user
USER 1001