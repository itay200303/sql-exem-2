import sqlite3

conn = sqlite3.connect('movies.db')
cursor = conn.cursor()

cursor.execute("SELECT * FROM movies")
movies = cursor.fetchall()

for movie in movies:
    print(movie)

conn.close()