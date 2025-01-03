# Используем официальный образ Go
FROM golang:1.20

# Устанавливаем рабочую директорию внутри контейнера
WORKDIR /app

# Копируем исходный код в контейнер
COPY . .

# Компилируем приложение
RUN go build -o backend ./main.go

# Открываем порт 8080
EXPOSE 8080

# Запускаем приложение
CMD ["/app/backend"]
