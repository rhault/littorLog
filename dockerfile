# Usa uma imagem do Python
FROM python:3.9-slim

# Configura o diretório de trabalho dentro do container
WORKDIR /app

# Instala dependências do sistema
RUN apt-get update && apt-get install -y libpq-dev gcc

# Copia os arquivos do projeto
COPY . /app/

#Script de inicialização
RUN chmod +x ./start.sh

# Atualiza o pip
RUN pip install pip --upgrade

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Porta na que se executa o projeto
EXPOSE 8000

# Comando para iniciar o servidor
CMD  sh -c "python manage.py runserver 0.0.0.0:8000"
