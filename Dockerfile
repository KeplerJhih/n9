FROM golang:1.23-alpine3.20


# 指定台灣時區
ENV TZ=Asia/Taipei

# 安裝基本工具
RUN apk add --no-cache \
    curl \
    tzdata \
    && rm -rf /var/cache/apk/*

# 安裝工具
RUN go install github.com/air-verse/air@latest && \
    go install github.com/swaggo/swag/cmd/swag@latest


WORKDIR /app

RUN air init

# 用於gin
EXPOSE 8080

# 默認的啟動命令
CMD ["air", "-c", ".air.toml"]