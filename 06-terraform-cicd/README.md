# 📦 Terraform + Terragrunt – Estudo de Infraestrutura como Código
## 🎯 Objetivo

Este repositório existe para aprender Terraform e Terragrunt no nível de produção, simulando:

Módulos reutilizáveis

Ambientes isolados (dev e prod)

State separado

Execução automatizada via CI/CD

Tudo local, sem criar recursos reais na AWS

## 🧠 Conceito central

Terraform descreve infraestrutura
Terragrunt organiza ambientes
CI/CD apenas executa o que já existe no código

## 📂 Estrutura do projeto
modules/ 
└── vpc/  
    ├── main.tf    
    ├── variables.tf  
    └── outputs.tf  

terragrunt/  
└── live/  
    ├── dev/  
    │   └── vpc/  
    │       └── terragrunt.hcl  
    └── prod/  
        └── vpc/    
            └── terragrunt.hcl  

.github/  
└── workflows/   
    ├── ci.yml    
    ├── cd-dev.yml   
    └── cd-prod.yml   

## 🧩 Módulos

Os módulos representam componentes reutilizáveis, não ambientes.

Exemplo: modules/vpc

Eles:

Não sabem se são dev ou prod

Recebem tudo por input

Podem ser usados em qualquer ambiente

## 🌍 Ambientes (Terragrunt)

Cada ambiente possui:

State próprio

Inputs próprios

Execução isolada

Exemplo (terragrunt/live/dev/vpc/terragrunt.hcl):

terraform {
  source = "../../../modules/vpc"
}

inputs = {
  env      = "dev"
  filename = "dev-vpc.txt"
}

## 🔁 CI/CD

O CI/CD não cria infraestrutura nova.

Ele apenas:

Executa terragrunt nas pastas corretas

Em máquinas limpas

Com regras de segurança

## Pipelines     
CI	Validação (fmt, validate, plan)  
CD Dev	Apply automático em dev  
CD Prod	Apply com aprovação manual

## 🧪 Execução local

Você pode executar tudo localmente:

cd terragrunt/live/dev/vpc
terragrunt apply


Ou simular o GitHub Actions com act.

## 🔐 Segurança

Secrets nunca ficam no código

Prod exige aprovação manual

Dev é automatizado

## 🧠 Conclusão

Este projeto demonstra infraestrutura tratada como produto, não como script.