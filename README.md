# OpAIoT 2026 - Conteúdos de IoT

Este repositório organiza materiais didáticos do curso de OpAIoT, com foco em práticas de Internet das Coisas usando ESP32, sensores, MQTT, pipelines de dados, observabilidade e visualização.

O `Modulo_2` concentra as práticas com dispositivos, sensores, MQTT e pipeline IoT com Docker. O `Modulo_3` inicia a etapa de integração e observabilidade a partir de datasets, com inspeção em Python e exposição de métricas no Prometheus.

<img width="1672" height="941" alt="IoT-Mod2" src="https://github.com/user-attachments/assets/5c5769c9-ca2a-4806-bef5-74860d953c09" />

## Como navegar

1. Comece pela prática de blink em [Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino](Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino).
2. Avance para sensores digitais e analógicos em [Modulo_2/Aula_2_sensores](Modulo_2/Aula_2_sensores).
3. Aprofunde leitura ADC e conversão de temperatura em [Modulo_2/Aula_4_adc](Modulo_2/Aula_4_adc).
4. Estude publicação MQTT com DHT22 em [Modulo_2/Aula_7_mqtt/pratica_mqtt.ino](Modulo_2/Aula_7_mqtt/pratica_mqtt.ino).
5. Execute o pipeline IoT fim a fim em [Modulo_2/Aula_8_pipeline_iot](Modulo_2/Aula_8_pipeline_iot).
6. No Módulo 3, pratique inspeção de datasets e integração com Prometheus em [Modulo_3/Aula_1_datasets](Modulo_3/Aula_1_datasets).

## Módulos

| Módulo | Tema | Entrada principal |
| --- | --- | --- |
| Módulo 2 | Fundamentos práticos de IoT com ESP32, sensores, MQTT e pipeline local | [Modulo_2](Modulo_2) |
| Módulo 3 | Datasets, inspeção de dados e observabilidade com Prometheus | [Modulo_3/Aula_1_datasets](Modulo_3/Aula_1_datasets) |

## Projetos Wokwi

