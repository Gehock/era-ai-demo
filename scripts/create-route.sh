#!/bin/sh
oc create route edge ai-demo-aalto --hostname=ai-demo.aalto.fi --service=jupyter --insecure-policy=Redirect
oc patch route ai-demo-aalto -p '{"metadata":{"annotations":{"kubernetes.io/tls-acme":"true"}}}'
