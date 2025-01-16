#!/bin/bash

# Проверка доступности порта 80
if ! nc -z localhost 80; then
    exit 1
fi

# Проверка наличия файла index.html
if [ ! -f /var/www/html/index.html ]; then
    exit 1
fi

exit 0
