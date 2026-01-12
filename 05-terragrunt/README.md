# FASE 11 – Terragrunt (Módulos + Ambientes)

Este projeto é um exemplo **local** para aprender Terragrunt, utilizando:

- Módulos reutilizáveis (`modules/vpc`)  
- Ambientes separados (`live/dev` e `live/prod`)  
- Apply isolado por stack  
- State local (simula produção sem AWS real)  

---

## Estrutura do projeto

05-terragrunt/  
├── modules/    
│ └── vpc/ # módulo reutilizável    
├── live/           
│ ├── dev/ # ambiente dev                       
│ └── prod/ # ambiente prod                             
└── README.md


---

## Como usar

1. Entre na pasta do ambiente desejado:

```bash
cd live/dev/vpc   # ou cd live/prod/vpc

Inicialize Terragrunt:
terragrunt init


Aplique a infraestrutura (simulada):
terragrunt apply

Resultado: um arquivo .txt simula o recurso criado (dev-vpc.txt ou prod-vpc.txt).

Conceitos aprendidos:

Módulo único, múltiplos ambientes → DRY total
Inputs por ambiente → cada ambiente isolado
Apply isolado por stack → prod protegido
Organização escalável → fácil adicionar stage, qa, etc