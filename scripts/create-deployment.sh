#!/bin/sh
oc new-app \
  --template jupyterhub-quickstart \
  --param APPLICATION_NAME=jupyter \
  --param GIT_REPOSITORY_URL=https://github.com/Gehock/era-ai-demo-notebook \
  --param JUPYTERHUB_CONFIG="$(cat ../openshift/jupyterhub_config.py)" \
  --param BUILDER_IMAGE=s2i-minimal-notebook-freeze:3.6
oc create -f ../openshift/jupyter-css.yaml
