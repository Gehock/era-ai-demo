c.KubeSpawner.default_url = '/notebooks/notebooks/00.00-Preface.ipynb'
c.KubeSpawner.mem_guarantee = '512M'
c.KubeSpawner.mem_limit = '1024M'
c.JupyterHub.cleanup_servers = False

c.KubeSpawner.environment = {
    'JUPYTER_CONFIG_DIR': '/opt/app-root/jupyter'
}
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
      'mountPath': '/opt/app-root/jupyter/custom'
    },
  ]
}
