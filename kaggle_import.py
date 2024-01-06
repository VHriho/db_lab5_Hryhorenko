import csv
import decimal
import psycopg2

username = 'HRYHORENKO_VALERII'
password = '111'
database = 'db_lab3_game'

INPUT_CSV_FILE = 'Games.csv'

query_00 = '''
DELETE FROM game_genre;
'''

query_01 = '''
DELETE FROM game;
'''

query_02 = '''
DELETE FROM developer;
'''

query_03 = '''
DELETE FROM publisher;
'''

query_1 = '''
INSERT INTO game_genre (genre, genre_id, game_id) VALUES (%s, %s, %s)
'''

query_2 = '''
INSERT INTO game (game_id, name, sales, series, release, developer_id, publisher_id) VALUES (%s, %s, %s, %s, %s, %s, %s)
'''

query_3 = '''
INSERT INTO developer (developer_id, name) VALUES (%s, %s)
'''

query_4 = '''
INSERT INTO publisher (publisher_id, name) VALUES (%s, %s)
'''

conn = psycopg2.connect(user=username, password=password, dbname=database)

data = 0

with conn:
    cur = conn.cursor()
    cur.execute(query_00)
    cur.execute(query_01)
    cur.execute(query_02)
    cur.execute(query_03)
    with open(INPUT_CSV_FILE, 'r', encoding='utf-8') as inf:
        reader = csv.DictReader(inf)
        for idx, row in enumerate(reader):
            values01 = (row['Genre'], idx + 1, idx + 1) 
            values02 = (idx + 1, row['\ufeffName'], row['Sales'], row['Series'], row['Release'], idx + 1 , idx + 1) 
            values03 = (idx + 1, row['Developer'])
            values04 = (idx + 1, row['Publisher'])
            cur.execute(query_3, values03)
            cur.execute(query_4, values04)
            cur.execute(query_2, values02)
            cur.execute(query_1, values01)
            data = idx


    conn.commit()

print(f"Success import: {data} items")