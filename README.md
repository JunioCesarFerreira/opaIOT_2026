# OpAIoT 2026 - Materiais de IoT, Dados e Observabilidade

Este repositório reúne materiais didáticos e práticas do curso OpAIoT 2026, com foco em Internet das Coisas, sensores, ESP32, MQTT, pipelines de dados, séries temporais, Kafka, Prometheus e Grafana.

O material está organizado em módulos. O `Modulo_2` concentra práticas com dispositivos, sensores e pipelines IoT. O `Modulo_3` avança para dados, observabilidade, séries temporais e processamento orientado a eventos.

<img width="1672" height="941" alt="IoT-Mod2" src="https://github.com/user-attachments/assets/5c5769c9-ca2a-4806-bef5-74860d953c09" />


## Folhas-Resumo

| Tema | Imagem |
| --- | --- |
| Docker | [docker.png](Adicionais/folhas%20de%20resumo/docker.png) |
| Docker Compose | [docker-compose.png](Adicionais/folhas%20de%20resumo/docker-compose.png) |
| Kafka | [kafka.png](Adicionais/folhas%20de%20resumo/kafka.png) |

## Estrutura Principal

| Diretório | Conteúdo |
| --- | --- |
| [Modulo_2](Modulo_2) | Práticas com ESP32, sensores, ADC, MQTT e pipeline IoT. |
| [Modulo_3](Modulo_3) | Datasets, observabilidade, séries temporais e Kafka. |
| [Adicionais](Adicionais) | Notebook complementar e folhas-resumo. |

## Módulo 2 - IoT com ESP32

| Aula | Entrada | Objetivo |
| --- | --- | --- |
| Aula 1 - stacks e ferramentas | [pratica_01_ESP32_blink.ino](Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino) | Primeiro contato com ESP32: piscar LED e usar Monitor Serial. |
| Aula 2 - sensores | [Modulo_2/Aula_2_sensores](Modulo_2/Aula_2_sensores) | Botão, debounce, encoder rotativo e potenciômetro. |
| Aula 4 - ADC | [Modulo_2/Aula_4_adc](Modulo_2/Aula_4_adc) | Leitura analógica, potenciômetro e sensor NTC. |
| Aula 7 - MQTT | [pratica_mqtt.ino](Modulo_2/Aula_7_mqtt/pratica_mqtt.ino) | ESP32 com DHT22 publicando JSON via MQTT. |
| Aula 8 - pipeline IoT | [Modulo_2/Aula_8_pipeline_iot](Modulo_2/Aula_8_pipeline_iot) | Pipeline fim a fim com MQTT, Mosquitto, backend, TimescaleDB e Grafana. |

### Projetos Wokwi

