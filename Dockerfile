# Используем стабильную версию Python
FROM python:3.11-slim

# Устанавливаем системные зависимости (SSH нужен для подключения к хостам)
RUN apt-get update && apt-get install -y \
ssh \
sshpass \
&& rm -rf /var/lib/apt/lists/*

# Устанавливаем сам Ansible через pip
RUN pip install --no-cache-dir ansible

# (Опционально) Рабочая директория для ваших плейбуков
WORKDIR /ansible

COPY . .

# Запуск по умолчанию
CMD ["ansible", "--version"]