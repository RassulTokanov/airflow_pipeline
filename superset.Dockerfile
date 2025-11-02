# Берем официальный образ Superset за основу
FROM apache/superset:latest

# Переключаемся на пользователя root, чтобы иметь права на установку
USER root

# Копируем наш файл с зависимостями внутрь образа
COPY ./requirements-superset.txt /app/

# Запускаем установку драйвера
RUN pip install -r /app/requirements-superset.txt

# Возвращаемся к стандартному пользователю superset для безопасности
USER superset