1. Встановіть СКБД PostgreSQL, отримавши для вашої ОС інсталяційний пакет з https://www.postgresql.org/download/ <p><img width="412" alt="image" src="https://user-images.githubusercontent.com/52915030/203789207-06d68df1-7656-4fff-a9ad-152534623488.png">
 </p>
2. Створіть термінальну консоль psql через утиліту командного рядка вашої ОС та встановіть з’єднання з БД postgres від імені користувача адміністратора postgres <p> <img width="505" alt="image" src="https://user-images.githubusercontent.com/52915030/203799678-cea6770c-dbc8-434d-8b10-e4fc80231be3.png"> </p>
3. Зареєструйте нового користувача в СКБД PostgreSQL, назва якого співпадає з вашим ім'ям, наприклад ivan, і довільним паролем. <p> <img width="396" alt="image" src="https://user-images.githubusercontent.com/52915030/203800055-655a3607-32de-4e41-bd46-aca7bbec51a8.png"> </p>
4. Створіть роль в СКБД PostgreSQL (назва співпадає з вашим прізвищем латинськими літерами) і надайте новому користувачеві можливість наслідувати цю роль. <p> <img width="399" alt="image" src="https://user-images.githubusercontent.com/52915030/203800791-6d18cac4-2913-4b32-b9ef-03557e3bc975.png"></p>
5. Створіть реляційну таблицю з урахуванням варіанту з таблиці 2.1 від імені користувача-адміністратора. <p> <img width="514" alt="image" src="https://user-images.githubusercontent.com/52915030/203800984-e101f46b-7db8-497b-98c7-34e9af1cc2cf.png"> </p>
6. Внесіть один рядок в таблицю, використовуючи команду insert into ..., відповідно до варіанту. <p> <img width="370" alt="image" src="https://user-images.githubusercontent.com/52915030/203801216-a0571f6c-bd3c-43f6-a54e-1a9aab6f11db.png"> </p>
7. Додатково створіть ще одну термінальну консоль psql та та встановіть з’єднання з БД postgres від імені нового користувача. <p> <img width="598" alt="image" src="https://user-images.githubusercontent.com/52915030/203808995-a4727699-ceac-413c-8e39-3a9a5bfecb09.png"></p>
8. 
 
