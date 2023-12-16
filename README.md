# Slidev

Slidev的容器化构建

## 使用方法

下面是一个docker-compose示例

```yaml
version: '3'
services:
  app:
    image: mrxianyu/slidev:latest
    build: .
    restart: unless-stopped
    container_name: slidev
    ports:
      - '30303:3030'
    volumes:
      - ./docs:/slidev
    environment:
      - MIRROR=CN
    networks:
      app_net:
        ipv4_address: 10.233.56.10

networks:
  app_net:
    driver: bridge
    ipam:
      driver: default
      config:
        - subnet: 10.233.56.0/24
          gateway: 10.233.56.1
```