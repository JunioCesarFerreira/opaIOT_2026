# Execução dos scripts no Ubuntu

Este diretório contém os scripts didáticos da Aula 1 de datasets:

- `1-inspect.py`: inspeciona o CSV, gera perfis das colunas, resumo numérico, eventos normalizados e schema.
- `2-prometheus.py`: simula uma transmissão de leituras do CSV e expõe métricas Prometheus em `http://localhost:8000/metrics`.

Os scripts usam constantes no topo do arquivo, como `CSV_FILE`, `OUTPUT_DIR`, `PORT` e `INTERVAL_SECONDS`. Para alterar caminhos, porta ou intervalo de atualização, edite essas constantes.

## 1. Preparar o ambiente

No terminal do Ubuntu, entre na raiz do repositório:

```bash
cd ~/source/git/opaIOT_2026
```

Se necessário, instale Python, `pip` e suporte a ambientes virtuais:

```bash
sudo apt update
sudo apt install -y python3 python3-pip python3-venv
```

Crie e ative um ambiente virtual para esta aula:

```bash
cd Modulo_3/Aula_1_datasets/scripts
python3 -m venv .venv
source .venv/bin/activate
```

Atualize o `pip` e instale as dependências:

```bash
python -m pip install --upgrade pip
python -m pip install -r requirements.txt
```

## 2. Executar a inspeção do dataset

Ainda dentro da pasta `scripts`, execute:

```bash
python 1-inspect.py
```

O script lê o arquivo:

```text
../data/IoT_Indoor_Air_Quality_Dataset.csv
```

E gera os resultados em:

```text
../outputs/
```

Arquivos esperados:

- `columns_profile.csv`
- `semantic_classification.csv`
- `numeric_summary.csv`
- `normalized_events.jsonl`
- `iot_event_schema.json`
- `inspection_summary.json`

## 3. Executar o exportador Prometheus

Execute:

```bash
python 2-prometheus.py
```

O terminal ficará em execução contínua, publicando as métricas em:

```text
http://localhost:8000/metrics
```

Para conferir pelo terminal:

```bash
curl http://localhost:8000/metrics
```

Para encerrar o script, pressione `Ctrl+C`.

## 4. Observações importantes

Execute os arquivos diretamente com `python nome_do_script.py`. Não use `python -m`, pois os nomes `1-inspect.py` e `2-prometheus.py` são nomes de arquivo, não nomes de módulo Python.

Se a porta `8000` já estiver em uso, edite a constante no topo de `2-prometheus.py`:

```python
PORT = 8000
```

Se o CSV mudar de nome ou local, edite a constante `CSV_FILE` no topo dos scripts.
