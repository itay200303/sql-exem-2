import sqlite3

conn = sqlite3.connect('movies.db')
cursor = conn.cursor()

movie_name = input("Enter a movie: ")
genre = input("Enter the genre: ")
country = input("Enter the country: ")
language = input("Enter the language:  ")
year = int(input("Enter year: "))
revenue = float(input("Enter the revenue: "))

cursor.execute(
    '''
    INSERT INTO movies (movie_name, genre, country, language, year, revenue)
    VALUES (?, ?, ?, ?, ?, ?)
''', (movie_name, genre, country, language, year, revenue))

conn.commit()

cursor.execute("SELECT * FROM movies WHERE movie_name = ?", (movie_name,))
new_movie = cursor.fetchone()

if new_movie:
    print("The new movies is:")
    print(f"ID: {new_movie[0]}, movie: {new_movie[1]}, genre: {new_movie[2]}, country: {new_movie[3]}, language: {new_movie[4]}, year: {new_movie[5]}, revenue: {new_movie[6]}")
else:
    print("Unfortunately, we didn't succeed to add this movie...")

conn.close()