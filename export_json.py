import json
import psycopg2

username = 'HRYHORENKO_VALERII'
password = '111'
database = 'db_lab3_game'

conn = psycopg2.connect(user=username, password=password, dbname=database)

data = {}
with conn:

    cur = conn.cursor()
    
    for table in ("developer", "game", "game_genre", "publisher"):
        cur.execute('SELECT * FROM ' + table)
        rows = []
        fields = [x[0] for x in cur.description]

        for row in cur:
            rows.append(dict(zip(fields, row)))

        data[table] = rows

with open('all_data.json', 'w') as outf:
    json.dump(data, outf, default = str)
    