#!/bin/sh
oc new-app \
  --template jupyterhub-quickstart \
  --param APPLICATION_NAME=jupyter \
  --param GIT_REPOSITORY_URL=https://github.com/Gehock/era-ai-demo-notebook \
  --param JUPYTERHUB_CONFIG="`cat ../openshift/jupyter_config.py)`"
oc create -f ../openshift/jupyter-css.yaml
