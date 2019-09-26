#!/bin/sh
oc delete all --selector app=jupyter
oc delete configmaps jupyter-cfg
oc delete configmaps jupyter-css
oc delete serviceaccounts jupyter-hub
oc delete rolebindings.authorization.openshift.io jupyter-edit
oc delete persistentvolumeclaims jupyter-db
