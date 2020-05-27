import csv
import psycopg2


def wrapNull(str):
    if str == '' or str == ' ':
        return None
    return str


def wrapprice(str):
    if str == '' or str == ' ':
        return None
    return str.replace(',', '.')


conn = psycopg2.connect(host="localhost", database="books", user="sidnystorm", password="gbgbcmrj6")
cur = conn.cursor()

with open('drofa.csv', newline='') as csvfile:
    reader = csv.reader(csvfile, delimiter=';', quotechar='"')
    values = list()
    for row in reader:
        try:
            # (author, name, grade, price, *rest) = row
            (grade, author, name, price, *rest) = row  # drofa
            # (grade, name, price, *rest) = row  # ruword
            values.append((wrapNull(grade), wrapNull(author), wrapNull(name), wrapprice(price)))
        except:
            values.append((wrapNull(None), wrapNull(None), wrapNull(None), wrapprice(None)))

    cur.executemany('insert into book_drofa (grade, author, name, price) values (%s, %s, %s, %s)', values)
conn.commit()
cur.close()
