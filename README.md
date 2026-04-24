# Twitter API v1.1 ETL - Coleta Sequencial de Dados

## Descrição

Este projeto implementa um processo ETL (Extract, Transform, Load) sequencial para coleta de dados da Twitter API v1.1 (Legacy API). O script realiza a coleta de tweets georreferenciados em um raio de 80km ao redor das capitais brasileiras, permitindo análises regionais de conversas no Twitter sobre temas específicos.

## ⚠️ ATENÇÃO: CÓDIGO OBSOLETO ⚠️

> **Este repositório é mantido apenas para fins históricos e de arquivamento.**

- ❌ Não receberá mais atualizações
- ❌ Utiliza Twitter API v1.1 que foi descontinuada
- ❌ Os pacotes `twitteR` e `ROAuth` não são mais mantidos
- ✅ Mantido como referência para estudos e portfólio

## Badges

[![Status: Obsoleto](https://img.shields.io/badge/Status-Deprecated-red.svg)](https://github.com/seu-usuario/seu-repo)
[![Twitter API v1.1](https://img.shields.io/badge/Twitter%20API-v1.1-blue.svg)](https://developer.twitter.com)

## Objetivos

<div>
  <ul>
    <li>Coletar tweets de forma georreferenciada por capitais brasileiras</li>
    <li>Implementar processo ETL para transformação e padronização dos dados</li>
    <li>Consolidar dados de múltiplas localidades em um único dataset</li>
    <li>Realizar análises de engajamento e identificação de perfis ativos</li>
    <li>Demonstrar técnicas de coleta com a API legada do Twitter</li>
  </ul>
</div>

## Principais Funcionalidades

- Coleta geolocalizada com raio de 80km por capital
- Tratamento de rate limit com parâmetros de retry
- Padronização de dados por estado e sessão
- Cálculo de métricas de engajamento (likes + retweets)
- Identificação de perfis mais ativos e influentes
- Suporte a múltiplos pacotes da API Twitter (twitteR, rtweet)

## Estrutura do Projeto
<pre><code>
├── etl/
│ └── twitter_etl_script.R   Script principal de coleta e transformação
├── data/
│ └── outputs/   Diretório para arquivos CSV gerados
├── docs/
│ └── schema_design.md   Documentação do esquema de dados
├── DEPRECATED.md   Informações sobre descontinuação
└── README.md   Este arquivo
</code></pre>
