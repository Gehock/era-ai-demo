#!/bin/sh
oc delete all --selector app=jupyter2
oc delete configmaps jupyter2-cfg
oc delete serviceaccounts jupyter2-hub
oc delete rolebindings.authorization.openshift.io jupyter2-edit
oc delete persistentvolumeclaims jupyter2-db

