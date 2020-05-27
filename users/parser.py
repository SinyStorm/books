import csv
import re
import bcrypt

manager = {
    'Владимир': 1,
    'Вязники': 2,
    'Гороховец': 2,
    'Ковров': 4,
    'Камешки': 5,
    'Суздаль': 6,
    'Гусь Хрустальный': 7,
    'Муром': 8,
    'Меленки': 9,
    'Радужный': 10,
    'Селиваново': 11,
    'Судогда': 12,
    'Александров': 13,
    'Киржач': 14,
    'Кольчугино': 15,
    'Петушки': 16,
    'Собинка': 17,
    'Юрьев Польский': 18
}

queries = open('users.sql', 'w')
users = open('users.csv', 'r')
reader = csv.DictReader(users, delimiter=';')

for row in reader:
    login = re.sub(r"\s+", " ", row['login']).strip()
    password = bcrypt.hashpw(re.sub(r"\s+", " ", row['password']).strip().encode(), bcrypt.gensalt(rounds=10, prefix=b"2a"))
    city = re.sub(r"\s+", " ", row['city']).strip()
    name = re.sub(r"\s+", " ", row['name']).strip()
    addr = re.sub(r"\s+", " ", row['addr']).strip()
    inn = re.sub(r"\s+", " ", row['inn']).strip()
    kpp = re.sub(r"\s+", " ", row['kpp']).strip()
    ogrn = re.sub(r"\s+", " ", row['ogrn']).strip()
    bank = re.sub(r"\s+", " ", row['bank']).strip()
    bik = re.sub(r"\s+", " ", row['bik']).strip()
    acc = re.sub(r"\s+", " ", row['acc']).strip()
    phone = re.sub(r"\s+", " ", row['phone']).strip()
    mail = re.sub(r"\s+", " ", row['mail']).strip()

    queries.write(f"""
INSERT INTO "users"("login","password","role","name","address","inn","kpp","ogrn","bank","bik","checking_account","phone","email","manager")
VALUES
('{login}', '{password}', 'USER', '{name}', '{addr}', '{inn}', '{kpp}', '{ogrn}', '{bank}', '{bik}', '{acc}', '{phone}', '{mail}', {manager[city]});
""")
