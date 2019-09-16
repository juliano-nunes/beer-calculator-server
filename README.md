# Projeto Beer Calculador
API que calcula a melhor cerveja para tomar de acordo com a temperatura informada

### Pré-Requisitos

**Dependências:** 
```
- Docker
```
## Preparando ambiente com Docker

Acesse o diretório em que o repositório foi clonado através do terminal e
execute os comandos:
 - `docker build -t basement/beer-calculator-server .` para compilar imagens, criar containers etc.
 - `docker run -it -p 3000:3000 --rm --name beer-calculator-server basement/beer-calculator-server` para instalar as `gemas`, criar banco de dados e inicializar
 o servidor
