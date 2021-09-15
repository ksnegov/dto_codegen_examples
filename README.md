# Кодогенерация DTO в Яндекс Go. Примеры

## Пример с Order

Для генерации кода для модели ((Examples/YML/order.yml Order)), запустите 

```bash
swagger-codegen generate -l swift5 --model-name-suffix Result -Dmodels -i Examples/YML/order.yml -t Templates/
```
Сгенерированный код будет лежать в папке SwaggerClient/Classes/Swaggers/Models/

## Пример с музыкой

Допустим у нас есть пример ((Examples/YML/music_search.yml Order))схемы для ответа на запрос в музыкальный 

Для генерации кода для модели запустите 

```bash
swagger-codegen generate -l swift5 --model-name-suffix Result -Dmodels -i Examples/YML/music_search.yml -t Templates/
```

Сгенерированный код будет лежать в папке SwaggerClient/Classes/Swaggers/Models/
