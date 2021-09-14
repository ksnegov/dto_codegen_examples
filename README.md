# Кодогенерация DTO в Яндекс Go. Примеры

## Пример с Order

Для генерации кода для модели Order, запустите 

```bash
swagger-codegen generate -l swift5 --model-name-suffix Result -Dmodels -i Examples/order.yml -t Templates/ -o ~/Downloads/
```
Сгенерированный код будет лежать в папке ~/Downloads/SwaggerClient/Classes/Swaggers/Models/

## Пример YML #2

Как запустить и сгенерировать код #2