| Projeto | Link Wokwi | Código relacionado |
| --- | --- | --- |
| Button toggle LED | [Abrir no Wokwi](https://wokwi.com/projects/463461381500467201) | [pratica_01_esp32_button_toggle_led.ino](Modulo_2/Aula_2_sensores/pratica_01_esp32_button_toggle_led.ino) |
| Rotary encoder | [Abrir no Wokwi](https://wokwi.com/projects/463512425212322817) | [pratica_02_esp32_rotary_encoder.ino](Modulo_2/Aula_2_sensores/pratica_02_esp32_rotary_encoder.ino) |
| Potentiometer | [Abrir no Wokwi](https://wokwi.com/projects/463513736257544193) | [Aula 2](Modulo_2/Aula_2_sensores/pratica_03_esp32_potentiometer.ino) e [Aula 4](Modulo_2/Aula_4_adc/pratica_01_esp32_potentiometer.ino) |
| NTC | [Abrir no Wokwi](https://wokwi.com/projects/463521418790072321) | [pratica_02_esp32_ntc.ino](Modulo_2/Aula_4_adc/pratica_02_esp32_ntc.ino) |
| DHT22 + MQTT | [Abrir no Wokwi](https://wokwi.com/projects/463692046389363713) | [esp32_dht22_mqtt.ino](Modulo_2/Aula_8_pipeline_iot/esp32_dht22_mqtt.ino) |

### Aula 8 - Pipeline IoT

A pasta [Modulo_2/Aula_8_pipeline_iot](Modulo_2/Aula_8_pipeline_iot) contém um pipeline local completo:

```text
ESP32 + DHT22
  -> MQTT
  -> Mosquitto
  -> Backend Node.js
  -> PostgreSQL/TimescaleDB
  -> Grafana
```

Entradas úteis:

| Arquivo | Descrição |
| --- | --- |
| [QUICKSTART.md](Modulo_2/Aula_8_pipeline_iot/QUICKSTART.md) | Início rápido. |
| [SETUP.md](Modulo_2/Aula_8_pipeline_iot/SETUP.md) | Passo a passo detalhado. |
| [README.md](Modulo_2/Aula_8_pipeline_iot/README.md) | Documentação principal da aula. |
| [ESTRUTURA.md](Modulo_2/Aula_8_pipeline_iot/ESTRUTURA.md) | Descrição técnica dos serviços e arquivos. |
| [docker-compose.yml](Modulo_2/Aula_8_pipeline_iot/docker-compose.yml) | Sobe Mosquitto, TimescaleDB, backend e Grafana. |
| [QUERIES_UTEIS.sql](Modulo_2/Aula_8_pipeline_iot/QUERIES_UTEIS.sql) | Consultas SQL para inspeção e dashboards. |

Serviços esperados:

| Serviço | Endereço |
| --- | --- |
| MQTT | `mqtt://localhost:1883` |
| API Backend | `http://localhost:3000` |
| Última leitura | `http://localhost:3000/api/latest` |
| Grafana | `http://localhost:3001` |
| PostgreSQL/TimescaleDB | `localhost:5432` |

## Módulo 3 - Dados, Observabilidade e Kafka

| Aula | Entrada | Objetivo |
| --- | --- | --- |
| Aula 1 - datasets | [Modulo_3/Aula_1_datasets/README.md](Modulo_3/Aula_1_datasets/README.md) | Inspecionar dataset de qualidade do ar, gerar artefatos e expor métricas Prometheus. |
| Aula 2 - séries temporais | [Modulo_3/Aula_2_series_temporais](Modulo_3/Aula_2_series_temporais) | Ambiente de apoio com Grafana e provisionamento de datasource Prometheus. |
| Aula 3 - Kafka | [Modulo_3/Aula_3_kafka/README.md](Modulo_3/Aula_3_kafka/README.md) | Telemetria IoT com Kafka, consumers, partitions, offsets, Prometheus e Grafana. |
| Aula 4 - MQTT para Kafka | [Modulo_3/Aula_4_esp32_mqtt_kafka/README.md](Modulo_3/Aula_4_esp32_mqtt_kafka/README.md) | Ponte MQTT -> Kafka com Mosquitto e firmware ESP32 (DHT22 + MQ-7). |
| Aula 5 - orquestração | [Modulo_3/Aula_5_orquestração/README.md](Modulo_3/Aula_5_orquestração/README.md) | Stack IoT completa em Docker Compose e manifests Kubernetes didáticos. |
| Aula 6 - segurança e governança | [Modulo_3/Aula_6_seguranca_governanca/README.md](Modulo_3/Aula_6_seguranca_governanca/README.md) | Autenticação MQTT, ACL por tópico e Grafana como camada de governança. |

### Aula 1 - Datasets

Entradas úteis:

| Arquivo | Descrição |
| --- | --- |
| [README.md](Modulo_3/Aula_1_datasets/README.md) | Guia principal da prática. |
| [data/README.md](Modulo_3/Aula_1_datasets/data/README.md) | Fonte, licença e atribuição do dataset. |
| [scripts/README.md](Modulo_3/Aula_1_datasets/scripts/README.md) | Como executar os scripts. |
| [scripts/1-inspect.py](Modulo_3/Aula_1_datasets/scripts/1-inspect.py) | Inspeção do CSV e geração de artefatos. |
| [scripts/2-prometheus.py](Modulo_3/Aula_1_datasets/scripts/2-prometheus.py) | Exportador Prometheus em `localhost:8000/metrics`. |
| [outputs_example](Modulo_3/Aula_1_datasets/outputs_example) | Exemplo versionado dos arquivos gerados. |

### Aula 2 - Séries Temporais

A pasta [Modulo_3/Aula_2_series_temporais](Modulo_3/Aula_2_series_temporais) contém um `docker-compose.yml` para subir Grafana com provisionamento local.

Entrada principal:

| Arquivo | Descrição |
| --- | --- |
| [docker-compose.yml](Modulo_3/Aula_2_series_temporais/docker-compose.yml) | Sobe Grafana em `localhost:3000`. |
| [grafana/provisioning/datasources/prometheus.yml](Modulo_3/Aula_2_series_temporais/grafana/provisioning/datasources/prometheus.yml) | Datasource Prometheus provisionado. |

### Aula 3 - Kafka

A pasta [Modulo_3/Aula_3_kafka](Modulo_3/Aula_3_kafka) contém a prática de telemetria IoT observável com Kafka.

Entradas úteis:

| Arquivo | Descrição |
| --- | --- |
| [README.md](Modulo_3/Aula_3_kafka/README.md) | Visão conceitual e resumo da prática. |
| [instalando_kafka_vm.md](Modulo_3/Aula_3_kafka/instalando_kafka_vm.md) | Instalação do Kafka na VM. |
| [scripts/README.md](Modulo_3/Aula_3_kafka/scripts/README.md) | Passo a passo completo de execução. |
| [scripts/producer.py](Modulo_3/Aula_3_kafka/scripts/producer.py) | Producer Python que simula sensores IoT. |
| [scripts/consumer_metrics.py](Modulo_3/Aula_3_kafka/scripts/consumer_metrics.py) | Consumer Kafka com endpoint Prometheus. |
| [scripts/configure_prometheus.sh](Modulo_3/Aula_3_kafka/scripts/configure_prometheus.sh) | Configura Prometheus para coletar os consumers. |
| [scripts/configure_grafana.sh](Modulo_3/Aula_3_kafka/scripts/configure_grafana.sh) | Configura datasource e dashboard no Grafana. |

Fluxo da prática:

```text
Python Producer
  -> Kafka topic iot.air_quality
  -> Python consumers
  -> /metrics
  -> Prometheus
  -> Grafana
```

### Aula 4 - MQTT para Kafka

A pasta [Modulo_3/Aula_4_esp32_mqtt_kafka](Modulo_3/Aula_4_esp32_mqtt_kafka) conecta telemetria MQTT ao tópico `iot.air_quality` da Aula 3, reaproveitando o mesmo formato de evento.

```text
ESP32 + DHT22 + MQ-7
  -> Mosquitto MQTT
  -> mqtt_kafka_producer.py
  -> Kafka topic iot.air_quality (Aula 3)
  -> consumers da Aula 3
```

| Arquivo | Descrição |
| --- | --- |
| [README.md](Modulo_3/Aula_4_esp32_mqtt_kafka/README.md) | Guia da ponte MQTT -> Kafka. |
| [docker-compose.yml](Modulo_3/Aula_4_esp32_mqtt_kafka/docker-compose.yml) | Sobe Mosquitto e o bridge `mqtt-kafka-producer`. |
| [firmware/esp32_mq7_mqtt.ino](Modulo_3/Aula_4_esp32_mqtt_kafka/firmware/esp32_mq7_mqtt.ino) | Firmware ESP32 + DHT22 + MQ-7 publicando via MQTT. |
| [scripts/mqtt_kafka_producer.py](Modulo_3/Aula_4_esp32_mqtt_kafka/scripts/mqtt_kafka_producer.py) | Ponte MQTT -> Kafka em Python. |

### Aula 5 - Orquestração

A pasta [Modulo_3/Aula_5_orquestração](Modulo_3/Aula_5_orquestração) sobe uma stack IoT completa em Docker Compose e oferece a leitura equivalente em Kubernetes.

```text
sensor-simulator
  -> Mosquitto MQTT
  -> mqtt-to-kafka
  -> Kafka (+ Kafka UI)
  -> iot-processor
  -> Prometheus
  -> Grafana
```

| Arquivo | Descrição |
| --- | --- |
| [README.md](Modulo_3/Aula_5_orquestração/README.md) | Guia da prática Compose + Kubernetes. |
| [docker-compose.yaml](Modulo_3/Aula_5_orquestração/docker-compose.yaml) | Stack IoT local completa. |
| [docs/docker-compose-pratica.md](Modulo_3/Aula_5_orquestração/docs/docker-compose-pratica.md) | Roteiro da prática com Docker Compose. |
| [docs/kubernetes-pratica.md](Modulo_3/Aula_5_orquestração/docs/kubernetes-pratica.md) | Roteiro da prática com Kubernetes. |
| [k8s/README.md](Modulo_3/Aula_5_orquestração/k8s/README.md) | Manifests Kubernetes comentados. |

### Aula 6 - Segurança e Governança

A pasta [Modulo_3/Aula_6_seguranca_governanca](Modulo_3/Aula_6_seguranca_governanca) traz um ambiente Mosquitto com autenticação e ACL por tópico, além do Grafana como camada de governança.

| Arquivo | Descrição |
| --- | --- |
| [README.md](Modulo_3/Aula_6_seguranca_governanca/README.md) | Guia de autenticação, ACL e testes. |
| [docker-compose.yml](Modulo_3/Aula_6_seguranca_governanca/docker-compose.yml) | Sobe Mosquitto e Grafana. |
| [mosquitto/config/acl](Modulo_3/Aula_6_seguranca_governanca/mosquitto/config/acl) | Perfis de acesso por tópico (`sensor01`, `monitor01`, `operador01`). |

## Extras

| Material | Entrada | Conteúdo |
| --- | --- | --- |
| Amostragem e conversão A/D | [Modulo_2/Extras/Aula_sobre_Amostragem](Modulo_2/Extras/Aula_sobre_Amostragem) | ADC, amostragem, FFT, MQTT, InfluxDB e Grafana. |
| Aplicação de amostragem | [application/README.md](Modulo_2/Extras/Aula_sobre_Amostragem/application/README.md) | Stack executável com ESP32/Wokwi, backend, InfluxDB e Grafana. |
| Redes mesh | [Modulo_2/Extras/Aula_sobre_Redes_Mesh](Modulo_2/Extras/Aula_sobre_Redes_Mesh) | Materiais sobre Zigbee, RPL, LoRaWAN e classificação de redes IoT. |
| Materiais adicionais | [Adicionais](Adicionais) | Notebook de regressão linear e folhas-resumo. |

## Execução Rápida por Tema

| Quero... | Comece por |
| --- | --- |
| Simular sensores ESP32 no Wokwi | [Projetos Wokwi](#projetos-wokwi) |
| Rodar pipeline MQTT completo | [Modulo_2/Aula_8_pipeline_iot/QUICKSTART.md](Modulo_2/Aula_8_pipeline_iot/QUICKSTART.md) |
| Inspecionar dataset IoT | [Modulo_3/Aula_1_datasets](Modulo_3/Aula_1_datasets) |
| Expor métricas Prometheus | [Modulo_3/Aula_1_datasets/scripts/2-prometheus.py](Modulo_3/Aula_1_datasets/scripts/2-prometheus.py) |
| Praticar Kafka com telemetria IoT | [Modulo_3/Aula_3_kafka](Modulo_3/Aula_3_kafka) |
| Configurar Prometheus/Grafana para Kafka | [Modulo_3/Aula_3_kafka/scripts/README.md](Modulo_3/Aula_3_kafka/scripts/README.md) |
| Conectar telemetria MQTT ao Kafka | [Modulo_3/Aula_4_esp32_mqtt_kafka](Modulo_3/Aula_4_esp32_mqtt_kafka) |
| Orquestrar a stack IoT (Compose e Kubernetes) | [Modulo_3/Aula_5_orquestração](Modulo_3/Aula_5_orquestração) |
| Aplicar autenticação e ACL no MQTT | [Modulo_3/Aula_6_seguranca_governanca](Modulo_3/Aula_6_seguranca_governanca) |

## Observações

- As práticas Arduino foram pensadas para ESP32 e podem ser usadas no Wokwi ou em hardware real, conforme a aula.
- As práticas com Prometheus e Grafana assumem execução em ambiente Linux/VM, salvo quando houver Docker Compose específico.
- Alguns diretórios extras têm documentação própria e devem ser lidos a partir de seus READMEs locais.
