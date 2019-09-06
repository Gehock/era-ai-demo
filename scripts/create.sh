#!/bin/sh
oc new-app \
  --template jupyterhub-quickstart \
  --param APPLICATION_NAME=jupyter2 \
  --param GIT_REPOSITORY_URL=https://github.com/Gehock/era-ai-demo \
  --param BUILDER_IMAGE=s2i-minimal-notebook:3.6
