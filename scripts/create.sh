#!/bin/sh
oc new-app \
  --template jupyterhub-quickstart \
  --param APPLICATION_NAME=jupyter \
  --param GIT_REPOSITORY_URL=https://github.com/Gehock/era-ai-demo-notebook \
  --param BUILDER_IMAGE=s2i-minimal-notebook:3.6
oc create -f ../openshift/jupyter-css.yaml
# The builder creates an empty cfg
oc delete configmap jupyter-cfg
oc create -f ../openshift/jupyter-cfg.yaml
