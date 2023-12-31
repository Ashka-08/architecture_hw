# Архитектура ПО (семинары)

## Урок 1. Введение в понятие архитектуры, проектирование ПО и жизненный цикл программного продукта. UML-диаграммы

* Задание 1. 

На основе Диаграмы классов написать код, без реализации метод (конструкторы нужно написать ). UML можно найти в презентации.Сдавать работы ТОЛЬКО через Github

* Задание 2. 

Ознакомиться с документацией в свободном формате, которая может пригодиться Вам для дальнейшей работы:

ГОСТ Р ИСО/МЭК 12207-2010 Информационная технология (ИТ). Системная и программная инженерия. Процессы жизненного цикла программных средств.

ISO/IEC/IEEE 29148:2018 Systems and software engineering — Life cycle processes — Requirements engineering

Стандарты ЕСКД — единая система конструкторской документации

ГОСТ 2.001-2013 ЕСКД. Общие положения

Стандарты АСУ ГОСТ 34 — автоматизированные системы управления

Стандарты ЕСПД ГОСТ 19 — единая система программной документации


## Урок 2. Объектно-ориентированные паттерны

* Задание 1. 

Закончить разработку паттерна Фабричный метод

* Задание 2. 

Познакомиться с другими типами паттернов (задание по желанию)

## Урок 3. Принципы SOLID

Доработать упражнение, начатое на занятии

Создать UML диаграммы классов для принципов SOLID

## Урок 4. Компоненты. Принципы связности и сочетаемости компонентов

Доработать упражнение, начатое на занятии

Расширить UML диаграмму классов и реализовать ее в коде, используя контрактное программирование.

## Урок 5. Горизонтальные уровни и вертикальные срезы архитектуры

Сформировать компоненты для любой системы из задания. Выпустить диаграмму компонент UML.

## Урок 6. Принципы построения приложений «чистая архитектура»

Разработать полную ERD домена в https://www.dbdesigner.net/.

## Урок 7. Типа архитектур WEB-приложений: MPA, SPA.

Доработать экранные формы интерфейса в https://www.figma.com/ или https://app.diagrams.net/.

Разработать полную ERD домена в https://www.dbdesigner.net/.

Разработать диаграмму компонент в UML включая слои пользовательского интерфейса и бизнес-логики.

## Урок 8. Типы архитектур прикладных приложений (мобильные): MVC, MVP, MVVM.

Разработать экранные формы интерфейса в https://www.figma.com/ или https://app.diagrams.net/.

Разработать полную ERD домена в https://www.dbdesigner.net/.

Разробать полную UML(MVP) в https://online.visual-paradigm.com

Разработать блок-схему алгоритма взамодействия MVP.

## Урок 9. Способы организации передачи данных между компонентами приложения, протоколы и API. REST, gRPC, очереди

Разработать полную ERD домена в https://www.dbdesigner.net/.

Дополнить swagger (https://editor.swagger.io/) ответами домена (cloud) и смоделировать ошибки REST «400, 500» типов.

Так же добавить PUT запрос

Имплементировать сгенерированный swagger код в приложения студента(через репозиторий).

## final_hw

Сквозной проект. Семинары 10-12

Семинар 10,11 и 12 представляют из себя сквозной проект.

Цель задания: научиться проектировать облачное приложение.

Задание: Спроектировать облачное приложение с интерфейсами в браузере и нативными интерфейсами в мобильных устройствах.

Необходимо спроектировать облачный сервис домашнего робота пылесоса для уборки помещений.
Результатом должны быть: компоненты интерфейсов, доменная модель, Use case, компонентные диаграммы, EDR, API контракты, тестовые сценарии.

Выполняется постепенно, в течении 3-х семинаров (блоков).


### Урок 10. Структура приложения с пользовательским интерфейсом и базой данных (паттерн Repository)

Доработать пункты задания Блока 1: a, b, c, d, e, f, g.

Задание: https://docs.google.com/document/d/1y5JSe2Vk64ed7c1IE6XRSYfMTzHGm7g2q-f0jRAo6eg/edit#heading=h.9uk02kr00e58

Блок 1 

Задание:

a. Спроектировать пользовательский интерфейс (web-SPA, native mobile), основные компоненты (подключение робота, управление помещениями, расписание работы, сервисное обслуживание робота, история уборок), https://www.figma.com/  или https://app.diagrams.net/.

b. Спроектировать доменную модель, в виде текста Домен – атрибуты.

c. Спроектировать сценарии (Use case)(подключение, выбор помещения, программы уборки, настройка расписания, просмотр статистики..), в виде Актор – Прецедент (из первой лекции).

d. Спроектировать слой  API Gateway (mobile, web), сформировать REST запросы: GET, POST, PUT, DELETE (https://swagger.io).

(дополнительно, по желанию) Разработать REST контракты API между компонентами и сгенерировавать (автоматически на ресурсе https://swagger.io) код на разных языках программирования.

e. Спроектировать компоненты бизнес-логики и связать их API Gateway с применением паттерна BFF https://app.diagrams.net/.

f. Определить состав информации для кеширования на уровне приложения пользователя, API Gateway, уровня бизнес-логики и уровня репозитория. Список.

g. Спроектировать ER модель (https://www.dbdesigner.net/), запросы в БД и уровень хранения данных (СУБД).

Инструменты:

* https://www.figma.com/
* https://app.diagrams.net/
* https://www.dbdesigner.net/
* https://swagger.io

### Урок 11. Сервис-ориентированные архитектуры

h. Спроектировать компонент подключения по API к производителю роботов-пылесосов, для обновления прошивок и передачи диагностических данных https://app.diagrams.net/.

i. Спроектировать адаптеры интерфейсов в виде компонент (подключение к БД, шлюзы к интерфейсу, шлюзы к третьим источникам) https://app.diagrams.net/.

j. Спроектировать компонент внешнего конфигурирования для настройки компонент бизнес-логики (параметры конкретного робота) https://app.diagrams.net/.

k. Спроектировать и имплементировать компонент самодиагностики (Self-checking). Который собирает статус работоспоспособности и времени запроса на каждый компонент уровня API Gateway, бизнес-логики и слоя управления данными. Включая технологический интерфейс для мониторинга https://grafana.com/ или https://prometheus.io/ .

l. Выбрать метрики для наблюдения за инфраструктурой на которой будет развёрнуто решение (процессор, память, диск).

Домашнее задание:

Доработать пункты задания h, i, j, k, l.

Инструменты:
* https://app.diagrams.net/
* https://grafana.com/
* https://prometheus.io/
