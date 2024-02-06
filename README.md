# Описание Работы Приложения

## Взаимодействие Пользователей

- **Вход в Приложение**:
  - Пользователь 1 входит в приложение в одном окне браузера.
  - Пользователь 2 входит в приложение во втором окне браузера.
  - Пользователь 3 входит в приложение в третьем окне браузера.

- **Обмен Сообщениями**:
  - Пользователь 1 пишет:
    - Сообщение 1 второму пользователю.
    - Сообщение 2 в группу «все пользователи».
  - Пользователь 2 получает оба сообщения.
  - Пользователь 3 получает только Сообщение 2.

## Особенности Реализации

- Создание необходимых пользователей с помощью seed.
- Форма чата "облагорожена" с помощью Tailwind, поддерживает множество сообщений со скроллингом.
- Анимация на фронте реализована с помощью Stimulus.

## Технологический Стек

- Rails 7.1
- Ruby 3.2.2
- Tailwind
- Stimulus

## Тестирование

- RSpec для тестирования методов моделей и request-тестов в качестве замены тестов на контроллеры.
- Cucumber для интеграционного тестирования.
