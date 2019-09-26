#!/bin/sh
oc create -fhttps://raw.githubusercontent.com/tnozicka/openshift-acme/master/deploy/letsencrypt-live/single-namespace/{role,serviceaccount,imagestream,deployment}.yaml
oc policy add-role-to-user openshift-acme --role-namespace="$(oc project --short)" -z openshift-acme
