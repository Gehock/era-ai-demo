c.KubeSpawner.default_url = '/notebooks/Computer-Assignment-B.ipynb'
c.KubeSpawner.mem_guarantee = '512M'
c.KubeSpawner.mem_limit = '1024M'
c.JupyterHub.cleanup_servers = False

c.KubeSpawner.extra_pod_config = {
  'volumes': [
    {
      'configMap': {
        'defaultMode': 420,
        'name': 'jupyter-css'
      },
      'name': 'css'
    },
  ]
}
c.KubeSpawner.extra_container_config = {
  'volumeMounts': [
    {
      'name': 'css',
      'mountPath': '/opt/app-root/src/.jupyter/custom'
    },
  ]
}
