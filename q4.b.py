import sqlite3

conn = sqlite3.connect('movies.db')
cursor = conn.cursor()

search_name = input('Enter a movie: ')

cursor.execute("SELECT * FROM movies WHERE movie_name LIKE ?", ('%' + search_name + '%',))
movies = cursor.fetchall()

if movies:
    for movie in movies:
        print(movie)
else:
    print("There aren't movies like it")

conn.close()