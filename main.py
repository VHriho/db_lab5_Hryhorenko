import psycopg2
import matplotlib.pyplot as plt

username = 'HRYHORENKO_VALERII'
password = '111'
database = 'db_lab3_game'
host = 'localhost'
port = '5432'


query_1 = '''
DROP VIEW IF EXISTS Request2aFromLab4;
CREATE VIEW Request2aFromLab4 AS
SELECT game_genre.genre, COUNT(game_genre.genre) AS Number_Of_Games FROM game
LEFT JOIN game_genre ON game.game_id = game_genre.game_id
GROUP BY genre;
SELECT * FROM Request2aFromLab4;
'''

query_2 = '''
DROP VIEW IF EXISTS Request2bFromLab4;
CREATE VIEW Request2bFromLab4 AS
SELECT developer.name AS Develop_Name, publisher.name AS Publisher_Name, game.sales, game.name AS Game_Name FROM game 
CROSS JOIN (developer CROSS JOIN publisher) 
WHERE developer.developer_id = publisher.publisher_id 
AND game.game_id = developer.developer_id
AND game.sales >= 20;
SELECT * FROM Request2bFromLab4;
'''

query_3 = '''
DROP VIEW IF EXISTS Request2cFromLab4;
CREATE VIEW Request2cFromLab4 AS
SELECT game.name AS Game_Name, game.sales, game.series, game.release, game_genre.genre, developer.name AS Developer_Name, publisher.name AS Publisher_Name FROM 
(game CROSS JOIN game_genre) 
CROSS JOIN 
(developer CROSS JOIN publisher) 
WHERE game.game_id = game_genre.game_id 
AND developer.developer_id = publisher.publisher_id 
AND game.game_id = developer.developer_id 
ORDER BY game.sales ASC;
SELECT * FROM Request2cFromLab4;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:

    cur1 = conn.cursor()
    cur1.execute(query_1)
    genre1 = []
    quantity1= []

    for row in cur1:
        genre1.append(row[0])
        quantity1.append(row[1])

    cur2 = conn.cursor()
    cur2.execute(query_2)
    dev = []
    publish = []
    game = []
    quantity2 = []

    for row in cur2:
        dev.append(row[0])
        publish.append(row[1])
        quantity2.append(row[2])
        game.append(row[3])

    cur3 = conn.cursor()
    cur3.execute(query_3)
    game1 = []
    sales = []
    series = []
    release = []
    genre = []
    developer = []
    publisher = []

    for row in cur3:
        game1.append(row[0])
        sales.append(row[1])
        series.append(row[2])
        release.append(row[3])
        genre.append(row[4])
        developer.append(row[5])
        publisher.append(row[6])

plt.bar(x = genre1, height = quantity1, color = 'tan', width=0.5)
plt.title('Кількість ігор у кожному жанрі')
plt.xlabel('Жанри')
plt.ylabel('Кількість ігор')
plt.xticks(rotation = 88)
plt.show()

plt.pie(quantity2, labels = game, autopct = '%1.1f%%')
plt.title('Частка копій гри від загально кількості')
plt.show()

plt.bar(x = game1, height = sales, color = 'tan', width=0.5)
plt.title('Кількість копій кожної гри')
plt.xlabel('Назва гри')
plt.ylabel('Кількість копій')
plt.xticks(rotation = 88)
plt.savefig('new_graphs.png')
plt.show()