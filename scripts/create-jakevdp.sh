#!/bin/sh

# From https://github.com/jupyter-on-openshift/jupyterhub-quickstart#deploying-with-a-custom-notebook-image
oc new-app --template jupyterhub-quickstart \
  --param APPLICATION_NAME=jakevdp \
  --param GIT_REPOSITORY_URL=https://github.com/jakevdp/PythonDataScienceHandbook \
  --param BUILDER_IMAGE=s2i-minimal-notebook:3.5
