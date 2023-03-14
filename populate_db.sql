#Створи файл init_db.sql, у якому змоделюй структуру бази даних для компанії MegaSoft згідно брифінгу. Мають бути наступні таблиці:

    worker - таблиця для працівників. У таблиці мають бути наступні поля:
        ID - ідентифікатор працівника, ціле число, сурогатний первинний ключ.
        NAME - ім'я працівника, рядок. Обмеження - не має бути NULL, довжина має бути від 2 до 1000 символів включно.
        BIRTHDAY - дата народження. Рік у цій даті має бути більшим за 1900
        LEVEL - рівень технічного розвитку працівника. Має бути обмеження - це поле не може бути NULL, значення поля може бути одним з - Trainee, Junior, Middle, Senior
        SALARY - заробітна плата працівника за 1 місяць. Обмеження - ціле число, не менше 100 і не більше 100 000
    client - таблиця для клієнтів. Мають бути наступні поля:
        ID - ідентифікатор клієнта, ціле число, сурогатний первинний ключ.
        NAME - ім'я працівника, рядок. Обмеження - не має бути NULL, довжина має бути від 2 до 1000 символів включно.
    project - таблиця для проєктів. Мають бути наступні поля:
        ID - ідентифікатор проєкту, ціле число, сурогатний первинний ключ.
        CLIENT_ID - ідентифікатор клієнта, що замовив цей проєкт
        START_DATE - дата початку виконання проєкту
        FINISH_DATE - дата кінця виконання проєкту
    project_worker - таблиця, що показує, які працівники над якими проєктами працюють. Поля таблиці:
        PROJECT_ID - ідентифікатор проєкту. Зовнішній ключ для таблиці project(id)
        WORKER_ID - ідентифікатор клієнту. Зовнішній ключ для таблиці worker(id)
        первинний ключ для цієї таблиці - складений, пара (PROJECT_ID, WORKER_ID
                                                    TO DO name 2<VARCHAR<1000 
CREATE TABLE worker (id IDENTITY PRIMARY KEY, name VARCHAR(1000) NOT NULL CHECK(2<= name and name <=1000), birthday DATE, level ENUM('Trainee', 'Junior', 'Middle', 'Senior'), salary INT NOT NULL CHECK(100<=salary and salary<=100000))
