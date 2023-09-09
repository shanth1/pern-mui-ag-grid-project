export const categories = [
    {
        id: "1",
        title: "База данных",
        checklist: [
            "База данных company в Postgres с двумя таблицами",
            "Таблицы связаны по полю foreign key у office",
            "Каждая таблица имеет поле-ключ и другие поля",
            "Скрипт init-db.sql в корневой папке проекта",
        ],
    },
    {
        id: "2",
        title: "Серверная часть",
        checklist: [
            "Подключение к БД с помощью sequalize",
            "Часть функций написана на SQL (запросы к таблице office)",
            "Частичная подгрузка данных для office с помощью LIMIT и OFFSET",
            "Роутеры написаны по архитектурному стилю REST API",
            "Сервер реализует CRUD операции",
            "Серверная часть разбита на папки models, controllers и routes по сущностям employee и office",
            "Валидация данных и обработка ошибок",
            "Сервер-сайд фильтрация и сортировка для таблицы office",
        ],
    },
    {
        id: "3",
        title: "Клиентская часть",
        checklist: [
            "Dashboard c боковым меню из пунктов Таблицы, Профиль, Чекликст",
            "2 таблицы Ag-Grid с данными, полученными от сервера",
            "Над связанной таблицей () кнопки Добавить, Изменить, Удалить",
            "Добавление/изменение записи учитывает связь с главной таблицей",
            "Главная таблица (Employee) реализует infinite loading",
            "Dashboard использует шаблон c сайта Creative Tim (Material Dashboard 2 React)",
            "Валидация вводимых данных",
            "Кастомизация и адаптивность",
        ],
    },
    {
        id: "4",
        title: "Деплой",
        checklist: [
            "Инструкция по запуску в README.md",
            "Docker и Docker compose",
        ],
    },
];