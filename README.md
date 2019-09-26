ERA conference AI demo
===

This repository follows the Jupyter on Openshift [quickstart guide][1].

The repository uses modified [s2i builder images][2] based on the
[Jupyter Notebooks for OpenShift][3] repository. The notebook can be
found [here][4]. HTTPS certificates are handled with [openshift-acme][5].

How to use
---

Run following commands to create templates
```
oc apply -f https://raw.githubusercontent.com/Gehock/jupyter-notebooks/master/image-streams/s2i-minimal-notebook-freeze.json
oc apply -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyterhub-quickstart/master/image-streams/jupyterhub.json
oc apply -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyterhub-quickstart/master/build-configs/jupyterhub.json
oc apply -f https://raw.githubusercontent.com/jupyter-on-openshift/jupyterhub-quickstart/master/templates/jupyterhub-quickstart.json
```
Run following commands to create the deployment
```
cd scripts
./create-deployment.sh
```
Run following commands to create the custom route
```
cd scripts
./setup-acme.sh
./create-route.sh
```

[1]: https://github.com/jupyter-on-openshift/jupyterhub-quickstart
[2]: https://github.com/Gehock/jupyter-notebooks
[3]: https://github.com/jupyter-on-openshift/jupyter-notebooks
[4]: https://github.com/Gehock/era-ai-demo-notebook
[5]: https://github.com/tnozicka/openshift-acme
