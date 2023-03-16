## Define the prometheus image version to use
image:
  repository: prom/prometheus
  tag: v2.43.0-rc.0

## Disable the alertmanager component
alertmanager:
  enabled: false

## Enable pod security policies
podSecurityPolicy:
  enabled: true

## Disable persistent volumes for the server
server:
  persistentVolume:
    enabled: false

  ## Define os limites de recursos
  resources:
    limits:
      ephemeral-storage: 10Mi
      #cpu: 200m
      #memory: 50Mi