| Projeto | Link Wokwi | Código interno relacionado |
| --- | --- | --- |
| button_toggle_led | [Abrir no Wokwi](https://wokwi.com/projects/463461381500467201) | [pratica_01_esp32_button_toggle_led.ino](Modulo_2/Aula_2_sensores/pratica_01_esp32_button_toggle_led.ino) |
| rotary_encoder | [Abrir no Wokwi](https://wokwi.com/projects/463512425212322817) | [pratica_02_esp32_rotary_encoder.ino](Modulo_2/Aula_2_sensores/pratica_02_esp32_rotary_encoder.ino) |
| potentiometer | [Abrir no Wokwi](https://wokwi.com/projects/463513736257544193) | [Aula 2 - pratica_03_esp32_potentiometer.ino](Modulo_2/Aula_2_sensores/pratica_03_esp32_potentiometer.ino) e [Aula 4 - pratica_01_esp32_potentiometer.ino](Modulo_2/Aula_4_adc/pratica_01_esp32_potentiometer.ino) |
| ntc | [Abrir no Wokwi](https://wokwi.com/projects/463521418790072321) | [pratica_02_esp32_ntc.ino](Modulo_2/Aula_4_adc/pratica_02_esp32_ntc.ino) |
| dht22-mqtt | [Abrir no Wokwi](https://wokwi.com/projects/463692046389363713) | [esp32_dht22_mqtt.ino](Modulo_2/Aula_8_pipeline_iot/esp32_dht22_mqtt.ino) |

## Códigos internos

### Módulo 2 - IoT

| Aula | Arquivo | Objetivo |
| --- | --- | --- |
| Aula 1 - stacks e ferramentas | [pratica_01_ESP32_blink.ino](Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino) | Primeiro contato com ESP32: configurar pino digital, piscar LED e imprimir estado no Monitor Serial. |
| Aula 2 - sensores | [pratica_01_esp32_button_toggle_led.ino](Modulo_2/Aula_2_sensores/pratica_01_esp32_button_toggle_led.ino) | Ler botão com `INPUT_PULLUP`, aplicar debounce e alternar o estado de um LED. |
| Aula 2 - sensores | [pratica_02_esp32_rotary_encoder.ino](Modulo_2/Aula_2_sensores/pratica_02_esp32_rotary_encoder.ino) | Ler encoder rotativo, detectar sentido horário/anti-horário e tratar o botão SW. |
| Aula 2 - sensores | [pratica_03_esp32_potentiometer.ino](Modulo_2/Aula_2_sensores/pratica_03_esp32_potentiometer.ino) | Ler potenciômetro no GPIO34, mostrar valor ADC bruto e converter aproximadamente para tensão. |
| Aula 4 - ADC | [pratica_01_esp32_potentiometer.ino](Modulo_2/Aula_4_adc/pratica_01_esp32_potentiometer.ino) | Reforçar leitura analógica do potenciômetro usando resolução de 12 bits e atenuação `ADC_11db`. |
| Aula 4 - ADC | [pratica_02_esp32_ntc.ino](Modulo_2/Aula_4_adc/pratica_02_esp32_ntc.ino) | Calcular temperatura a partir de um NTC em divisor de tensão usando Steinhart-Hart. |
| Aula 7 - MQTT | [pratica_mqtt.ino](Modulo_2/Aula_7_mqtt/pratica_mqtt.ino) | Conectar ESP32 ao Wi-Fi do Wokwi, ler DHT22 e publicar JSON via MQTT em broker público. |
| Aula 8 - pipeline IoT | [esp32_dht22_mqtt.ino](Modulo_2/Aula_8_pipeline_iot/esp32_dht22_mqtt.ino) | Publicar temperatura e umidade no tópico `opaiot/temperature` para o pipeline local com Docker. |

### Módulo 3 - Datasets e observabilidade

| Aula | Entrada principal | Objetivo |
| --- | --- | --- |
| Aula 1 - datasets | [Modulo_3/Aula_1_datasets/README.md](Modulo_3/Aula_1_datasets/README.md) | Inspecionar um dataset de qualidade do ar, gerar artefatos de análise e expor leituras simuladas como métricas Prometheus. |

Arquivos de apoio da Aula 1:

| Arquivo | Descrição |
| --- | --- |
| [data/README.md](Modulo_3/Aula_1_datasets/data/README.md) | Fonte, licença, referências legais e atribuição do dataset Kaggle. |
| [scripts/README.md](Modulo_3/Aula_1_datasets/scripts/README.md) | Passo a passo para instalar dependências e executar os scripts no Linux. |
| [scripts/1-inspect.py](Modulo_3/Aula_1_datasets/scripts/1-inspect.py) | Inspeciona o CSV e gera perfis, resumo numérico, schema e eventos normalizados. |
| [scripts/2-prometheus.py](Modulo_3/Aula_1_datasets/scripts/2-prometheus.py) | Publica leituras do CSV como métricas Prometheus em `localhost:8000/metrics`. |
| [outputs_example](Modulo_3/Aula_1_datasets/outputs_example) | Exemplo versionado dos arquivos gerados pelo script de inspeção. |
| [roteiro_pratica_guiada.txt](Modulo_3/Aula_1_datasets/roteiro_pratica_guiada.txt) | Sequência sugerida para gravação da prática guiada. |

## Pipeline IoT - Aula 8

A pasta [Modulo_2/Aula_8_pipeline_iot](Modulo_2/Aula_8_pipeline_iot) contém um exemplo fim a fim:

```text
ESP32 + DHT22 no Wokwi
  -> MQTT
  -> Eclipse Mosquitto
  -> Backend Node.js
  -> PostgreSQL/TimescaleDB
  -> Grafana
```

Arquivos principais:

| Arquivo | Descrição |
| --- | --- |
| [QUICKSTART.md](Modulo_2/Aula_8_pipeline_iot/QUICKSTART.md) | Início rápido para subir o ambiente. |
| [SETUP.md](Modulo_2/Aula_8_pipeline_iot/SETUP.md) | Passo a passo detalhado de execução e troubleshooting. |
| [README.md](Modulo_2/Aula_8_pipeline_iot/README.md) | Documentação principal da Aula 8. |
| [ESTRUTURA.md](Modulo_2/Aula_8_pipeline_iot/ESTRUTURA.md) | Visão técnica dos arquivos, serviços, portas e fluxo de dados. |
| [INDEX.md](Modulo_2/Aula_8_pipeline_iot/INDEX.md) | Índice dos arquivos da Aula 8. |
| [docker-compose.yml](Modulo_2/Aula_8_pipeline_iot/docker-compose.yml) | Sobe Mosquitto, TimescaleDB, backend Node.js e Grafana. |
| [backend/index.js](Modulo_2/Aula_8_pipeline_iot/backend/index.js) | Consome mensagens MQTT, persiste no banco e expõe API HTTP. |
| [backend/package.json](Modulo_2/Aula_8_pipeline_iot/backend/package.json) | Dependências Node.js: `mqtt`, `pg` e `dotenv`. |
| [init-db/01-init.sql](Modulo_2/Aula_8_pipeline_iot/init-db/01-init.sql) | Cria hypertable `temperature_metrics`, índices, views e usuário do Grafana. |
| [QUERIES_UTEIS.sql](Modulo_2/Aula_8_pipeline_iot/QUERIES_UTEIS.sql) | Consultas SQL para inspeção, estatísticas e uso no Grafana. |
| [grafana/provisioning/datasources/datasources.yml](Modulo_2/Aula_8_pipeline_iot/grafana/provisioning/datasources/datasources.yml) | Datasource TimescaleDB para o Grafana. |
| [grafana/provisioning/dashboards/dashboards.yml](Modulo_2/Aula_8_pipeline_iot/grafana/provisioning/dashboards/dashboards.yml) | Provisionamento de dashboards. |
| [grafana/provisioning/dashboards/iot-temperature-dashboard.json](Modulo_2/Aula_8_pipeline_iot/grafana/provisioning/dashboards/iot-temperature-dashboard.json) | Dashboard de temperatura e umidade. |
| [mosquitto/config/mosquitto.conf](Modulo_2/Aula_8_pipeline_iot/mosquitto/config/mosquitto.conf) | Configuração do broker MQTT Mosquitto. |
| [dados-teste.json](Modulo_2/Aula_8_pipeline_iot/dados-teste.json) | Payload de exemplo para testes. |
| [test-mqtt.sh](Modulo_2/Aula_8_pipeline_iot/test-mqtt.sh) | Script Bash para testar publicação MQTT. |
| [manage.bat](Modulo_2/Aula_8_pipeline_iot/manage.bat) | Script auxiliar para Windows. |

Para subir o pipeline:

```powershell
cd Modulo_2\Aula_8_pipeline_iot
docker-compose up -d
```

Serviços esperados:

| Serviço | Endereço |
| --- | --- |
| MQTT | `mqtt://localhost:1883` |
| API Backend | `http://localhost:3000` |
| Última leitura | `http://localhost:3000/api/latest` |
| Grafana | `http://localhost:3001` |
| PostgreSQL/TimescaleDB | `localhost:5432` |

Observação: a configuração atual do Docker Compose usa Eclipse Mosquitto como broker MQTT. Alguns textos internos ainda podem mencionar HiveMQ em exemplos antigos, mas os arquivos de execução atuais apontam para o serviço `mosquitto`.

## Tópicos MQTT e dados

O pipeline local da Aula 8 espera mensagens no tópico:

```text
opaiot/temperature
```

Formato JSON esperado pelo backend:

```json
{
  "temperature": 25.5,
  "humidity": 60.0,
  "deviceId": "esp32-dht22",
  "location": "sala"
}
```

A tabela principal criada no TimescaleDB é:

```text
temperature_metrics
```

Campos principais: `device_id`, `location`, `temperature`, `humidity` e `time`.
