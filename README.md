# OpAIoT 2026 - Conteudos de IoT

Este repositorio organiza materiais didaticos do curso de OpAIoT, com foco nas praticas de Internet das Coisas usando ESP32, sensores, MQTT, banco de dados de series temporais e visualizacao em Grafana.

O caminho principal de estudo esta no `Modulo_2`, que evolui de exemplos basicos de entrada e saida digital ate um pipeline IoT completo. O `Modulo_3` ja possui uma pasta inicial para integracao, atualmente com um arquivo reservado.

## Como navegar

1. Comece pela pratica de blink em [Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino](Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino).
2. Avance para sensores digitais e analogicos em [Modulo_2/Aula_2_sensores](Modulo_2/Aula_2_sensores).
3. Aprofunde leitura ADC e conversao de temperatura em [Modulo_2/Aula_4_adc](Modulo_2/Aula_4_adc).
4. Estude publicacao MQTT com DHT22 em [Modulo_2/Aula_7_mqtt/pratica_mqtt.ino](Modulo_2/Aula_7_mqtt/pratica_mqtt.ino).
5. Execute o pipeline fim a fim em [Modulo_2/Aula_8_pipeline_iot](Modulo_2/Aula_8_pipeline_iot).

## Projetos Wokwi

| Projeto | Link Wokwi | Codigo interno relacionado |
| --- | --- | --- |
| button_toggle_led | [Abrir no Wokwi](https://wokwi.com/projects/463461381500467201) | [pratica_01_esp32_button_toggle_led.ino](Modulo_2/Aula_2_sensores/pratica_01_esp32_button_toggle_led.ino) |
| rotary_encoder | [Abrir no Wokwi](https://wokwi.com/projects/463512425212322817) | [pratica_02_esp32_rotary_encoder.ino](Modulo_2/Aula_2_sensores/pratica_02_esp32_rotary_encoder.ino) |
| potenciometer | [Abrir no Wokwi](https://wokwi.com/projects/463513736257544193) | [Aula 2 - pratica_03_esp32_potentiometer.ino](Modulo_2/Aula_2_sensores/pratica_03_esp32_potentiometer.ino) e [Aula 4 - pratica_01_esp32_potentiometer.ino](Modulo_2/Aula_4_adc/pratica_01_esp32_potentiometer.ino) |
| ntc | [Abrir no Wokwi](https://wokwi.com/projects/463521418790072321) | [pratica_02_esp32_ntc.ino](Modulo_2/Aula_4_adc/pratica_02_esp32_ntc.ino) |
| dht22-mqtt | [Abrir no Wokwi](https://wokwi.com/projects/463692046389363713) | [esp32_dht22_mqtt.ino](Modulo_2/Aula_8_pipeline_iot/esp32_dht22_mqtt.ino) |

## Codigos internos

### Modulo 2 - IoT

| Aula | Arquivo | Objetivo |
| --- | --- | --- |
| Aula 1 - stacks e ferramentas | [pratica_01_ESP32_blink.ino](Modulo_2/Aula_1_stacks_ferramentas/pratica_01_ESP32_blink.ino) | Primeiro contato com ESP32: configurar pino digital, piscar LED e imprimir estado no Monitor Serial. |
| Aula 2 - sensores | [pratica_01_esp32_button_toggle_led.ino](Modulo_2/Aula_2_sensores/pratica_01_esp32_button_toggle_led.ino) | Ler botao com `INPUT_PULLUP`, aplicar debounce e alternar o estado de um LED. |
| Aula 2 - sensores | [pratica_02_esp32_rotary_encoder.ino](Modulo_2/Aula_2_sensores/pratica_02_esp32_rotary_encoder.ino) | Ler encoder rotativo, detectar sentido horario/anti-horario e tratar o botao SW. |
| Aula 2 - sensores | [pratica_03_esp32_potentiometer.ino](Modulo_2/Aula_2_sensores/pratica_03_esp32_potentiometer.ino) | Ler potenciometro no GPIO34, mostrar valor ADC bruto e converter aproximadamente para tensao. |
| Aula 4 - ADC | [pratica_01_esp32_potentiometer.ino](Modulo_2/Aula_4_adc/pratica_01_esp32_potentiometer.ino) | Reforcar leitura analogica do potenciometro usando resolucao de 12 bits e atenuacao `ADC_11db`. |
| Aula 4 - ADC | [pratica_02_esp32_ntc.ino](Modulo_2/Aula_4_adc/pratica_02_esp32_ntc.ino) | Calcular temperatura a partir de um NTC em divisor de tensao usando Steinhart-Hart. |
| Aula 7 - MQTT | [pratica_mqtt.ino](Modulo_2/Aula_7_mqtt/pratica_mqtt.ino) | Conectar ESP32 no WiFi do Wokwi, ler DHT22 e publicar JSON via MQTT em broker publico. |
| Aula 8 - pipeline IoT | [esp32_dht22_mqtt.ino](Modulo_2/Aula_8_pipeline_iot/esp32_dht22_mqtt.ino) | Publicar temperatura e umidade no topico `opaiot/temperature` para o pipeline local com Docker. |

### Modulo 3 - Integracao

| Aula | Arquivo | Situacao |
| --- | --- | --- |
| Aula 1 | [integration.ino](Modulo_3/Aula_1/integration.ino) | Arquivo presente como ponto de partida, ainda sem conteudo. |

## Pipeline IoT - Aula 8

A pasta [Modulo_2/Aula_8_pipeline_iot](Modulo_2/Aula_8_pipeline_iot) contem um exemplo fim a fim:

```text
ESP32 + DHT22 no Wokwi
  -> MQTT
  -> Eclipse Mosquitto
  -> Backend Node.js
  -> PostgreSQL/TimescaleDB
  -> Grafana
```

Arquivos principais:

| Arquivo | Descricao |
| --- | --- |
| [QUICKSTART.md](Modulo_2/Aula_8_pipeline_iot/QUICKSTART.md) | Inicio rapido para subir o ambiente. |
| [SETUP.md](Modulo_2/Aula_8_pipeline_iot/SETUP.md) | Passo a passo detalhado de execucao e troubleshooting. |
| [README.md](Modulo_2/Aula_8_pipeline_iot/README.md) | Documentacao principal da Aula 8. |
| [ESTRUTURA.md](Modulo_2/Aula_8_pipeline_iot/ESTRUTURA.md) | Visao tecnica dos arquivos, servicos, portas e fluxo de dados. |
| [INDEX.md](Modulo_2/Aula_8_pipeline_iot/INDEX.md) | Indice dos arquivos da Aula 8. |
| [docker-compose.yml](Modulo_2/Aula_8_pipeline_iot/docker-compose.yml) | Sobe Mosquitto, TimescaleDB, backend Node.js e Grafana. |
| [backend/index.js](Modulo_2/Aula_8_pipeline_iot/backend/index.js) | Consome mensagens MQTT, persiste no banco e expoe API HTTP. |
| [backend/package.json](Modulo_2/Aula_8_pipeline_iot/backend/package.json) | Dependencias Node.js: `mqtt`, `pg` e `dotenv`. |
| [init-db/01-init.sql](Modulo_2/Aula_8_pipeline_iot/init-db/01-init.sql) | Cria hypertable `temperature_metrics`, indices, views e usuario do Grafana. |
| [QUERIES_UTEIS.sql](Modulo_2/Aula_8_pipeline_iot/QUERIES_UTEIS.sql) | Consultas SQL para inspecao, estatisticas e uso no Grafana. |
| [grafana/provisioning/datasources/datasources.yml](Modulo_2/Aula_8_pipeline_iot/grafana/provisioning/datasources/datasources.yml) | Datasource TimescaleDB para o Grafana. |
| [grafana/provisioning/dashboards/dashboards.yml](Modulo_2/Aula_8_pipeline_iot/grafana/provisioning/dashboards/dashboards.yml) | Provisionamento de dashboards. |
| [grafana/provisioning/dashboards/iot-temperature-dashboard.json](Modulo_2/Aula_8_pipeline_iot/grafana/provisioning/dashboards/iot-temperature-dashboard.json) | Dashboard de temperatura e umidade. |
| [mosquitto/config/mosquitto.conf](Modulo_2/Aula_8_pipeline_iot/mosquitto/config/mosquitto.conf) | Configuracao do broker MQTT Mosquitto. |
| [dados-teste.json](Modulo_2/Aula_8_pipeline_iot/dados-teste.json) | Payload de exemplo para testes. |
| [test-mqtt.sh](Modulo_2/Aula_8_pipeline_iot/test-mqtt.sh) | Script Bash para testar publicacao MQTT. |
| [manage.bat](Modulo_2/Aula_8_pipeline_iot/manage.bat) | Script auxiliar para Windows. |

Para subir o pipeline:

```powershell
cd Modulo_2\Aula_8_pipeline_iot
docker-compose up -d
```

Servicos esperados:

| Servico | Endereco |
| --- | --- |
| MQTT | `mqtt://localhost:1883` |
| API Backend | `http://localhost:3000` |
| Ultima leitura | `http://localhost:3000/api/latest` |
| Grafana | `http://localhost:3001` |
| PostgreSQL/TimescaleDB | `localhost:5432` |

Observacao: a configuracao atual do Docker Compose usa Eclipse Mosquitto como broker MQTT. Alguns textos internos ainda podem mencionar HiveMQ em exemplos antigos, mas os arquivos de execucao atuais apontam para o servico `mosquitto`.

## Topicos MQTT e dados

O pipeline local da Aula 8 espera mensagens no topico:

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

A tabela principal criada no TimescaleDB e:

```text
temperature_metrics
```

Campos principais: `device_id`, `location`, `temperature`, `humidity` e `time`.

## Estado verificado

- O repositorio contem exemplos Arduino `.ino`, documentacao Markdown, configuracoes Docker, backend Node.js, scripts SQL, configuracoes Mosquitto e provisionamento Grafana.
- A pratica de potenciometro aparece em duas aulas: uma introducao em sensores e uma retomada na aula de ADC.
- O arquivo [Modulo_3/Aula_1/integration.ino](Modulo_3/Aula_1/integration.ino) esta vazio e parece reservado para conteudo futuro.
- A pasta da Aula 8 contem documentacao propria; este README raiz serve como indice geral e ponto de entrada para o curso.
