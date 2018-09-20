# Test task

Иногда менеджерам требуется составлять шаблоны писем с динамическими данными. 
Поэтому требуется разработать сервис, который позволит создавать и хранить шаблоны, а также отправлять письма на их основе.

### Данные:

```ruby
Account(balance:float currency:string name:string email:string)
Message(title:string, text:text)
```

### Пример сообщения:
```html
"Здравствуйте, {{name}}. Ваш баланс: {{balance}}{{currency}}".
```

### Пример отправки:
```ruby
AccountMailer.notify(@message, @account).deliver_now
```
