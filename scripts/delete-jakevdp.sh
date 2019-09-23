#!/bin/sh
oc delete all --selector app=jakevdp
oc delete configmaps jakevdp-cfg
oc delete configmaps jakevdp-css
oc delete serviceaccounts jakevdp-hub
oc delete rolebindings.authorization.openshift.io jakevdp-edit
oc delete persistentvolumeclaims jakevdp-db
