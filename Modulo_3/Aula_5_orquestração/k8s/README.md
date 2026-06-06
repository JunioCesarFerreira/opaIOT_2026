# Kubernetes - Aula 5

Manifests didáticos para executar a stack IoT no namespace `opaiot-p5`.

## Arquivos

| Arquivo | Conteúdo |
| --- | --- |
| `namespace.yaml` | Namespace da prática |
| `mosquitto.yaml` | ConfigMap, Deployment e Service MQTT |
| `kafka.yaml` | Kafka single-node em KRaft |
| `kafka-ui.yaml` | Kafka UI via NodePort |
| `sensor-simulator.yaml` | Deployment do sensor Python |
| `mqtt-to-kafka.yaml` | Deployment da ponte MQTT para Kafka |
| `iot-processor.yaml` | Deployment e Service de métricas |
| `prometheus.yaml` | ConfigMap, Deployment e NodePort |
| `grafana.yaml` | Datasource, Deployment e NodePort |
| `redpanda.yaml` | Broker alternativo leve para laboratório |

## Preparar imagens dos apps

```bash
docker build -t opaiot/sensor-simulator:local services/sensor-simulator
docker build -t opaiot/mqtt-to-kafka:local services/mqtt-to-kafka
docker build -t opaiot/iot-processor:local services/iot-processor
```

Em Minikube:

```bash
minikube image load opaiot/sensor-simulator:local
minikube image load opaiot/mqtt-to-kafka:local
minikube image load opaiot/iot-processor:local
```

## Aplicar

```bash
kubectl apply -f k8s/
```

## Listar

```bash
kubectl get pods -n opaiot-p5
kubectl get deploy -n opaiot-p5
kubectl get svc -n opaiot-p5
```

## Logs

```bash
kubectl logs deploy/sensor-simulator -n opaiot-p5
kubectl logs deploy/mqtt-to-kafka -n opaiot-p5
kubectl logs deploy/iot-processor -n opaiot-p5
```

## Inspecionar

```bash
kubectl describe pod <pod> -n opaiot-p5
```

## Escalar

```bash
kubectl scale deployment sensor-simulator --replicas=3 -n opaiot-p5
kubectl get pods -n opaiot-p5 -l app=sensor-simulator
```

## Remover

```bash
kubectl delete namespace opaiot-p5
```

## NodePorts

| Serviço | NodePort |
| --- | --- |
| Kafka UI | `30080` |
| Prometheus | `30090` |
| Grafana | `30300` |

## Alternativa Redpanda

Se o Kafka oficial ficar pesado no playground:

```bash
kubectl delete -f k8s/kafka.yaml
kubectl apply -f k8s/redpanda.yaml
kubectl set env deployment/mqtt-to-kafka KAFKA_BOOTSTRAP_SERVERS=redpanda:9092 -n opaiot-p5
kubectl set env deployment/iot-processor KAFKA_BOOTSTRAP_SERVERS=redpanda:9092 -n opaiot-p5
```

Depois acompanhe:

```bash
kubectl rollout status deployment/mqtt-to-kafka -n opaiot-p5
kubectl rollout status deployment/iot-processor -n opaiot-p5
```
