--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10
-- Dumped by pg_dump version 10.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: address_type; Type: TYPE; Schema: public; Owner: sidnystorm
--

CREATE TYPE public.address_type AS ENUM (
    'JURIDICAL',
    'MAILING',
    'SHIPPING'
);


ALTER TYPE public.address_type OWNER TO sidnystorm;

--
-- Name: role; Type: TYPE; Schema: public; Owner: sidnystorm
--

CREATE TYPE public.role AS ENUM (
    'ADMIN',
    'USER'
);


ALTER TYPE public.role OWNER TO sidnystorm;

--
-- Name: user_role; Type: TYPE; Schema: public; Owner: sidnystorm
--

CREATE TYPE public.user_role AS ENUM (
    'ADMIN',
    'USER'
);


ALTER TYPE public.user_role OWNER TO sidnystorm;

--
-- Name: user_type; Type: TYPE; Schema: public; Owner: sidnystorm
--

CREATE TYPE public.user_type AS ENUM (
    'JURIDICAL',
    'PHYSICAL'
);


ALTER TYPE public.user_type OWNER TO sidnystorm;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: book_academ; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_academ (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_academ OWNER TO sidnystorm;

--
-- Name: book_academ_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_academ_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_academ_id_seq OWNER TO sidnystorm;

--
-- Name: book_academ_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_academ_id_seq OWNED BY public.book_academ.id;


--
-- Name: book_binom; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_binom (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_binom OWNER TO sidnystorm;

--
-- Name: book_binom_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_binom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_binom_id_seq OWNER TO sidnystorm;

--
-- Name: book_binom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_binom_id_seq OWNED BY public.book_binom.id;


--
-- Name: book_drofa; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_drofa (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_drofa OWNER TO sidnystorm;

--
-- Name: book_drofa_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_drofa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_drofa_id_seq OWNER TO sidnystorm;

--
-- Name: book_drofa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_drofa_id_seq OWNED BY public.book_drofa.id;


--
-- Name: book_prosvet_bl; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_prosvet_bl (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_prosvet_bl OWNER TO sidnystorm;

--
-- Name: book_prosvet_bl_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_prosvet_bl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_prosvet_bl_id_seq OWNER TO sidnystorm;

--
-- Name: book_prosvet_bl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_prosvet_bl_id_seq OWNED BY public.book_prosvet_bl.id;


--
-- Name: book_prosvet_fp; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_prosvet_fp (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_prosvet_fp OWNER TO sidnystorm;

--
-- Name: book_prosvet_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_prosvet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_prosvet_id_seq OWNER TO sidnystorm;

--
-- Name: book_prosvet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_prosvet_id_seq OWNED BY public.book_prosvet_fp.id;


--
-- Name: book_prosvet_me; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_prosvet_me (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_prosvet_me OWNER TO sidnystorm;

--
-- Name: book_prosvet_me_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_prosvet_me_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_prosvet_me_id_seq OWNER TO sidnystorm;

--
-- Name: book_prosvet_me_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_prosvet_me_id_seq OWNED BY public.book_prosvet_me.id;


--
-- Name: book_prosvet_sh; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_prosvet_sh (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_prosvet_sh OWNER TO sidnystorm;

--
-- Name: book_prosvet_sh_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_prosvet_sh_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_prosvet_sh_id_seq OWNER TO sidnystorm;

--
-- Name: book_prosvet_sh_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_prosvet_sh_id_seq OWNED BY public.book_prosvet_sh.id;


--
-- Name: book_prosvet_vu; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_prosvet_vu (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_prosvet_vu OWNER TO sidnystorm;

--
-- Name: book_prosvet_vu_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_prosvet_vu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_prosvet_vu_id_seq OWNER TO sidnystorm;

--
-- Name: book_prosvet_vu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_prosvet_vu_id_seq OWNED BY public.book_prosvet_vu.id;


--
-- Name: book_ruword; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_ruword (
    id integer NOT NULL,
    author text,
    grade text,
    name text,
    price double precision
);


ALTER TABLE public.book_ruword OWNER TO sidnystorm;

--
-- Name: book_ruword_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_ruword_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_ruword_id_seq OWNER TO sidnystorm;

--
-- Name: book_ruword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_ruword_id_seq OWNED BY public.book_ruword.id;


--
-- Name: book_ventana; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_ventana (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_ventana OWNER TO sidnystorm;

--
-- Name: book_ventana_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_ventana_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_ventana_id_seq OWNER TO sidnystorm;

--
-- Name: book_ventana_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_ventana_id_seq OWNED BY public.book_ventana.id;


--
-- Name: book_xxi; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.book_xxi (
    id integer NOT NULL,
    author text,
    name text,
    grade text,
    price double precision
);


ALTER TABLE public.book_xxi OWNER TO sidnystorm;

--
-- Name: book_xxi_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.book_xxi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.book_xxi_id_seq OWNER TO sidnystorm;

--
-- Name: book_xxi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.book_xxi_id_seq OWNED BY public.book_xxi.id;


--
-- Name: manager; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.manager (
    id integer NOT NULL,
    region text,
    phone text,
    email text,
    name text
);


ALTER TABLE public.manager OWNER TO sidnystorm;

--
-- Name: manager_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.manager_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.manager_id_seq OWNER TO sidnystorm;

--
-- Name: manager_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.manager_id_seq OWNED BY public.manager.id;


--
-- Name: order; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public."order" (
    id integer NOT NULL,
    "user" integer,
    date date,
    publisher integer,
    formed boolean DEFAULT false
);


ALTER TABLE public."order" OWNER TO sidnystorm;

--
-- Name: order_book; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.order_book (
    id integer NOT NULL,
    "order" integer,
    book integer,
    count integer
);


ALTER TABLE public.order_book OWNER TO sidnystorm;

--
-- Name: order_book_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.order_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_book_id_seq OWNER TO sidnystorm;

--
-- Name: order_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.order_book_id_seq OWNED BY public.order_book.id;


--
-- Name: order_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.order_id_seq OWNER TO sidnystorm;

--
-- Name: order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.order_id_seq OWNED BY public."order".id;


--
-- Name: publisher; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.publisher (
    id integer NOT NULL,
    name character varying(255),
    description text,
    image text
);


ALTER TABLE public.publisher OWNER TO sidnystorm;

--
-- Name: publisher_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.publisher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.publisher_id_seq OWNER TO sidnystorm;

--
-- Name: publisher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.publisher_id_seq OWNED BY public.publisher.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: sidnystorm
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login text NOT NULL,
    password character(60) NOT NULL,
    role public.role DEFAULT 'USER'::public.role,
    name text,
    address text,
    inn character(10),
    kpp character(9),
    ogrn character(13),
    okpo character varying(10),
    bank text,
    bik text,
    bank_address text,
    checking_account text,
    correspondent_account text,
    phone text,
    email text,
    manager integer
);


ALTER TABLE public.users OWNER TO sidnystorm;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: sidnystorm
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO sidnystorm;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sidnystorm
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: book_academ id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_academ ALTER COLUMN id SET DEFAULT nextval('public.book_academ_id_seq'::regclass);


--
-- Name: book_binom id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_binom ALTER COLUMN id SET DEFAULT nextval('public.book_binom_id_seq'::regclass);


--
-- Name: book_drofa id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_drofa ALTER COLUMN id SET DEFAULT nextval('public.book_drofa_id_seq'::regclass);


--
-- Name: book_prosvet_bl id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_bl ALTER COLUMN id SET DEFAULT nextval('public.book_prosvet_bl_id_seq'::regclass);


--
-- Name: book_prosvet_fp id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_fp ALTER COLUMN id SET DEFAULT nextval('public.book_prosvet_id_seq'::regclass);


--
-- Name: book_prosvet_me id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_me ALTER COLUMN id SET DEFAULT nextval('public.book_prosvet_me_id_seq'::regclass);


--
-- Name: book_prosvet_sh id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_sh ALTER COLUMN id SET DEFAULT nextval('public.book_prosvet_sh_id_seq'::regclass);


--
-- Name: book_prosvet_vu id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_vu ALTER COLUMN id SET DEFAULT nextval('public.book_prosvet_vu_id_seq'::regclass);


--
-- Name: book_ruword id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_ruword ALTER COLUMN id SET DEFAULT nextval('public.book_ruword_id_seq'::regclass);


--
-- Name: book_ventana id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_ventana ALTER COLUMN id SET DEFAULT nextval('public.book_ventana_id_seq'::regclass);


--
-- Name: book_xxi id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_xxi ALTER COLUMN id SET DEFAULT nextval('public.book_xxi_id_seq'::regclass);


--
-- Name: manager id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.manager ALTER COLUMN id SET DEFAULT nextval('public.manager_id_seq'::regclass);


--
-- Name: order id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public."order" ALTER COLUMN id SET DEFAULT nextval('public.order_id_seq'::regclass);


--
-- Name: order_book id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.order_book ALTER COLUMN id SET DEFAULT nextval('public.order_book_id_seq'::regclass);


--
-- Name: publisher id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.publisher ALTER COLUMN id SET DEFAULT nextval('public.publisher_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: book_academ; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_academ (id, author, name, grade, price) FROM stdin;
1	А.М. Соломатин	Основная образовательная программа начального общего образования. "Перспективная начальная школа"	\N	404.800000000000011
2	под ред А.А. Майера,А.М. Соломатина, Р.Г. Чураковой	Образовательная программа дошкольного образования: технология проектирования на основе требований фГОС	\N	164.449999999999989
3	Т.Ф. Пожидаева и др.	Проектирование основной образовательной программы	\N	290.949999999999989
4	А.М. Соломатин и др.	Программа развития и основная образовательная программа: стратегия и тактика проектирования в условиях реализации ФГОС	\N	177.099999999999994
5	под ред. Чураковой Р.Г.	Управление введением федерального государственного образовательного стандарта	\N	126.5
6	под ред. Чураковой Р.Г.	Региональные особенности управления содержанием дошкольного и общего образования.	\N	202.400000000000006
7	А.М.Соломатин, Р.Г.Чуракова	Базовые признаки эффективного управления в условиях реализации ФГОС	\N	265.649999999999977
8	под ред. Чураковой Р.Г.	Организация методической работы в условиях введения стандарта второго поколения	\N	253
9	С.М. Аксентова и др.	Внутренняя система оценки качества образования: Направления проектирования и механизмы реализации	\N	189.75
10	Р.Г. Чуракова, А.М. Соломатин	Организация внеурочной деятельности в начальной школе	\N	139.150000000000006
11	под ред. Соломатина А.М., Чураковой Р.Г.	Сетевое взаимодействие в системе образования: Технология организации инновационной деятельности	\N	151.800000000000011
12	А.М.Соломатин, Р.Г.Чуракова	Как разработать индивидуальный учебный план обучающегося	\N	151.800000000000011
13	А.М.Соломатин, Р.Г.Чуракова	Как разработать программу учебного предмета, курса	\N	189.75
14	А.М.Соломатин, Р.Г.Чуракова	Как создать инновационную площадку в системе образования	\N	290.949999999999989
15	Коллектив авторов	Система оценки образовательных достижений младших школьников. Проектировочные подходы и технологические решения. Учебно-методическое пособие	\N	215.050000000000011
16	А.М. Соломатин, Р.Г. Чуракова	Дневник достижений и профессионального развития учителя	\N	215.050000000000011
17	Соломатин А.М., Бочарникова Л.М.	Управление введением  стандарта второго поколения. Стратегические приоритеты и тактика организационных решений. Материалы участника личностно-ориентированного модуля	\N	164.449999999999989
18	Гладнева С.Р., Зайцев А.Ю., Зайцева Л.А. и др.	Актуальные вопросы реализации стандарта второго поколения. "Перспективная начальная школа": Материалы участника личностно-ориентированного модуля	\N	151.800000000000011
19	Соломатин А.М., Предит А.В.	Художественно-эстетическое образование младших школьников. "Перспективная начальная школа": Материалы участника личностно-ориентированного модуля	\N	177.099999999999994
20	А.М.Соломатин, И.В.Карпеева, Г.В.Янычева	Оценка образовательных достижений младших школьников. Проектировочные подходы и технологические решения: Материалы участника личностно-ориентированного модуля	\N	253
21	А.М. Соломатин, С.Н.Ямшинина, Г.В.Янычева, Н.М.Лаврова, И.В.Карпеева	Проектирование урока в условиях формирования универсальных учебных действий:  Материалы участника личностно-ориентированного модуля	\N	189.75
22	Соломатин А.М., Камень Н.Е.	Проектирование внеурочной деятельности в условиях реализации ФГОС. Материалы участника личностно-ориентированного модуля	\N	151.800000000000011
23	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. V - XIII века. Книга 1	\N	796.950000000000045
24	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. V - XIII века. Книга 2	\N	796.950000000000045
25	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. XIV - XVI века. Книга 1	\N	796.950000000000045
26	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. XIV - XVI века. Книга 2	\N	796.950000000000045
27	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. XVII век	\N	796.950000000000045
28	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. XVIII век	\N	796.950000000000045
29	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. Древний мир. Книга 1	\N	796.950000000000045
30	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. Древний мир. Книга 2	\N	796.950000000000045
31	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. Энциклопедия на CD. XVII век	\N	519
32	пред. редсов.: Осипов Ю.С. 	Исторический Лексикон. Энциклопедия на CD. XVIII век	\N	519
151	Тер-Минасова С.Г. и др.	Английский язык. 2 класс. Книга для чтения	2	303.600000000000023
33	Р.Г.Чуракова и др.	Вариативная примерная основная образовательная программа дошкольного образования 	\N	151.800000000000011
34	Чуракова Н.А.	Кронтик в музее. Как там - внутри картин? Книга для работы взрослых с детьми.                                                                                                               	\N	480.699999999999989
35	Чуракова Н.А.	Кронтик в музее. История с волшебной палочкой. Книга для работы  взрослых с детьми	\N	506
36	И.С. Рукавишников	Приключения Кронтика. В ожидании чудес. Книга для работы взрослых с детьми	\N	936.100000000000023
37	И.С. Рукавишников	Приключения Кронтика. Новогодняя история. Книга для работы взрослых с детьми	\N	936.100000000000023
38	Чуракова Н.А.	В музее с Кронтильдой. Книга для работы взрослых с детьми.	\N	594.549999999999955
39	Чуракова Р.Г.	Кронтик учится считать. Книга для работы взрослых с детьми	\N	366.850000000000023
40	Чуракова Р.Г.	Кронтик учится считать. Тетрадь для работы  взрослых с детьми	\N	139.150000000000006
41	Захарова О.А.	Учимся записывать числа. Тетрадь для работы взрослых с детьми                                      	\N	139.150000000000006
42	Захарова О.А., Чуракова Р.Г.	Кронтик учится рисовать фигуры. Книга для работы  взрослых с детьми	\N	265.649999999999977
43	Захарова О.А., Чуракова Р.Г. 	Кронтик учится рисовать фигуры. Тетрадь для работы взрослых с детьми	\N	126.5
44	Федотова О.Н.	Маша и Миша изучают окружающий мир. Книга для работы взрослых с детьми	\N	455.399999999999977
45	Федотова О.Н.	Маша и Миша изучают окружающий мир. Тетрадь для работы взрослых с детьми	\N	101.200000000000003
46	Малаховская О.В.	Кронтик учится слушать и рассуждать. Книга для работы взрослых с детьми	\N	366.850000000000023
47	 Малаховская О.В.	Кронтик учится слушать и рассуждать. Тетрадь для работы взрослых с детьми	\N	113.849999999999994
48	Раджувейт Т.Г., Рукавишников И.С.	Учимся писать буквы. Тетрадь для работы взрослых с детьми	\N	164.449999999999989
49	Рукавишников И.С., Раджувейт Т.Г.	Друзья Кронтика учатся читать. Книга для работы взрослых с детьми	\N	341.550000000000011
50	Рукавишников И.С., Раджувейт Т.Г.	Кронтик осваивает звуки. Книга для работы взрослых с детьми                       	\N	708.399999999999977
51	Ашикова С.Г.	Учимся лепить и конструировать. Часть 2. Альбом для работы взрослых с детьми	\N	303.600000000000023
52	А.В. Предит	Кронтик учится рисовать карандашами. Тетрадь для работы взрослых с детьми. Часть 1	\N	126.5
53	А.В. Предит	Кронтик учится рисовать карандашами. Тетрадь для работы взрослых с детьми. Часть 2	\N	113.849999999999994
54	А.В. Предит	Кронтик учится рисовать красками. Тетрадь для работы взрослых с детьми	\N	113.849999999999994
55	А.В. Предит	Кронтик учится лепить. Тетрадь для работы взрослых с детьми	\N	113.849999999999994
56	А.В. Предит	Кронтик учится делать мозаику из бумаги. Тетрадь для работы взрослых с детьми	\N	113.849999999999994
57	А.В. Предит	Кронтик учится конструировать. Тетрадь для работы взрослых с детьми	\N	113.849999999999994
58	Малаховская О.В., Раджувейт Т.Г.	Ван Гог и Григорьев. Альбом для работы взрослых с детьми	\N	101.200000000000003
59	Чуракова Н.А.	Малевич и Матисс. Альбом для работы взрослых с детьми	\N	139.150000000000006
60	М.Л. Каленчук, Н.Г. Агаркова, Н.М. Лаврова и др.	Русский язык. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	303.600000000000023
61	Н.А. Чуракова, О.В.Малаховская, И.В.Карпеева	Литературное чтение. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	303.600000000000023
62	Соловова Е.Н.	Английский язык. Примерная рабочая программа по учебному предмету. 2-9 классы	2-9	202.400000000000006
63	А.Л. Чекин, Р.Г.Чуракова	Математика. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	341.550000000000011
64	Е.П. Бененсон, А.Г. Паутова	Информатика и ИКТ. Примерная рабочая программа по учебному предмету. 2-4 классы	2-4	189.75
65	О.Н. Федотова, Г.В.Трафимова, Л.Г.Кудрова	Окружающий мир. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	316.25
66	Т.Д. Васильева, К.В.Савченко, Т.И.Тюляева	Основы духовно-нравственной культуры народов России. Основы светской этики. Примерная рабочая программа по учебному предмету. 4 класс	4	253
67	И.Э. Кашекова	Изобразительное искусство. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	354.199999999999989
68	Т.В. Челышева, В.В. Кузнецова	Музыка. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	354.199999999999989
152	Тер-Минасова С.Г. и др.	Английский язык. 3 класс. Книга для чтения	3	200.400000000000006
69	Т.М. Рагозина, И.Б.Мылова	Технология. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	303.600000000000023
70	А.В. Шишкина	Физическая культура. Примерная рабочая программа по учебному предмету. 1-4 классы	1-4	253
71	Н.А.Чуракова, Н.М.Лаврова, С.Н.Ямшинина, Р.Г.Чуракова, А.М.Соломатин, А.В.Предит	Программы курсов внеурочной деятельности. 1-4 классы. Часть 1	1-4	177.099999999999994
72	А.Л.Чекин, О.А.Захарова, Н.М.Лаврова, Р.Г.Чуракова, А.Г.Паутова	Программы курсов внеурочной деятельности. 1-4 классы. Часть 2	1-4	151.800000000000011
73	Р.Г.Чуракова, С.Н.Ямшинина, В.А.Самкова, А.М.Соломатин, Т.М.Рагозина	Программы курсов внеурочной деятельности. 1-4 классы. Часть 3	1-4	177.099999999999994
74	Чуракова Р.Г.	Концептуальные основы развивающей личностно-ориентированной дидактической системы обучения «Перспективная начальная школа»	\N	139.150000000000006
75	Чуракова Р.Г.	Аспектный анализ урока в начальной школе	\N	303.600000000000023
76	Р.Г. Чуракова, А.М. Соломатин	Готовые решения для родителей	\N	303.600000000000023
77	Р.Г.Чуракова, Г.В.Янычева	Путеводитель для родителей: математика в первом классе	\N	215.050000000000011
78	Р.Г. Чуракова, Г.В. Янычева	Путеводитель для родителей: математика во втором классе	\N	303.600000000000023
79	Р.Г. Чуракова, А.М. Соломатин	У вас способный ребёнок? Вы должны его поддержать!	\N	202.400000000000006
80	Р.Г. Чуракова, А.М. Соломатин	Дневник достижений - программа совместной деятельности детей и взрослых	\N	316.25
81	Р.Г. Чуракова, А.М. Соломатин	Развитие ребенка в школе после уроков: предложения для родителей младших школьников	\N	202.400000000000006
82	Агаркова Н.Г., Агарков Ю.А.	Учебник по обучению грамоте и чтению: Азбука. 1 класс	1	430.100000000000023
83	Чуракова Н.А.	Русский язык. 1 класс. Учебник.                                                              	1	417.449999999999989
84	Чуракова Н.А.	Русский язык. 2 класс. Учебник. Часть 1 	2	468.050000000000011
85	Каленчук М.Л., Малаховская О.В., Чуракова Н.А.	Русский язык. 2 класс. Учебник. Часть 2                                                                                   	2	430.100000000000023
86	Чуракова Н.А.	Русский язык. 2 класс. Учебник. Часть 3	2	455.399999999999977
87	Каленчук М.Л., Чуракова Н.А., Байкова Т.А.	Русский язык. 3 класс. Учебник.Часть 1                                                       	3	379.5
88	Каленчук М.Л., Малаховская О.В., Чуракова Н.А.	Русский язык. 3 класс. Учебник. Часть 2 	3	417.449999999999989
89	Каленчук М.Л., Чуракова Н.А., Байкова Т.А.	Русский язык. 3 класс. Учебник. Часть 3 	3	404.800000000000011
90	Каленчук М.Л., Чуракова Н.А., Байкова Т.А.	Русский язык. 4 класс. Учебник. Часть 1	4	468.050000000000011
91	Каленчук М.Л., Чуракова Н.А., Малаховская О.В.	Русский язык. 4 класс. Учебник. Часть 2 	4	468.050000000000011
92	Каленчук М.Л., Чуракова Н.А., Байкова Т.А.	Русский язык. 4 класс. Учебник. Часть 3 	4	468.050000000000011
93	Агаркова Н.Г., Агарков Ю.А.	Азбука. 1 класс. Тетрадь по письму № 1	1	139.150000000000006
94	Агаркова Н.Г., Агарков Ю.А.	Азбука. 1 класс. Тетрадь по письму № 2	1	177.099999999999994
95	Агаркова Н.Г., Агарков Ю.А.	Азбука. 1 класс. Тетрадь по письму № 3	1	164.449999999999989
96	Гольфман Е.Р., Чуракова Н.А.	Русский язык. 1 класс. Тетрадь для самостоятельной  работы 	1	202.400000000000006
97	Байкова Т.А., Малаховская О.В., Гольфман Е.Р.	Русский язык. 2 класс. Тетрадь для самостоятельной работы № 1                                       	2	215.050000000000011
98	Байкова Т.А., Малаховская О.В.	Русский язык. 2 класс. Тетрадь для самостоятельной  работы № 2	2	202.400000000000006
99	Байкова Т.А.	Русский язык. 3 класс. Тетрадь для самостоятельной работы № 1	3	215.050000000000011
100	Байкова Т.А.	Русский язык. 3 класс. Тетрадь для самостоятельной  работы № 2	3	202.400000000000006
101	Байкова Т.А.	Русский язык. 4 класс. Тетрадь для самостоятельной работы № 1	4	215.050000000000011
102	Байкова Т.А.	Русский язык. 4 класс. Тетрадь для самостоятельной  работы № 2	4	202.400000000000006
103	Агаркова Н. Г., Агарков Ю.А.	Азбука. 1 класс. Методическое пособие	1	303.600000000000023
104	Н.А. Чуракова, Гольфман Е.Р.	Русский язык. 1 класс. Методическое пособие	1	164.449999999999989
105	Чуракова Н.А., Каленчук М.Л., Малаховская О.В., Байкова Т.А.	Русский язык. 2 класс. Методическое пособие	2	290.949999999999989
106	Абрамова М.Г., Байкова Т.А., Малаховская О.В.	Русский язык. 3 класс. Методическое пособие	3	366.850000000000023
107	Байкова Т.А., Малаховская О.В., Чуракова Н.А.	Русский язык. 4 класс. Методическое пособие	4	328.899999999999977
153	Тер-Минасова С.Г. и др.	Английский язык. 4 класс. Книга для чтения	4	207
108	Н.М. Лаврова	Азбука. Поурочное планирование методов и приемов индивидуального подхода к учащимся в условиях формирования УУД. 1 класс. Часть 1	1	253
109	Н.М. Лаврова	Азбука. Поурочное планирование методов и приемов индивидуального подхода к учащимся в условиях формирования УУД. 1 класс. Часть 2	1	253
110	Н.М. Лаврова	Азбука. Поурочное планирование методов и приемов индивидуального подхода к учащимся в условиях формирования УУД. 1 класс. Часть 3	1	253
111	Бочарникова Л.М.	Русский язык. 1 класс. Поурочное планирование	1	354.199999999999989
112	Н.М. Лаврова	Русский язык. Поурочное планирование. 2 класс. Часть 1	2	354.199999999999989
113	Н.М. Лаврова	Русский язык. Поурочное планирование. 2 класс. Часть 2	2	341.550000000000011
114	Н.М.Лаврова	Русский язык. Поурочное планирование. 3 класс. Часть 1	3	417.449999999999989
115	Н.М.Лаврова	Русский язык. Поурочное планирование. 3 класс. Часть 2	3	417.449999999999989
116	Н.М.Лаврова	Русский язык. Поурочное планирование. 4 класс. Часть 1	4	379.5
117	Н.М.Лаврова	Русский язык. Поурочное планирование. 4 класс. Часть 2	4	379.5
118	Чуракова Н.А.	Литературное чтение. 1 класс. Учебник	1	417.449999999999989
119	Чуракова Н.А.	Литературное чтение. 2 класс. Учебник. Часть 1	2	404.800000000000011
120	Чуракова Н.А.	Литературное чтение. 2 класс. Учебник. Часть 2	2	404.800000000000011
121	Чуракова Н.А.	Литературное чтение. 3 класс. Учебник. Часть 1	3	442.75
122	Чуракова Н.А.	Литературное чтение. 3 класс. Учебник. Часть 2	3	442.75
123	Чуракова Н.А.	Литературное чтение. 4 класс. Учебник. Часть 1	4	480.699999999999989
124	Чуракова Н.А.	Литературное чтение. 4 класс. Учебник. Часть 2	4	480.699999999999989
125	Чуракова Н.А.	Литературное чтение. 1 класс. Хрестоматия	1	366.850000000000023
126	Малаховская О.В.	Литературное чтение. 2 класс. Хрестоматия	2	341.550000000000011
127	Малаховская О.В.	Литературное чтение. 3 класс. Хрестоматия	3	366.850000000000023
128	Малаховская О.В.	Литературное чтение. 4 класс. Хрестоматия	4	404.800000000000011
129	Малаховская О.В.	Литературное чтение. 1 класс. Тетрадь для самостоятельной работы 	1	202.400000000000006
130	Малаховская О.В.	Литературное чтение. 2 класс. Тетрадь для самостоятельной работы № 1 	2	202.400000000000006
131	Малаховская О.В.	Литературное чтение. 2 класс. Тетрадь для самостоятельной работы № 2 	2	202.400000000000006
132	Малаховская О.В.	Литературное чтение. 3 класс. Тетрадь для самостоятельной работы № 1 	3	202.400000000000006
133	Малаховская О.В.	Литературное чтение. 3 класс. Тетрадь для самостоятельной работы № 2 	3	202.400000000000006
134	Малаховская О.В., Чуракова Н.А.	Литературное чтение. 4 класс. Тетрадь для самостоятельной работы № 1 	4	202.400000000000006
135	Малаховская О.В., Чуракова Н.А.	Литературное чтение. 4 класс. Тетрадь для самостоятельной работы № 2 	4	202.400000000000006
136	Чуракова Н.А., Малаховская О.В.	Литературное чтение. 1 класс. Методическое пособие	1	177.099999999999994
137	Чуракова Н.А., Малаховская О.В.	Литературное чтение. 2 класс. Методическое пособие	2	316.25
138	Чуракова Н.А., Борисенкова О.В., Малаховская О.В.	Литературное чтение. 3 класс. Методическое пособие	3	328.899999999999977
139	Борисенкова О.В., Малаховская О.В.	Литературное чтение. 4 класс. Методическое пособие	4	328.899999999999977
140	И.В. Карпеева	Литературное чтение. Поурочное планирование. 1 класс. Часть 1	1	202.400000000000006
141	И.В. Карпеева	Литературное чтение. Поурочное планирование. 1 класс. Часть 2	1	164.449999999999989
142	Тер-Минасова С.Г., Узунова Л.М., Обукаускайте Д.С., Сухина Е.И.	Английский язык. 2 класс. Учебник. Часть 1	2	404.800000000000011
143	Тер-Минасова С.Г., Узунова Л.М., Обукаускайте Д.С., Сухина Е.И.	Английский язык. 2 класс. Учебник. Часть 2	2	404.800000000000011
144	Тер-Минасова С.Г., Узунова Л.М., Сухина Е.И.	Английский язык 3 класс. Учебник. Часть 1 + CD	3	442.800000000000011
145	Тер-Минасова С.Г., Узунова Л.М., Сухина Е.И.	Английский язык. 3 класс. Учебник. Часть 2	3	379.5
146	Тер-Минасова С.Г., Узунова Л.М., Сухина Е.И., Собещанская Ю.О.	Английский язык. 4 класс. Учебник. Часть 1	4	442.75
147	Тер-Минасова С.Г., Узунова Л.М., Сухина Е.И., Собещанская Ю.О.	Английский язык. 4 класс. Учебник. Часть 2	4	442.75
148	Тер-Минасова С.Г. и др.	Английский язык. 2 класс. Книга для чтения\n 	2	379.5
149	Тер-Минасова С.Г. и др.	Английский язык. 3 класс. Книга для чтения	3	290.949999999999989
150	Тер-Минасова С.Г. и др.	Английский язык. 4 класс. Книга для чтения	4	227.699999999999989
154	Тер-Минасова С.Г. и др.	Английский язык. 2 класс. Рабочая тетрадь \n	2	316.25
155	Н.В.Бочкова, Н.Н.Кузнецова	Английский язык. Пишем и играем. Тетрадь по письму. 2 класс	2	290.949999999999989
156	Тер-Минасова С.Г. и др.	Английский язык. 3 класс. Рабочая тетрадь 	3	341.550000000000011
157	Тер-Минасова С.Г. и др.	Английский язык. 4 класс. Рабочая тетрадь 	4	290.949999999999989
158	Тер-Минасова С.Г. и др.	Английский язык. Книга для учителя. 2 класс. Методическое пособие	2	253
159	Тер-Минасова С.Г. и др.	Английский язык. 3 класс. Книга для учителя. Методическое пособие	3	253
160	Тер-Минасова С.Г. и др.	Английский язык. 4 класс. Методическое пособие	4	253
161	Тер-Минасова С.Г., Сухина Е.И., Обукаускайте Д.С.	Английский язык. Поурочное планирование к учебнику английского языка. 2 класс	2	265.649999999999977
162	С.Г. Тер-Минасова, Е.И. Сухина, Д.С. Обукаускайте	Поурочное планирование к учебнику английского языка. 3 класс	3	290.949999999999989
163	С.Г. Тер-Минасова, Е.И. Сухина, Д.С. Обукаускайте	Поурочное планирование к учебнику английского языка. 4 класс	4	303.600000000000023
164	Чекин А.Л.	Математика. 1 класс. Учебник. Часть 1	1	417.449999999999989
165	Чекин А.Л.	Математика. 1 класс. Учебник. Часть 2	1	417.449999999999989
166	Чекин А.Л.	Математика. 2 класс. Учебник. Часть 1	2	442.75
167	Чекин А.Л.	Математика. 2 класс. Учебник. Часть 2	2	442.75
168	Чекин А.Л. 	Математика. 3 класс. Учебник. Часть 1	3	366.850000000000023
169	Чекин А.Л. 	Математика. 3 класс. Учебник. Часть 2	3	366.850000000000023
170	Чекин А.Л.	Математика. 4 класс. Учебник. Часть 1	4	392.149999999999977
171	Чекин А.Л.	Математика. 4 класс. Учебник. Часть 2	4	392.149999999999977
172	Захарова О.А., Юдина Е.П.  	Математика в вопросах и заданиях. 1 класс. Тетрадь для самостоятельной  работы № 1 	1	202.400000000000006
173	Захарова О.А., Юдина Е.П.  	Математика в вопросах и заданиях. 1 класс. Тетрадь для самостоятельной  работы № 2 	1	202.400000000000006
174	Захарова О.А., Юдина Е.П.  	Математика в вопросах и заданиях. 2 класс. Тетрадь для самостоятельной  работы № 1 	2	202.400000000000006
175	Захарова О.А., Юдина Е.П.  	Математика в вопросах и заданиях. 2 класс. Тетрадь для самостоятельной  работы № 2 	2	202.400000000000006
176	Захарова О.А.	Математика в практических заданиях. 2 класс. Тетрадь для самостоятельной работы № 3	2	164.449999999999989
177	Захарова О.А., Юдина Е.П.  	Математика в вопросах и заданиях. 3 класс. Тетрадь для самостоятельной работы № 1 	3	202.400000000000006
178	Захарова О.А., Юдина Е.П.  	Математика в вопросахи заданиях. 3 класс. Тетрадь для самостоятельной работы № 2 	3	202.400000000000006
179	Захарова О.А.	Математика в практических заданиях. 3 класс. Тетрадь для самостоятельной работы № 3	3	164.449999999999989
180	Захарова О.А., Юдина Е.П.  	Математика в вопросах и заданиях. 4 класс. Тетрадь для самостоятельной работы № 1 	4	202.400000000000006
181	Захарова О.А., Юдина Е.П.	Математика в вопросах и заданиях. 4 класс. Тетрадь для самостоятельной работы № 2 	4	202.400000000000006
182	Захарова О.А.	Математика в практических заданиях. 4 класс. Тетрадь для самостоятельной работы № 3	4	177.099999999999994
183	Чекин А.Л.	Математика. 1 класс. Методическое пособие	1	265.649999999999977
184	Чекин А.Л.	Математика. 2 класс. Методическое пособие	2	316.25
185	Чекин А.Л.	Математика. 3 класс. Методическое пособие	3	316.25
186	Чекин А.Л.	Математика. 4 класс. Методическое пособие	4	328.899999999999977
187	Чуракова Р.Г. 	Математика. 1 класс. Поурочное планирование. Часть 1	1	290.949999999999989
188	Чуракова Р.Г. 	Математика. 1 класс. Поурочное планирование. Часть 2	1	265.649999999999977
189	Чуракова Р.Г.	Математика. Поурочное планирование методов и приемов индивидуального подхода к учащимся в условиях формирования УУД. 2 класс. Часть 1.1	2	189.75
190	Чуракова Р.Г.	Математика. Поурочное планирование методов и приемов индивидуального подхода к учащимся в условиях формирования УУД. 2 класс. Часть 1.2	2	189.75
191	Чуракова Р.Г.	Математика. 2 класс. Поурочное планирование. Часть 2	2	303.600000000000023
192	Р.Г. Чуракова, Г.В. Янычева	Математика. 3 класс. Поурочное планирование. В 4 частях Часть 1	3	278.300000000000011
193	Р.Г. Чуракова, Г.В. Янычева	Математика. 3 класс. Поурочное планирование.В 4 частях Часть 2	3	265.649999999999977
194	Р.Г. Чуракова, Л.Г. Кудрова, Г.В. Янычева	Математика. 3 класс. Поурочное планирование. В 4 частях Часть 3	3	265.649999999999977
195	Р.Г. Чуракова, Л.Г. Кудрова, Г.В. Янычева	Математика. 3 класс. Поурочное планирование.В 4 частях Часть 4	3	265.649999999999977
196	Р.Г. Чуракова, Г.В. Янычева	Математика. Поурочное планирование. 4 класс. В 4 частях.Часть 1\n	4	253
197	Р.Г. Чуракова, Г.В. Янычева	Математика. Поурочное планирование. 4 класс. В 4 частях. Часть 2\n	4	177.099999999999994
198	Р.Г. Чуракова, Г.В. Янычева, Е.П. Юдина	Математика. Поурочное планирование. 4 класс. В 4 частях. Часть 3	4	227.699999999999989
199	Р.Г. Чуракова, Г.В. Янычева, Е.П. Юдина	Математика. Поурочное планирование. 4 класс. В 4 частях. Часть 4	4	227.699999999999989
200	Р.Г. Чуракова	Математика. Справочник ученика начальных классов. Единицы измерения величин. Перевод единиц измерения	1-4	151.800000000000011
201	Р.Г.Чуракова	Математика. Справочник ученика начальных классов. Геометрия	1-4	151.800000000000011
202	Р.Г.Чуракова	Математика. Справочник ученика начальных классов. Решение задач	1-4	151.800000000000011
203	А.Л.Чекин, Р.Г.Чуракова	Словарь математических терминов ученика начальных классов. 2-4 класс	2-4	139.150000000000006
204	Бененсон Е.П., Паутова А. Г.	Информатика и ИКТ. 2 класс. Учебник. Часть 1 + CD	2	481.199999999999989
205	Бененсон Е.П., Паутова А.Г	Информатика и ИКТ. 2 класс. Учебник. Часть 2	2	328.899999999999977
206	Бененсон Е.П., Паутова А. Г.	Информатика и ИКТ. 3 класс. Учебник. Часть 1 + CD	3	430.199999999999989
207	Бененсон Е.П., Паутова А. Г.	Информатика и ИКТ. 3 класс. Учебник. Часть 2	3	328.899999999999977
208	Бененсон Е.П., Паутова А. Г.	Информатика и ИКТ. 4 класс. Учебник. Часть 1.	4	366.850000000000023
209	Бененсон Е.П., Паутова А. Г.	Информатика и ИКТ. 4 класс. Учебник. Часть 2.	4	366.850000000000023
210	Е.П. Бененсон,             А.Г. Паутова	Информатика и ИКТ. Тетрадь для самостоятельной работы. 2 класс. 	2	215.050000000000011
211	Е.П. Бененсон,             А.Г. Паутова	Информатика и ИКТ. Тетрадь для самостоятельной работы. 3 класс. 	3	215.050000000000011
212	Е.П. Бененсон,             А.Г. Паутова	Информатика и ИКТ. Тетрадь для самостоятельной работы. 4 класс 	4	240.349999999999994
213	Бененсон Е.П., Паутова А.Г.	Информатика и ИКТ. 2 класс. Методическое пособие	2	290.949999999999989
214	Бененсон Е.П., Паутова А.Г.	Информатика и ИКТ. 3 класс. Методическое пособие	3	328.899999999999977
215	Бененсон Е.П., Паутова А.Г.	Информатика и ИКТ. 4 класс. Методическое пособие	4	290.949999999999989
216	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 1 класс. Учебник	1	392.149999999999977
217	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 2 класс. Учебник. Часть 1	2	404.800000000000011
218	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 2 класс. Учебник. Часть 2	2	404.800000000000011
219	Федотова О.Н., Трафимова Г.В., Трафимов С.А., Царёва Л.А.	Окружающий мир. 3 класс. Учебник. Часть 1	3	392.149999999999977
220	Федотова О.Н., Трафимова Г.В., Трафимов С.А., Царёва Л.А.	Окружающий мир. 3 класс. Учебник. Часть 2	3	392.149999999999977
221	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 4 класс. Учебник. Часть 1	4	392.149999999999977
222	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 4 класс. Учебник. Часть 2	4	392.149999999999977
223	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 1 класс. Хрестоматия	1	366.850000000000023
224	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 2 класс. Хрестоматия	2	366.850000000000023
225	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 3 класс. Хрестоматия	3	404.800000000000011
226	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 1 класс. Тетрадь для самостоятельной работы 	1	202.400000000000006
227	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 2 класс. Тетрадь для самостоятельной работы № 1 	2	202.400000000000006
228	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 2 класс. Тетрадь для самостоятельной работы № 2 	2	202.400000000000006
229	Федотова О.Н., Трафимова Г.В., Трафимов С.А., Царева Л.А.	Окружающий мир. 3 класс. Тетрадь для самостоятельной работы № 1 	3	202.400000000000006
230	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 3 класс. Тетрадь для самостоятельной работы № 2 	3	202.400000000000006
231	Федотова О.Н., Трафимова Г.В., Трафимов С.А., Кудрова Л.Г.	Окружающий мир. 4 класс. Тетрадь для самостоятельной работы № 1 	4	202.400000000000006
232	Федотова О.Н., Трафимова Г.В., Трафимов С.А., Кудрова Л.Г.	Окружающий мир. 4 класс. Тетрадь для самостоятельной работы № 2 	4	202.400000000000006
233	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 1 класс. Методическое пособие	1	164.449999999999989
234	Федотова О.Н., Трафимова Г.В., Трафимов С.А.	Окружающий мир. 2 класс. Методическое пособие	2	290.949999999999989
235	Федотова О.Н., Трафимова Г.В., Трафимов С.А., Царева Л.А.	Окружающий мир. 3 класс. Методическое пособие	3	290.949999999999989
236	О.Н. Федотова,              Г.В. Трафимова,                Л.Г. Кудрова	Окружающий мир. 4 класс. Методическое пособие	4	189.75
237	Васильева Т.Д., Савченко К.В., Тюляева Т.И.	Основы духовно-нравственной культуры народов России. Основы светской этики. 4 класс. Учебник 	4	417.449999999999989
238	Т.Д. Васильева К.В. Савченко, Т.И. Тюляева, Л.В. Яковлева	Основы духовно-нравственной культуры народов России. Основы светской этики. Методическое пособие. 4 класс	4	366.850000000000023
239	Кашекова И.Э., Кашеков А.Л.	Изобразительное искусство. 1 класс. Учебник	1	404.800000000000011
240	Кашекова И.Э., Кашеков А.Л.	Изобразительное искусство. 2 класс. Учебник	2	417.449999999999989
241	Кашекова И.Э., Кашеков А.Л.	Изобразительное искусство. 3 класс. Учебник	3	417.449999999999989
242	Кашекова И.Э., Кашеков А.Л.	Изобразительное искусство. 4 класс. Учебник	4	417.449999999999989
243	И.Э. Кашекова, А.Л.Кашеков	Изобразительное искусство. Тетрадь для самостоятельной работы. 1 класс 	1	227.699999999999989
244	И.Э. Кашекова, А.Л.Кашеков	Изобразительное искусство. Тетрадь для самостоятельной работы. 2 класс 	2	240.349999999999994
245	И.Э. Кашекова, А.Л.Кашеков	Изобразительное искусство. Тетрадь для самостоятельной работы. 3 класс 	3	240.349999999999994
246	И.Э. Кашекова, А.Л.Кашеков	Изобразительное искусство. Тетрадь для самостоятельной работы. 4 класс 	4	240.349999999999994
247	Кашекова И.Э.	Изобразительное искусство. 1 класс.  Методическое пособие	1	303.600000000000023
248	Кашекова И.Э.	Изобразительное искусство. 2 класс.  Методическое пособие	2	316.25
249	Кашекова И.Э.	Изобразительное искусство. 3 класс. Методическое пособие	3	366.850000000000023
250	Кашекова И.Э.	Изобразительное искусство. 4 класс.  Методическое пособие	4	366.850000000000023
251	Челышева Т.В., Кузнецова В.В.	Музыка. 1 класс. Учебник	1	417.449999999999989
252	Челышева Т.В., Кузнецова В.В.	Музыка. 2 класс. Учебник	2	392.149999999999977
253	Челышева Т.В., Кузнецова В.В.	Музыка. 3 класс. Учебник	3	442.75
254	Челышева Т.В., Кузнецова В.В.	Музыка. 4 класс. Учебник	4	417.449999999999989
255	Т.В. Челышева,           В.В. Кузнецова	Музыка. Тетрадь для самостоятельной работы. 1 класс 	1	202.400000000000006
256	Т.В. Челышева,           В.В. Кузнецова	Музыка. Тетрадь для самостоятельной работы. 2 класс 	2	215.050000000000011
257	Т.В. Челышева,           В.В. Кузнецова	Музыка. Тетрадь для самостоятельной работы. 3 класс 	3	202.400000000000006
258	Т.В. Челышева,           В.В. Кузнецова	Музыка. Тетрадь для самостоятельной работы. 4 класс 	4	227.699999999999989
259	Челышева Т.В., Кузнецова В.В.	Музыка. 1 класс. Нотное приложение к методическому пособию. 1 класс	1	417.449999999999989
260	Т.В. Челышева,           В.В. Кузнецова	Музыка. Нотное приложение к методическому пособию. 2 класс + CD	2	430.199999999999989
261	Челышева Т.В., Кузнецова В.В.	Музыка. 1 класс. Методическое пособие	1	392.149999999999977
262	Челышева Т.В., Кузнецова В.В.	Музыка. 2 класс. Методическое пособие	2	379.5
263	Челышева Т.В., Кузнецова В.В.	Музыка. 3 класс. Методическое пособие	3	404.800000000000011
264	Челышева Т.В., Кузнецова В.В.	Музыка. 4 класс. Методическое пособие	4	442.75
265	Рагозина Т.М., Гринёва А.А.	Технология. 1 класс. Учебник	1	417.449999999999989
266	Рагозина Т.М., Гринёва А.А., Голованова И.Л.	Технология. 2 класс. Учебник	2	404.800000000000011
267	Рагозина Т.М., Гринёва А.А., Мылова И.Б.	Технология. 3 класс. Учебник	3	417.449999999999989
268	Рагозина Т.М., Гринёва А.А., Мылова И.Б.	Технология. 4 класс. Учебник	4	392.149999999999977
269	В.С. Сергеева	Технология. Практика работы на компьютере. Тетрадь для самостоятельной работы. 3 класс	3	151.800000000000011
270	В.С. Сергеева	Технология. Практика работы на компьютере. Тетрадь для самостоятельной работы. 4класс	4	189.75
271	Т.М. Рагозина	Технология. Тетрадь для самостоятельной работы. 1 класс 	1	164.449999999999989
272	Т.М. Рагозина	Технология. Тетрадь для самостоятельной работы. 2 класс 	2	164.449999999999989
273	Т.М. Рагозина	Технология. Тетрадь для самостоятельной работы. 3 класс 	3	164.449999999999989
274	Т.М. Рагозина	Технология. Тетрадь для самостоятельной работы. 4 класс 	4	164.449999999999989
275	Рагозина Т.М.	Технология. 1 класс. Методическое пособие	1	202.400000000000006
276	Рагозина Т.М.	Технология. 2 класс. Методическое пособие	2	151.800000000000011
277	Рагозина Т.М.	Технология. 3 класс. Методическое пособие	3	227.699999999999989
278	Рагозина Т.М.	Технология. 4 класс. Методическое пособие	4	202.400000000000006
279	Шишкина А.В., Алимпиева О.П., Брехов Л.В.	Физическая культура. 1,2 класс. Учебник	1-2	392.149999999999977
280	Шишкина А.В., Алимпиева О.П., Бисеров В.В.	Физическая культура. 3,4 класс. Учебник	3-4	417.449999999999989
281	Чуракова Р.Г., Чуракова Н.А., Ямшинина С.Н.	Итоговая комплексная работа на основе единого текста. 1 класс. Тетрадь	1	164.449999999999989
282	Чуракова Р.Г., Лаврова Н.М., Ямшинина С.Н.	Итоговая комплексная работа на основе единого текста. 2 класс. Тетрадь	2	202.400000000000006
283	Чуракова Р.Г., Лаврова Н.М.	Итоговая комплексная работа на основе единого текста. 3 класс. Тетрадь	3	189.75
284	Чуракова Р.Г., Лаврова Н.М.	Итоговая аттестация выпускников начальной школы. Комплексная работа. 4 класс. Тетрадь	4	202.400000000000006
285	Лаврова Н.М.	Азбука. Пишу и проверяю себя. Тетрадь № 1	1	139.150000000000006
286	Лаврова Н.М.	Азбука. Пишу и проверяю себя. Тетрадь № 2	1	139.150000000000006
287	Лаврова Н.М.	Русский язык. 1 класс. Тетрадь для проверочных работ	1	151.800000000000011
288	Лаврова Н.М. 	Русский язык. 2 класс. Тетрадь для проверочных работ	2	151.800000000000011
289	Т.А.Байкова, Н.А. Чуракова	Русский язык. Тренировочные материалы. 2 класс. Часть 1	2	164.449999999999989
290	Т.А.Байкова, Н.А. Чуракова	Русский язык. Тренировочные материалы. 2 класс. Часть 2	2	164.449999999999989
291	Лаврова Н.М. 	Русский язык. 3 класс Тетрадь для проверочных работ	3	177.099999999999994
292	Лаврова Н.М. 	Русский язык. 4 класс Тетрадь для проверочных работ	4	151.800000000000011
293	М.Л. Каленчук, Н.А. Чуракова, Т.А. Байкова	Русский язык на "отлично". Предложение: главные и второстепенные члены.	2-4	202.400000000000006
294	М.Л. Каленчук, Н.А. Чуракова, Т.А. Байкова	Русский язык на "отлично". Предложения: простые и сложные.	2-4	202.400000000000006
295	Т.А. Кузьмина	Английский язык. Тетрадь для проверочных работ. 2 класс	2	202.400000000000006
296	Т.А. Кузьмина	Английский язык. Тетрадь для проверочных работ. 4 класс	4	366.850000000000023
297	Чуракова Р.Г. 	Математика. 1 класс. Тетрадь для проверочных работ	1	202.400000000000006
298	Чуракова Р.Г.	Математика. 2 класс. Тетрадь для проверочных и контрольных работ № 1	2	164.449999999999989
299	Чуракова Р.Г.	Математика. 2 класс. Тетрадь для проверочных и контрольных работ № 2	2	151.800000000000011
300	Р.Г. Чуракова,        Г.В Янычева	Математика. Приёмы устного счёта. Обобщающее повторение. Тетрадь для самостоятельной работы. 2 класс	2	151.800000000000011
301	Чуракова Р.Г., Янычева Г. В.	Математика. 3 класс. Тетрадь для проверочных и контрольных работ № 1	3	202.400000000000006
302	Чуракова Р.Г., Янычева Г. В.	Математика. 3 класс. Тетрадь для проверочных и контрольных работ № 2	3	189.75
303	Р.Г. Чуракова,        Г.В Янычева	Математика. Приёмы устного счёта. Обобщающее повторение. Тетрадь для самостоятельной работы. 3 класс	3	139.150000000000006
304	Чуракова Р.Г., Кудрова Л.Г.	Математика. 4 класс. Тетрадь для проверочных и контрольных работ № 1	4	164.449999999999989
305	Чуракова Р.Г., Кудрова Л.Г.	Математика. 4 класс. Тетрадь для проверочных и контрольных работ № 2	4	164.449999999999989
306	Р.Г. Чуракова, Г.В. Янычева	Математика. Приёмы устного счёта. Обобщающее повторение. Тетрадь для самостоятельной работы. 4 класс	4	126.5
307	Р.Г. Чуракова, Л.Г. Кудрова	Окружающий мир. Проверочные работы в тестовой форме. 1 класс	1	101.200000000000003
308	Р.Г. Чуракова, Л.Г. Кудрова	Окружающий мир. Проверочные работы в тестовой форме. 2 класс	2	126.5
309	Р.Г.Чуракова, Л.Г.Кудрова	Окружающий мир. Проверочные работы в тестовой форме. 3 класс	3	177.099999999999994
310	Р.Г.Чуракова, Л.Г.Кудрова	Окружающий мир. Проверочные работы в тестовой форме. 4 класс	4	139.150000000000006
311	Чуракова Р.Г., Чуракова Н.А., Ямшинина С.Н.	Итоговая комплексная работа. 1 класс. Методические указания по организации и проведению + CD	1	430.199999999999989
312	Чуракова Р.Г., Лаврова Н.М., Ямшинина С.Н.	Итоговая комплексная работа. 2 класс. Методические указания по организации и проведению	2	354.199999999999989
313	Чуракова Р.Г., Лаврова Н.М.	Итоговая комплексная работа. 3 класс. Методические указания по организации и проведению + CD	3	430.199999999999989
314	Р.Г. Чуракова,               Н.М. Лаврова	Итоговая аттестация выпускников начальной школы. Комплексная работа.\nМетодические указания. 4 класс + CD	4	430.199999999999989
315	Лаврова Н.М.	Русский язык. 1-2 классы. Оценка достижения планируемых результатов. + CD 	1-2	430.199999999999989
316	Н.М. Лаврова	Русский язык. 3 класс  Оценка достижения планируемых результатов. + CD 	3	430.199999999999989
317	Н.М. Лаврова	Русский язык.4 класс. Оценка достижения планируемых результатов + CD	4	430.199999999999989
318	Захарова О.А.	Математика. 1-4 класс. Проверочные работы и технология организации коррекции знаний учащихся	1-4	316.25
319	Лаврова Н.М.	Азбука. Пишу и проверяю себя. Начала формирования регулятивных УУД. Методическое пособие. 1 класс	1	303.600000000000023
320	Т.А.Байкова, Н.А.Чуракова	Русский язык. Подготовка к Всероссийской проверочной работе. 2 класс	2	139.150000000000006
321	Н.М.Лаврова	Русский язык. Подготовка к Всероссийской проверочной работе. 4 класс. Часть1	4	139.150000000000006
322	Т.А.Байкова, О.В.Малаховская	Русский язык. Подготовка к Всероссийской проверочной работе. 4 класс. Часть 2	4	189.75
323	Т.А. Байкова, Н.М. Лаврова, О.В. Малаховская	Русский язык. Подготовка к Всероссийской проверочной работе. Ответы и рекомендации. 4 класс.	4	139.150000000000006
324	О.А.Захарова	Математика. Подготовка к Всероссийской проверочной работе. 4 класс.	4	189.75
325	О.А.Захарова, Л.В.Харазова	Окружающий мир. Подготовка к Всероссийской проверочной работе. 4 класс. 	4	177.099999999999994
326	О.А.Захарова, С.Н. Ямшинина	Математика. Подготовка к Всероссийской проверочной работе. Ответы, комментариии и рекомендации. 4 класс. 	4	240.349999999999994
327	О.А.Захарова, С.Н. Ямшинина	Математика. Подготовка к Всероссийской проверочной работе. 4 класс. Комплект: Рабочая тетрадь и Ответы с комментариями 	4	379.5
328	Чуракова Н.А., Малаховская О.В. 	Музей в твоем классе. Наглядное пособие для занятий по развитию речи, ИЗО, МХК. 1-11 классы. 	1-11	910.799999999999955
329	Чуракова Р.Г., Соломатин А.М.	Дневник достижений младшего школьника. 1 класс 	1	151.800000000000011
330	Р.Г. Чуракова,            А.М. Соломатин	Дневник достижений младшего школьника. 2 класс 	2	151.800000000000011
331	Р.Г. Чуракова,            А.М. Соломатин	Дневник достижений младшего школьника. 3 класс	3	177.099999999999994
332	Р.Г. Чуракова,            А.М. Соломатин	Дневник достижений младшего школьника. 4 класс	4	202.400000000000006
333	Р.Г. Чуракова	Математика. Учимся решать задачи. Тетрадь индивидуальных заданий. 1 класс	1	164.449999999999989
334	Р.Г. Чуракова	Математика. Учимся решать задачи. Тетрадь индивидуальных заданий. 2 класс	2	177.099999999999994
335	Р.Г. Чуракова	Математика. Учимся решать задачи. Тетрадь индивидуальных заданий. 3 класс	3	202.400000000000006
336	Р.Г. Чуракова	Математика. Учимся решать задачи. Тетрадь индивидуальных заданий. 4 класс	4	240.349999999999994
337	Захарова О.А.	Практические задачи по математике. 2 класс. Тетрадь	2	177.099999999999994
338	Захарова О.А.	Практические задачи по математике. 3 класс. Тетрадь	3	177.099999999999994
339	Захарова О.А.	Практические задачи по математике. 4 класс. Тетрадь	4	164.449999999999989
340	Н.М.Лаврова	Русский язык. Школьная олимпиада. Тетрадь для самостоятельной работы.  2 класс	2	215.050000000000011
341	Н.М.Лаврова	Русский язык. Школьная олимпиада.Тетрадь для самостоятельной работы.  3 класс	3	202.400000000000006
342	Н.М.Лаврова	Русский язык. Школьная олимпиада. Тетрадь для самостоятельной работы. 4 класс	4	177.099999999999994
343	Н.М. Лаврова	Русский язык. Школьная олимпиада. Ответы и комментарии к олимпиадным заданиям. Методическое пособие. 4 класс	4	253
344	И.В. Карпеева	Литературное чтение. Школьная олимпиада. Тетрадь для самостоятельной работы.  2 класс	2	189.75
345	Р.Г. Чуракова	Математика. Школьная олимпиада. Тетрадь для самостоятельной работы. 2 класс	2	164.449999999999989
346	Р.Г. Чуракова	Математика. Школьная олимпиада. Тетрадь для самостоятельной работы. 3 класс	3	189.75
347	Р.Г. Чуракова, Л.Г. Кудрова	Математика. Школьная олимпиада. Тетрадь для самостоятельной работы. 4 класс	4	164.449999999999989
348	А.Л.Чекин	Математика. Цепочки. Тетрадь для внеурочной деятельности. 2 класс	2	189.75
349	А.Л.Чекин	Математика. Совокупности элементов.Тетрадь для внеурочной деятельности. 3 класс. 	3	189.75
350	А.Л.Чекин	Математика. От аршина и ярда к метру. Тетрадь для внеурочной деятельности. 4 класс	4	177.099999999999994
351	А.Г. Паутова	Путешествие в Компьютерную Долину. Тетрадь для внеурочной деятельности. 2 класс	2	189.75
352	А.Г. Паутова	Путешествие в Компьютерную Долину. Тетрадь для внеурочной деятельности. 3 класс	3	189.75
353	А.Г. Паутова	Путешествие в Компьютерную Долину. Тетрадь для внеурочной деятельности. 4 класс	4	177.099999999999994
354	Р.Г. Чуракова, Г.В.Трафимова, С.А.Трафимов	Окружающий мир. Школьная олимпиада. Тетрадь для самостоятельной работы. 2 класс	2	164.449999999999989
355	Р.Г. Чуракова, Г.В.Трафимова, С.А.Трафимов	Окружающий мир. Школьная олимпиада. Тетрадь для самостоятельной работы. 3 класс	3	151.800000000000011
356	Р.Г. Чуракова, Г.В.Трафимова, С.А.Трафимов	Окружающий мир. Школьная олимпиада. Тетрадь для самостоятельной работы. 4 класс	4	164.449999999999989
357	Р.Г. Чуракова, Г.В. Янычева	Окружающий мир. Изучаем природу родного края. Тетрадь для внеурочной деятельности. 1 класс	1	215.050000000000011
358	Р.Г. Чуракова, Г.В. Янычева	Окружающий мир. Изучаем природу родного края. Тетрадь для внеурочной деятельности. 2 класс	2	177.099999999999994
359	Р.Г. Чуракова, Г.В. Янычева	Окружающий мир. Изучаем природу родного края. Тетрадь для внеурочной деятельности. 3 класс	3	177.099999999999994
360	Р.Г. Чуракова 	Окружающий мир. Изучаем природу родного края. Тетрадь для внеурочной деятельности. 4 класс	4	177.099999999999994
361	Т.М.Рагозина	Технология. Город мастеров. Тетрадь для внеурочной деятельности. 1 класс	1	328.899999999999977
362	Т.М.Рагозина	Технология. Город мастеров. Тетрадь для внеурочной деятельности. 2 класс	2	215.050000000000011
363	Т.М.Рагозина	Технология. Город мастеров. Тетрадь для внеурочной деятельности. 3 класс	3	328.899999999999977
364	Т.М.Рагозина	Технология. Город мастеров. Тетрадь для внеурочной деятельности. 4 класс	4	290.949999999999989
365	А.В. Предит	Изобразительное искусство. Мы раскрасим целый свет. Тетрадь для внеурочной деятельности. 1 класс	1	164.449999999999989
366	А.В. Предит	Изобразительное искусство. Мы раскрасим целый свет. Тетрадь для внеурочной деятельности. 2 класс	2	215.050000000000011
367	А.В. Предит	Изобразительное искусство. Мы раскрасим целый свет. Тетрадь для внеурочной деятельности. 3 класс	3	189.75
368	А.В. Предит	Изобразительное искусство. Мы раскрасим целый свет. Тетрадь для внеурочной деятельности. 4 класс	4	151.800000000000011
369	В.С. Сергеева, Р.Г. Чуракова	Математика. Школьная олимпиада. Решаем олимпиадные задачи. Методическое пособие. 2 класс	2	303.600000000000023
370	В.С. Сергеева, Р.Г. Чуракова	Математика. Решаем олимпиадные задачи. Методическое пособие. 3 класс	3	354.199999999999989
371	В.С. Сергеева, Р.Г. Чуракова, Л.Г. Кудрова	Математика. Школьная олимпиада. Решаем олимпиадные задачи. Методическое пособие. 4 класс	4	366.850000000000023
372	Р.Г. Чуракова,            А.М. Соломатин	Наша школа и безопасность. 2-4 классы	2-4	202.400000000000006
373	Р.Г. Чуракова,            А.М. Соломатин	Пожарная безопасность в нашей школе. 2-4 класс.	2-4	202.400000000000006
374	Р.Г. Чуракова,            А.М. Соломатин	Россия - великая космическая держава. 2-4 классы	2-4	240.349999999999994
375	Р.Г. Чуракова,            А.М. Соломатин	Наши спортивные достижения. 2-4 классы	2-4	253
376	Е.С. Королькова, Т.В. Коваль, Г.Э. Королёва	Обществознание. Примерная рабочая программа по учебному предмету. 5-9 классы	5-9	265.649999999999977
377	В.И. Лапшина, Д.И. Рокотова, В.А. Самкова, А.М. Шереметьева	Биология. Примерная рабочая программа по учебному предмету. 5-9 классы	5-9	392.149999999999977
378	А.И.Ивонина	Основы правовых знаний. Примерная рабочая программа по учебному курсу. 8-9 классы	8-9	202.400000000000006
379	В.А. Самкова	Экология. Примерная рабочая программа по учебному курсу. 5-9 классы	5-9	290.949999999999989
380	Тер-Минасова С.Г., Узунова Л.М., Курасовская Ю.Б., Робустова В.В.	Английский язык. 5 класс. Учебник. Часть 1 + CD	5	430.199999999999989
381	Тер-Минасова С.Г., Узунова Л.М., Курасовская Ю.Б., Робустова В.В.	Английский язык. 5 класс. Учебник. Часть 2	5	404.800000000000011
382	Тер-Минасова С.Г., Узунова Л.М., Кутьина О.Г., Ясинская Ю.С.	Английский язык. 6 класс. Учебник. Часть 1	6	404.800000000000011
383	Тер-Минасова С.Г., Узунова Л.М., Кутьина О.Г., Ясинская Ю.С.	Английский язык. 6 класс. Учебник. Часть 2	6	404.800000000000011
384	Тер-Минасова С.Г., Узунова Л.М., Кононова Е.В., Робустова В.В., Свиридова Т.Б.	Английский язык. 7 класс. Учебник. Часть 1	7	392.149999999999977
385	Тер-Минасова С.Г., Узунова Л.М., Кононова Е.В., Робустова В.В., Свиридова Т.Б.	Английский язык. 7 класс. Учебник. Часть 2	7	392.149999999999977
425	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Рабочая тетрадь. 8 класс	8	164.449999999999989
386	С.Г. Тер-Минасова, Л.М. Узунова,                 О.Г. Кутьина,                  Ю.С. Ясинская	Английский язык. 8 класс. Учебник. Часть 1	8	404.800000000000011
387	С.Г. Тер-Минасова, Л.М. Узунова,                 О.Г. Кутьина,                  Ю.С. Ясинская	Английский язык. 8 класс. Учебник. Часть 2	8	430.100000000000023
388	Тер-Минасова С.Г., Узунова Л.М., Кононова Е.В., Робустова В.В.	Английский язык. 9 класс. Учебник. Часть 1	9	455.399999999999977
389	Тер-Минасова С.Г., Узунова Л.М., Кононова Е.В., Робустова В.В.	Английский язык. 9 класс. Учебник. Часть 2	9	493.350000000000023
390	Тер-Минасова С.Г., Узунова Л.М., Карпова Н.В.	Английский язык. 5 класс. Книга для чтения	5	227.699999999999989
391	Тер-Минасова С.Г., Узунова Л.М., Кутина О.Г.	Английский язык. 6 класс. Книга для чтения	6	392.149999999999977
392	С.Г. Тер-Минасова, Е.В. Кононова, В.В. Робустова       	Английский язык. Книга для чтения. 7 класс	7	290.949999999999989
393	С.Г. Тер-Минасова, О.Г. Кутьина	Английский язык. Книга для чтения. 8 класс	8	392.149999999999977
394	Тер-Минасова С.Г., Робустова В.В., Карпова Н.В.	Английский язык. 5 класс. Рабочая тетрадь	5	290.949999999999989
395	Тер-Минасова С.Г.,  Кутина О.Г.	Английский язык. 6 класс. Рабочая тетрадь	6	328.899999999999977
396	С.Г. Тер-Минасова, Е.В. Кононова, В.В. Робустова       	Английский язык. 7 класс. Рабочая тетрадь	7	341.550000000000011
397	О.Г. Кутьина	Английский язык. Рабочая тетрадь. 8 класс	8	328.899999999999977
398	С.Г. Тер-Минасова, Е.В. Кононова, В.В. Робустова	Английский язык. Рабочая тетрадь. 9 класс	9	366.850000000000023
399	Тер-Минасова С.Г., Узунова Л.М., Курасовская Ю.Б., Робустова В.В.	Английский язык. Книга для учителя. Методическое пособие.  5 класс	5	303.600000000000023
400	С.Г. Тер-Минасова, О.Г. Кутьина, Ю.С.Ясинская               	Английский язык. Книга для учителя. Методическое пособие. 6 класс	6	392.149999999999977
401	С.Г. Тер-Минасова, Е.В. Кононова, В.В. Робустова       	Английский язык. Книга для учителя. Методическое пособие. 7 класс	7	379.5
402	С.Г. Тер-Минасова,        О.Г. Кутьина                   	Английский язык. Книга для учителя. Методическое пособие. 8 класс	8	366.850000000000023
403	С.Г. Тер-Минасова, Е.В. Кононова, В.В. Робустова       	Английский язык. Книга для учителя. Методическое пособие. 9 класс	9	366.850000000000023
404	С.Г. Тер-Минасова и др.	Английский язык. 7 класс. Звуковое пособие к учебнику 	7	220.800000000000011
405	С.Г. Тер-Минасова и др.	Английский язык. Звуковое пособие к учебнику. 9 класс	9	220.800000000000011
406	Пономарев М.В., Клоков В.А., Тырин С.В.	История России. С древнейших времен до середины XVI в. 6 класс. Контурные карты	6	30.25
407	Пономарев М.В., Клоков В.А., Тырин С.В.	История России. Середина XVI-XVIII в. 7 класс. Контурные карты	7	30.25
408	Пономарев М.В., Клоков В.А., Тырин С.В.	История России. XIX в. 8 класс. Контурные карты	8	30.25
409	Пономарев М.В., Клоков В.А., Тырин С.В.	История России. XX – начало XXI в. 9 класс. Контурные карты	9	30.25
410	Пономарев М.В., Волкова Е.В., Клоков В.А., Тырин С.В.	Новая история. Конец XV – конец XVIII в. 7 класс. Атлас. Часть 1	7	44.5499999999999972
411	Пономарев М.В., Волкова Е.В., Клоков В.А., Тырин С.В.	Новая история. Конец XVIII – начало XX в. 8 класс. Атлас. Часть 2	8	44.5499999999999972
412	Пономарев М.В., Клоков В.А., Тырин С.В.	Новейшая история. ХХ век-начало ХХI века. 9 класс. Атлас	9	56.6499999999999986
413	Пономарев М.В., Клоков В.А., Тырин С.В.	История Древнего мира. 5 класс. Контурные карты	5	30.25
414	Пономарев М.В., Клоков В.А., Тырин С.В.	История Средних веков. 6 класс. Контурные карты	6	30.25
415	Пономарев М.В., Клоков В.А., Тырин С.В.	Новая история. Конец XV – конец XVIII в. 7 класс. Контурные карты. Часть 1	7	30.25
416	Пономарев М.В., Клоков В.А., Тырин С.В.	Новая история. 8 класс. Конец XVIII – конец XX в. Контурные карты. Часть 2	8	30.25
417	Королькова Е.С.	Обществознание. 5 класс. Учебник 	5	417.449999999999989
418	Королькова Е.С.	Обществознание. Учебник. 6 класс 	6	417.449999999999989
419	Королькова Е.С., Коваль Т.В.	Обществознание. Учебник. 7 класс 	7	392.149999999999977
420	Королькова Е.С., Коваль Т.В., Королева Г.Э.	Обществознание. 8 класс. Учебник	8	417.449999999999989
421	Королькова Е.С., Коваль Т.В., Королева Г.Э.	Обществознание. 9 класс. Учебник	9	417.449999999999989
422	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Рабочая тетрадь. 5 класс	5	113.849999999999994
423	Королькова Е.С., Федоров И.Н., Федорова С.А.	Обществознание. Рабочая тетрадь. 6 класс	6	126.5
424	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Рабочая тетрадь. 7 класс. 	7	151.800000000000011
426	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Рабочая тетрадь. 9 класс.	9	227.699999999999989
427	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Методическое пособие. Рабочая тетрадь для учителя. 5 класс 	5	379.5
428	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Методическое пособие. Рабочая тетрадь для учителя. 6 класс. 	6	417.449999999999989
429	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Методическое пособие. Рабочая тетрадь для учителя. 7 класс. 	7	392.149999999999977
430	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Методическое пособие. Рабочая тетрадь для учителя. 8 класс. 	8	417.449999999999989
431	Е.С. Королькова, И.Н. Фёдоров, С.А. Фёдорова	Обществознание. Методическое пособие. Рабочая тетрадь для учителя. 9 класс. 	9	417.449999999999989
432	В.А. Самкова, Д.И. Рокотова	Биология.Учебник. 5 класс	5	417.449999999999989
433	Лапшина В.И., Рокотова Д.И.	Биология.Учебник. 6 класс	6	417.449999999999989
434	А.М. Шереметьева, Д.И. Рокотова	Биология. Учебник. 7 класс. Часть 1	7	442.75
435	А.М. Шереметьева, Д.И. Рокотова	Биология. Учебник. 7 класс. Часть 2	7	430.100000000000023
436	Шереметьева А.М.,  Рокотова Д.И.	Биология. Учебник. 8 класс. Часть 1	8	442.75
437	Шереметьева А.М.,  Рокотова Д.И.	Биология. Учебник. 8 класс. Часть 2	8	442.75
438	В.А. Самкова, Д.И. Рокотова	Биология. Рабочая тетрадь. 5 класс	5	227.699999999999989
439	В.И. Лапшина, Д.И. Рокотова	Биология. Рабочая тетрадь. 6 класс	6	202.400000000000006
440	Н.А.Калиничев	Я познаю Жизнь. Мир биологии. Практикум для внеурочной деятельности. 5 класс	5	202.400000000000006
441	Калиничев Н.А.	Биология. Тетрадь для проверочных работ. 5 класс	5	189.75
442	Калиничев Н.А.	Биология. Тетрадь для проверочных работ. 6 класс	6	202.400000000000006
443	Калиничев Н.А.	Биология. Тетрадь для проверочных работ. 7 класс	7	177.099999999999994
444	Калиничев Н.А.	Биология. Тетрадь для проверочных работ. 8 класс	8	215.050000000000011
445	В.И. Лапшина	Биология. Методическое пособие. 5 класс	5	265.649999999999977
446	И.С. Зайцева	Биология. Методическое пособие. 6 класс	6	265.649999999999977
447	В.И. Лапшина	Биология. Методическое пособие. 7 класс	7	265.649999999999977
448	В.Н. Мишакова	Биология. Методическое пособие. 8 класс	8	265.649999999999977
449	С.И. Володина, А.М. Полиевктова, В.В. Спасская	Основы правовых знаний. Учебное пособие. 8-9 классы. Часть 1	8-9	404.800000000000011
450	С.И. Володина,             А.М. Полиевктова,               В.В. Спасская	Основы правовых знаний. Учебное пособие. 8-9 классы. Часть 2	8-9	404.800000000000011
451	С.И. Володина, А.М. Полиевктова	Обществознание. Основы правовых знаний. 8-9 классы. Рабочая тетрадь. Часть 1	8-9	139.150000000000006
452	С.И. Володина, А.М. Полиевктова	Обществознание. Основы правовых знаний. 8-9 классы. Рабочая тетрадь. Часть 2	8-9	139.150000000000006
453	Чесноков А.С., Нешков К.И	Дидактические материалы по математике для 5 класса.                                                                      	5	227.699999999999989
454	Чесноков А.С., Нешков К.И	Дидактические материалы по математике для 6 класса.                                                                   	6	240.349999999999994
455	Захарова О.А.	Практические задачи по математике. 5-6 классы                  	5-6	126.5
456	Журин А.А., Корнилаев С.В., Шалашова М.М.	Химия. 8 класс. Учебник + CD	8	358.800000000000011
457	Самкова В.А., Шурхал Л.И., Козленко С.И.	Экология. Живая планета. Учебное пособие. 5 класс	5	392.149999999999977
458	Самкова В.А., Шурхал Л.И.	Экология. Природа, человек, культура.Учебное пособие. 6 класс. 	6	290.949999999999989
459	Самкова В.А., Шурхал Л.И.	Экология. Среды жизни на планете. Учебное пособие. 7 класс.	7	316.25
460	Самкова В.А.	Экология. Экосистемы и человек.Учебное пособие. 8 класс. 	8	392.149999999999977
461	Самкова В.А.	Экология. Город, в котором мы живём. Учебное пособие. 9 класс	9	430.100000000000023
462	Шурхал Л.И.	Экология. Живая планета. Рабочая тетрадь. 5 класс	5	164.449999999999989
463	Пономарев М.В., Романов П.М.	История России. 6 класс. Тестовые тематические контрольные работы	6	73.7000000000000028
464	Пономарев М.В., Романов П.М.	История России. 7 класс. Тестовые тематические контрольные работы	7	73.7000000000000028
465	Пономарев М.В., Романов П.М.	История России. 8 класс. Тестовые тематические контрольные работы	8	73.7000000000000028
466	Пономарев М.В., Романов П.М.	Готовимся к экзаменам. 9 класс. Тренажер для подготовки к государственной итоговой аттестации за основную школу по истории России	9	85.7999999999999972
467	Королькова Е.С.	Обществознание. 6 класс. Тестовые тематические контрольные работы	6	66
468	Королькова Е.С.	Обществознание. 7 класс. Тестовые тематические контрольные работы	7	66
469	Коваль Т.В.	Обществознание. 8 класс. Тестовые тематические контрольные работы	8	73.7000000000000028
470	Королькова Е.С.	Готовимся к экзаменам. 9 класс. Тренажер для подготовки к государственной итоговой аттестации за основную школу по обществознанию	9	91.2999999999999972
471	Крылова   О.В.	География. 6 класс. Тестовые тематические контрольные работы	6	66
472	Крылова   О.В.	Готовимся к экзаменам. 9 класс. Тренажер для подготовки к государственной итоговой аттестации за основную школу по географии	9	85.7999999999999972
473	Снастина М.Г.	Химия. 8 класс. Тестовые тематические контрольные работы	8	61.0499999999999972
474	Снастина М.Г.	Готовимся к экзаменам. 9 класс. Тренажер для подготовки к государственной итоговой аттестации за основную школу по химии	9	73.7000000000000028
475	С.Г. Тер-Минасова, В.В.Робустова, Е.И.Сухина, Д.С.Обукаускайте, Ю.Б.Курасовская	Английский язык. Учебник. 10 класс. Часть 1	10	430.100000000000023
476	С.Г. Тер-Минасова, В.В.Робустова, Е.И.Сухина, Д.С.Обукаускайте, Ю.Б.Курасовская	Английский язык. Учебник. 10 класс. Часть 2	10	430.100000000000023
477	С.Г. Тер-Минасова, Е.М. Мишиева,  Е.М. Жура	Английский язык. Учебник. 11 класс. Часть 1	11	430.100000000000023
478	С.Г. Тер-Минасова, Е.М. Мишиева,  Е.М. Жура	Английский язык. Учебник. 11 класс. Часть 2	11	430.100000000000023
\.


--
-- Data for Name: book_binom; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_binom (id, author, name, grade, price) FROM stdin;
1	Нечаева Н.В., Белорусец К.С.	Нечаева Н.В., Белорусец К.С., Учебник по обучению грамоте и чтению: Азбука.	1	535
2	Нечаева Н.В. 	Нечаева Н.В. , Русский язык.	1	535
3	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение	1	535
4	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н.	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н., Математика в 2-х частях, часть 1	1	535
5	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н.	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н., Математика в 2-х частях, часть 2	1	535
6	Дмитриева Н.Я., Казаков Н.А.	Дмитриева Н.Я., Казаков Н.А., Окружающий мир	1	535
7	Цирулик Н.А., Проснякова Т.Н.	Цирулик Н.А., Проснякова Т.Н., Технология	1	535
8	Ригина Г.С. 	Ригина Г.С. , Музыка	1	535
9	Шаулин В.Н., Комаров А.В., Назарова И.Г., Шустиков Г.С.	Шаулин В.Н., Комаров А.В., Назарова И.Г., Шустиков Г.С., Физическая культура	1-4	535
10	Нечаева Н.В. 	Нечаева Н.В. , Русский язык в 2-х частях, часть 1	2	535
11	Нечаева Н.В.	Нечаева Н.В., Русский язык в 2-х частях, часть 2	2	535
12	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение в 2-х частях, часть 1	2	535
13	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение в 2-х частях, часть 2	2	535
14	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н.	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н., Математика в 2-х частях, часть 1	2	535
15	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н.	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н., Математика в 2-х частях, часть 2	2	535
16	Дмитриева Н.Я., Казаков А. 	Дмитриева Н.Я., Казаков А. , Окружающий мир в 2-х частях, часть 1	2	535
17	Дмитриева Н.Я., Казаков А. 	Дмитриева Н.Я., Казаков А. , Окружающий мир в 2-х частях, часть 2	2	535
18	 Цирулик Н.А., Проснякова Т.Н. 	 Цирулик Н.А., Проснякова Т.Н. , Технология	2	535
19	Ригина Г.С.	Ригина Г.С., Музыка	2	535
20	Нечаева Н.В., Яковлева С.Г.	Нечаева Н.В., Яковлева С.Г., Русский язык в 2-х частях, часть 1	3	535
21	Нечаева Н.В., Яковлева С.Г.	Нечаева Н.В., Яковлева С.Г., Русский язык в 2-х частях, часть 2	3	535
22	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение в 2-х частях, часть 1	3	535
23	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение в 2-х частях, часть 2	3	535
24	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н.	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н., Математика в 2-х частях, часть 1	3	535
25	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н.	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н., Математика в 2-х частях, часть 2	3	535
26	Дмитриева Н.Я., Казаков А. 	Дмитриева Н.Я., Казаков А. , Окружающий мир в 2-х частях, часть 1	3	535
27	Дмитриева Н.Я., Казаков А. 	Дмитриева Н.Я., Казаков А. , Окружающий мир в 2-х частях, часть 2	3	535
28	Цирулик Н.А., Хлебникова С.И. 	Цирулик Н.А., Хлебникова С.И. , Технология	3	535
29	Ригина Г.С.	Ригина Г.С., Музыка	3	535
30	Нечаева Н.В., Яковлева С.Г.	Нечаева Н.В., Яковлева С.Г., Русский язык в 2-х частях, часть 1	4	535
31	Нечаева Н.В., Яковлева С.Г.	Нечаева Н.В., Яковлева С.Г., Русский язык в 2-х частях, часть 2	4	535
32	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение в 2-х частях, часть 1	4	535
33	Свиридова В.Ю.	Свиридова В.Ю., Литературное чтение в 2-х частях, часть 2	4	535
34	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н.	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н., Математика в 2-х частях, часть 1	4	535
35	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н.	Аргинская И.И., Ивановская Е.И.. Кормишина С.Н., Математика в 2-х частях, часть 2	4	535
36	Дмитриева Н.Я., Казаков А.	Дмитриева Н.Я., Казаков А., Окружающий мир в 2-х частях, часть 1	4	535
37	Дмитриева Н.Я., Казаков А.	Дмитриева Н.Я., Казаков А., Окружающий мир в 2-х частях, часть 2	4	535
38	Цирулик Н.А., Хлебникова С.И., Нагель О.И., Цирулик Г.Э.	Цирулик Н.А., Хлебникова С.И., Нагель О.И., Цирулик Г.Э., Технология	4	535
39	Ригина Г.С. 	Ригина Г.С. , Музыка	4	535
41	Александрова Э.И.	Математика (в 2-х книгах)  кн.1	1	427
42	Александрова Э.И.	Математика (в 2-х книгах)  кн.2	1	427
43	Александрова Э.И.	Математика (в 2-х книгах)  кн.1	2	446
44	Александрова Э.И.	Математика (в 2-х книгах)  кн.2	2	446
45	Александрова Э.И.	Математика (в 2-х книгах) кн.1	3	442
46	Александрова Э.И.	Математика (в 2-х книгах)  кн.2	3	442
47	Александрова Э.И.	Математика (в 2-х книгах) кн.1	4	442
48	Александрова Э.И.	Математика (в 2-х книгах)  кн.2	4	442
49	Давыдов В.В., Горбов С.Ф., Микулина Г.Г., Савельева О.В. 	Математика	1	436
50	Давыдов В.В., Горбов С.Ф., Микулина Г.Г., Савельева О.В. 	Математика (в 2-х книгах) кн.1	2	268
51	Давыдов В.В., Горбов С.Ф., Микулина Г.Г., Савельева О.В. 	Математика (в 2-х книгах)  кн.2	2	268
52	Давыдов В.В., Горбов С.Ф., Микулина Г.Г., Савельева О.В. 	Математика (в 2-х книгах) кн.1	3	271
53	Давыдов В.В., Горбов С.Ф., Микулина Г.Г., Савельева О.В. 	Математика (в 2-х книгах)  кн.2	3	271
54	Давыдов В.В., Горбов С.Ф., Микулина Г.Г.	Математика (в 2-х книгах) кн.1	4	308
55	Давыдов В.В., Горбов С.Ф., Микулина Г.Г.	Математика (в 2-х книгах)  кн.2	4	308
56	Чудинова Е.В., Букварёва Е.Н.	Окружающий мир	1	463
57	Чудинова Е.В., Букварёва Е.Н.	Окружающий мир 	2	486
58	Чудинова Е.В., Букварёва Е.Н.	Окружающий мир	3	486
59	Чудинова Е.В., Букварёва Е.Н.	Окружающий мир ( в 2-х книгах)  Кн.1	4	409
60	Чудинова Е.В., Букварёва Е.Н.	Окружающий мир ( в 2-х книгах)  Кн.2	4	409
61	Репкин В.В., Восторгова Е.В., Левин В.А.	Букварь (в 2 частях) Ч.1	1	350
62	Репкин В.В., Восторгова Е.В., Левин В.А.	Букварь (в 2 частях) Ч.2	1	350
63	Репкин В.В., Восторгова Е.В.	Русский язык	1	450
64	Репкин В.В., Некрасова Т.В., Восторгова Е.В.	Русский язык (в 2  частях) Ч.1	2	360
65	Репкин В.В., Некрасова Т.В., Восторгова Е.В.	Русский язы (в 2 частях) Ч.2	2	360
66	Репкин В.В., Восторгова Е.В., Некрасова Т.В., Чеботкова Л.В.	Русский язык ( в 2 частях) Ч.1	3	353
67	Репкин В.В., Восторгова Е.В., Некрасова Т.В., Чеботкова Л.В.	Русский язык  (в 2 частях) Ч.2	3	353
68	Репкин В.В., Восторгова Е.В., Некрасова Т.В.	Русский язык ( в 2 частях) Ч.1	4	365
69	Репкин В.В., Восторгова Е.В., Некрасова Т.В.	Русский язык ( в 2 частях) Ч.2	4	365
70	Тимченко Л.И.	Букварь. Учебник по обучению грамоте. 1 класс. В 2-х частях. Часть 1	1	320
71	Тимченко Л.И.	Букварь. Учебник по обучению грамоте. 1 класс. В 2-х частях. Часть 2	1	320
72	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 1 класса	1	397
73	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 2 класса в 2-х частях Ч.1	2	354
74	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 2 класса в 2-х частях Ч.2	2	354
75	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 3 класса в 2-х частях Ч.1	3	375
76	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 3 класса в 2-х частях Ч.2	3	375
77	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 4 класса в 2-х частях Ч.1	4	375
78	Ломакович С.В  Тимченко Л.И.	Русский язык. Учебник для 4 класса в 2-х частях Ч.2	4	375
79	Эльконин Д.Б.	Букварь. Обучение грамоте: учебник для 1 класса. В двух частях. Часть 1	1	320
80	Эльконин Д.Б.	Букварь. Обучение грамоте: учебник для 1 класса. В двух частях. Часть 2	1	320
81	Матвеева Е.И.	Литературное чтение. Учебник для 1 класса (Д.Б. Эльконина-В.В.Давыдова)	1	498
82	Матвеева Е.И.	Литературное чтение. Учебник для 2 класса в 2-х книгах Кн.1 (Д.Б. Эльконина-В.В.Давыдова)	2	424
83	Матвеева Е.И.	Литературное чтение. Учебник для 2 класса в 2-х книгах Кн.2 (Д.Б. Эльконина-В.В.Давыдова)	2	424
84	Матвеева Е.И.	Литературное чтение. Учебник для 3 класса в 2-х книгах Кн.1 (Д.Б. Эльконина-В.В.Давыдова)	3	424
85	Матвеева Е.И.	Литературное чтение. Учебник для 3 класса в 2-х книгах Кн.2 (Д.Б. Эльконина-В.В.Давыдова)	3	424
86	Матвеева Е.И.	Литературное чтение. Учебник для 4 класса в 2-х книгах Кн.1 (Д.Б. Эльконина-В.В.Давыдова)	4	407
87	Матвеева Е.И.	Литературное чтение. Учебник для 4 класса в 2-х книгах Кн.2 (Д.Б. Эльконина-В.В.Давыдова)	4	407
137	Босова Л.Л., Босова А.Ю.	 Информатика	7	549
89	Петерсон Л.Г. 	Математика ( в 3 частях)Ч. 1	1	276
90	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.2	1	276
91	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.3	1	288
92	Петерсон Л.Г. 	Математика ( в 3 частях)Ч. 1	2	294
93	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.2	2	317
94	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.3	2	317
95	Петерсон Л.Г. 	Математика ( в 3 частях)Ч. 1	3	317
96	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.2	3	294
97	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.3	3	294
98	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.1	4	294
99	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.2	4	317
100	Петерсон Л.Г. 	Математика ( в 3 частях)Ч.3	4	294
101	 Павлов Д.И., Полежаева О.А., Коробкова Л.Н. и др./Под ред. А.В. Горячева 	Информатика.( в 2 частях) Ч.1	2	305
102	 Павлов Д.И., Полежаева О.А., Коробкова Л.Н. и др./Под ред. А.В. Горячева 	Информатика.( в 2 частях) Ч.2	2	305
103	 Павлов Д.И., Полежаева О.А., Коробкова Л.Н. и др./Под ред. А.В. Горячева 	Информатика.( в 2 частях) Ч.1	3	305
104	 Павлов Д.И., Полежаева О.А., Коробкова Л.Н. и др./Под ред. А.В. Горячева 	Информатика.( в 2 частях) Ч.2	3	305
105	 Павлов Д.И., Полежаева О.А., Коробкова Л.Н. и др./Под ред. А.В. Горячева 	Информатика.( в 2 частях) Ч.1	4	305
106	 Павлов Д.И., Полежаева О.А., Коробкова Л.Н. и др./Под ред. А.В. Горячева 	Информатика.( в 2 частях) Ч.2	4	305
107	Вахрушев А.А., Бурский О.В., Раутиан А.С.	Окружающий мир. 1 класс: в 2-х частях. Ч.1	1	341
108	Вахрушев А.А., Бурский О.В., Раутиан А.С.	Окружающий мир. 1 класс: в 2-х частях. Ч.2	1	341
109	Вахрушев А.А., Ловягин С.Н., Кремлева И.И., Зорин Н.В.	Окружающий мир. 2 класс: в 2-х частях. Ч. 1	2	352
110	Вахрушев А.А., Ловягин С.Н., Кремлева И.И., Зорин Н.В.	Окружающий мир. 2 класс: в 2-х частях. Ч. 2	2	352
111	Вахрушев А.А., Борисанова А.О., Родионова Е.И. и др.	Окружающий мир. 3 класс: в 2-х частях. Ч.1	3	352
112	Вахрушев А.А., Борисанова А.О., Родионова Е.И. и др.	Окружающий мир. 3 класс: в 2-х частях. Ч.2	3	363
113	Вахрушев А.А., Ловягин С.Н., Кремлева И.И. и др. 	Окружающий мир. 4 класс: в 2-х частях. Ч.1	4	352
114	Вахрушев А.А., Ловягин С.Н., Кремлева И.И. и др. 	Окружающий мир. 4 класс: в 2-х частях. Ч.2	4	363
116	Геронимус Т.М.	Технология	1	385
117	Геронимус Т.М.	Технология 	2	385
118	Геронимус Т.М.	Технология	3	385
119	Геронимус Т.М.	Технология	4	385
120	Матвеева Н.В., Челак Е.Н., Конопатова Н.К.  Панкратова Л.П., Нурова Н.А.	Информатика (в 2 частях ) Ч.1	2	286
121	Матвеева Н.В., Челак Е.Н., Конопатова Н.К.  Панкратова Л.П., Нурова Н.А.	Информатика (в 2 частях ) Ч.2	2	286
122	Матвеева Н.В., Челак Е.Н., Конопатова Н.К.  Панкратова Л.П., Нурова Н.А.	Информатика (в 2 частях ) Ч.1	3	305
123	Матвеева Н.В., Челак Е.Н., Конопатова Н.К.  Панкратова Л.П., Нурова Н.А.	Информатика (в 2 частях ) Ч.2	3	305
124	Матвеева Н.В., Челак Е.Н., Конопатова Н.К.  Панкратова Л.П., Нурова Н.А.	Информатика (в 2 частях ) Ч.1	4	305
125	Матвеева Н.В., Челак Е.Н., Конопатова Н.К.  Панкратова Л.П., Нурова Н.А.	Информатика (в 2 частях ) Ч.2	4	305
126	Плаксин М.А. Иванова Н.Г. Русакова О.Л.	Информатика (в 2 частях ) Ч.1	3	241
127	Плаксин М.А. Иванова Н.Г. Русакова О.Л.	Информатика (в 2 частях ) Ч.2	3	241
128	Плаксин М.А. Иванова Н.Г. Русакова О.Л.	Информатика (в 2 частях ) Ч.1	4	263
129	Плаксин М.А. Иванова Н.Г. Русакова О.Л.	Информатика (в 2 частях ) Ч.2	4	263
130	Могилев А.В.  Могилева В.Н. Цветкова М.С.	Информатика в 2  ч. Ч.1 	3	218
131	Могилев А.В.  Могилева В.Н. Цветкова М.С.	Информатика в 2  ч. Ч.2 	3	218
132	Могилев А.В.  Могилева В.Н. Цветкова М.С.	Информатика (в 2  частях) Ч.1 	4	239
133	Могилев А.В.  Могилева В.Н. Цветкова М.С.	Информатика (в 2  частях) Ч.2 	4	239
135	Босова Л.Л., Босова А.Ю.	 Информатика	5	524
136	Босова Л.Л., Босова А.Ю.	 Информатика	6	534
138	Босова Л.Л., Босова А.Ю.	 Информатика	8	534
139	Босова Л.Л., Босова А.Ю.	 Информатика	9	560
140	Семакин И.Г., Залогова Л.А., Русаков С.В., Шестакова Л.В.        	Информатика	7	453
141	Семакин И.Г., Залогова Л.А., Русаков С.В., Шестакова Л.В.        	Информатика	8	476
142	Семакин И.Г., Залогова Л.А., Русаков С.В., Шестакова Л.В.	Информатика	9	549
143	Поляков К.Ю., Еремин Е.А.                          	 Информатика. ( в 2 частях). Ч.1	7	345
144	Поляков К.Ю., Еремин Е.А.                          	 Информатика. ( в 2 частях). Ч.2	7	345
145	Поляков К.Ю., Еремин Е.А.                          	Информатика	8	541
146	Поляков К.Ю., Еремин Е.А.                          	Информатика	9	552
147	Босова Л.Л.,  Босова А.Ю.     	Информатика. Базовый уровень 	10	541
148	Босова Л.Л.,  Босова А.Ю.     	Информатика. Базовый уровень 	11	541
149	Угринович Н.Д.                                                                                    	Информатика. Базовый уровень 	10	495
150	Угринович Н.Д.    	Информатика. Базовый уровень 	11	495
151	Семакин И.Г., Шеина Т.Ю., Шестакова Л.В.	Информатика (углубленный уровень)( в 2 частя) Ч.1	10	345
152	Семакин И.Г., Шеина Т.Ю., Шестакова Л.В. 	Информатика (углубленный уровень)( в 2 частя) Ч.2	10	345
153	Семакин И.Г., Хеннер Е.К., Шестакова Л.В. 	Информатика (углубленный уровень)( в 2 частя) Ч.1	11	345
154	Семакин И.Г.,Хеннер Е.К., Шестакова Л.В. 	Информатика (углубленный уровень)( в 2 частя) Ч.2	11	345
155	Поляков К.Ю., Еремин Е.А. 	Информатика ( базовый и углубленный уровни) ( в 2 частях) Ч.1	10	473
156	Поляков К.Ю., Еремин Е.А.  	Информатика ( базовый и углубленный уровни) ( в 2 частях) Ч.2	10	473
157	Поляков К.Ю., Еремин Е.А.  	Информатика ( базовый и углубленный уровни) ( в 2 частях) Ч.1	11	420
158	Поляков К.Ю., Еремин Е.А.  	Информатика ( базовый и углубленный уровни) ( в 2 частях) Ч.2	11	420
159	Под ред. Макаровой Н.В.     	Информатика ( базовый уровень) (в 2 частях) Ч.1	10-11	420
160	Под ред. Макаровой Н.В.     	Информатика ( базовый уровень) (в 2 частях) Ч.2	10-11	420
161	Семакин И.Г., Хеннер Е.К., Шеина Т.Ю. 	Информатика (базовый уровень)  	10	476
162	Семакин И.Г., Хеннер Е.К., Шеина Т.Ю. 	Информатика (базовый уровень)  	11	453
163	Калинин И.А.,Самылкина Н.Н.	Информатика (углубленный уровень)	10	395
164	Калинин И.А.,Самылкина Н.Н.	Информатика (углубленный уровень)	11	350
166	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В., под ред. В.А. Орлова	Физика.( в 2 частях). Ч.1	7	368
167	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В., под ред. В.А. Орлова	Физика.( в 2 частях). Ч.2	7	368
168	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В., под ред. В.А. Орлова	Физика.( в 2 частях). Ч.1	8	426
169	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В., под ред. В.А. Орлова	Физика.( в 2 частях). Ч.2	8	426
170	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В., под ред. В.А. Орлова	Физика.( в 2 частях). Ч.1	9	437
171	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В., под ред. В.А. Орлова	Физика.( в 2 частях). Ч.2	9	437
172	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.	Физика (базовый уровень)	10	638
173	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.	Физика (базовый уровень)	11	638
174	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.; под редакцией В.А. Орлова	Физика.( базовый и углубленный уровни) (в 2 частях) Ч.1	10	517
175	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.; под редакцией В.А. Орлова	Физика.( базовый и углубленный уровни) (в 2 частях) Ч.2	10	517
176	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.;  под редакцией В.А. Орлова	Физика.( базовый и углубленный уровни) (в 2 частях) Ч.1	11	517
177	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.;  под редакцией В.А. Орлова	Физика.( базовый и углубленный уровни) (в 2 частях) Ч.2	11	517
178	Дорофеев Г.В., Петерсон Л.Г.	Математика (в 2 частях)  Ч.1	5	290
179	Дорофеев Г.В., Петерсон Л.Г.	Математика (в 2 частях)  Ч.2	5	331
180	Дорофеев Г.В., Петерсон Л.Г.	Математика (в 3 частях)   Ч.1	6	262
181	Дорофеев Г.В., Петерсон Л.Г.	Математика (в 3 частях)   Ч.2	6	276
182	Дорофеев Г.В., Петерсон Л.Г.	Математика (в 3 частях)   Ч.3	6	290
183	Петерсон Л.Г., Абраров Д.Л., Чуткова Е.В.	Алгебра ( в 3 частях ) Ч.1	7	310
184	Петерсон Л.Г., Абраров Д.Л., Чуткова Е.В.	Алгебра ( в 3 частях ) Ч.2	7	310
185	Петерсон Л.Г., Абраров Д.Л., Чуткова Е.В.	Алгебра ( в 3 частях ) Ч.3	7	310
186	Петерсон Л.Г., Агаханов Н.Х., Петрович А.Ю., Подлипский О.К., Рогатова М.В., Трушин Б.В.	Алгебра ( в 3 частях ) Ч.1	8	310
187	Петерсон Л.Г., Агаханов Н.Х., Петрович А.Ю., Подлипский О.К., Рогатова М.В., Трушин Б.В.	Алгебра ( в 3 частях ) Ч.2	8	310
188	Петерсон Л.Г., Агаханов Н.Х., Петрович А.Ю., Подлипский О.К., Рогатова М.В., Трушин Б.В.	Алгебра ( в 3 частях ) Ч.3	8	310
189	Петерсон Л.Г., Агаханов Н.Х., Петрович А.Ю., Подлипский О.К., Рогатова М.В., Трушин Б.В.	Алгебра: ( в 2 частях) Ч.1	9	350
190	Петерсон Л.Г., Агаханов Н.Х., Петрович А.Ю., Подлипский О.К., Рогатова М.В., Трушин Б.В.	Алгебра: ( в 2 частях) Ч.2	9	350
191	 Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	\nАлгебра. 7 класс	7	680
192	 Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	\nАлгебра. 8 класс	8	690
193	 Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	\nАлгебра. 9 класс	9	680
194	Смирнов В.А., Смирнова И.М.	Геометрия. 7 класс	7	305
195	Смирнов В.А., Смирнова И.М.	Геометрия. 8 класс	8	305
196	Смирнов В.А., Смирнова И.М.	Геометрия. 9 класс	9	305
197	Засов А.В.,Сурдин В.Г.	Астрономия. 10-11 классы	10-11	810
199	Матвеева Е.И.	Букварь. Обучение грамоте. 1 класс: В 2-х частях. Ч.1	1	385
200	Матвеева Е.И.	Букварь. Обучение грамоте. 1 класс: В 2-х частях. Ч.2	1	385
201	Матвеева Е.И.	Русский язык. 1 класс	1	424
202	Матвеева Е.И.	Русский язык. 2 класс:  В 2-х частях. Ч.1	2	352
203	Матвеева Е.И.	Русский язык. 2 класс:  В 2-х частях. Ч.2	2	352
204	Матвеева Е.И.	Русский язык. 3 класс: В 2-х частях. Ч.1	3	363
205	Матвеева Е.И.	Русский язык. 3 класс: В 2-х частях. Ч.2	3	363
206	Матвеева Е.И.	Русский язык. 4 класс: В 2-х частях. Ч.1	4	363
207	Матвеева Е.И.	Русский язык. 4 класс: В 2-х частях. Ч.2	4	363
208	Матвеева Е.И.	Литературное чтение. 1 класс: В 2-х частях. Ч.1	1	352
209	Матвеева Е.И.	Литературное чтение. 1 класс: В 2-х частях. Ч.2	1	352
210	Матвеева Е.И.	Литературное чтение. 2 класс: В 3-х частях. Ч.1 	2	341
211	Матвеева Е.И.	Литературное чтение. 2 класс: В 3-х частях. Ч.2 	2	341
212	Матвеева Е.И.	Литературное чтение. 2 класс: В 3-х частях. Ч.3 	2	352
213	Матвеева Е.И.	Литературное чтение. 3 класс: В 3-х частях. Ч.1	3	341
214	Матвеева Е.И.	Литературное чтение. 3 класс: В 3-х частях. Ч.2	3	341
215	Матвеева Е.И.	Литературное чтение. 3 класс: В 3-х частях. Ч.3	3	352
216	Матвеева Е.И.	Литературное чтение. 4 класс: В 3-х частях. Ч. 1	4	341
217	Матвеева Е.И.	Литературное чтение. 4 класс: В 3-х частях. Ч. 2	4	341
218	Матвеева Е.И.	Литературное чтение. 4 класс: В 3-х частях. Ч. 3	4	352
219	Дронов В.П., Cавельева Л.Е.	География. 5 класс	5	518
220	Дронов В.П., Cавельева Л.Е.	География. 6 класс	6	529
221	Дронов В.П., Баринова И.И.	География. 7 класс	7	552
222	Баринова И.И., Дронов В.П. 	География. 8 класс	8	564
223	Дронов В.П., Баринова И.И.	География. 9 класс	9	575
224	Мансурова С.Е., Рохлов В.С., Мишняева Е.Ю.	Биология. 5 класс	5	403
225	Теремов А.В., Славина Н.В.	Биология. 6 класс	6	426
226	Теремов А.В., Перелович Н.В.	Биология. 7 класс	7	426
227	Теремов А.В., Жигарев И.А.	Биология. 8 класс	8	437
228	Рохлов В.С., Трофимов С.Б., Теремов А.В.	Биология. 9 класс	9	437
229	Угринович Н.Д.                         	Информатика. 7 класс 	7	453
230	Угринович Н.Д.      	Информатика. 8 класс 	8	453
231	Угринович Н.Д.                                                     	Информатика. 9 класс 	9	524
232	Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. Базовый уровень. 10 класс: В 2 ч. Ч.1	10	390
233	Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. Базовый уровень. 10 класс: В 2 ч. Ч.2	10	390
234	Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. Базовый уровень. 11 класс: В 2 ч. Ч.1	11	360
235	Мордкович А.Г., Семенов П.В., Александрова Л.А., Мардахаева Е.Л.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. Базовый уровень. 11 класс: В 2 ч. Ч.2	11	360
236	Смирнов В.А., Смирнова И.М.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. Базовый и углубленный уровни.     10 класс	10	620
237	Смирнов В.А., Смирнова И.М.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. Базовый и углубленный уровни.     11 класс	11	620
238	Поляков К.Ю., Еремин Е.А.	Информатика. Углубленный уровень: учебник для 10 класса (в двух частях) (комплект) 	10	891
239	Поляков К.Ю., Еремин Е.А.	Информатика. Углубленный уровень: учебник для 11 класса (в двух частях) (комплект) 	11	788
241	Петерсон Л.Г. 	Математика: 1 класс: Рабочая тетрадь. В 3 ч. Ч. 1	1	124
242	Петерсон Л.Г. 	Математика: 1 класс: Рабочая тетрадь. В 3 ч. Ч. 2	1	124
243	Петерсон Л.Г. 	Математика: 1 класс: Рабочая тетрадь. В 3 ч. Ч. 3	1	124
244	Петерсон Л.Г. 	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 1. Вариант 1	1	145
245	Петерсон Л.Г. 	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 1. Вариант  2 	1	145
246	Петерсон Л.Г. 	Развивающие самостоятельные и контрольные работы. 1 кл. В 3 ч. Ч.1	1	145
247	Петерсон Л.Г. 	Развивающие самостоятельные и контрольные работы. 1 кл. В 3 ч. Ч.2	1	145
248	Петерсон Л.Г. 	Развивающие самостоятельные и контрольные работы. 1 кл. В 3 ч. Ч.3	1	145
249	Петерсон Л.Г. 	Развивающие самостоятельные и контрольные работы.      2 кл. В 3 ч. Ч.1	2	180
250	Петерсон Л.Г. 	Развивающие самостоятельные и контрольные работы.      2 кл. В 3 ч. Ч.2	2	180
251	Петерсон Л.Г. 	Развивающие самостоятельные и контрольные работы.      2 кл. В 3 ч. Ч.3	2	180
252	Петерсон Л.Г. 	Математика: 2 класс: Рабочая тетрадь. В 3 ч.Ч.1	2	124
253	Петерсон Л.Г. 	Математика: 2 класс: Рабочая тетрадь. В 3 ч.Ч.2	2	124
254	Петерсон Л.Г. 	Математика: 2 класс: Рабочая тетрадь. В 3 ч.Ч.3	2	124
255	Петерсон Л.Г., Барзунова Э.Р, Невретдинова А.А.	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 2. Вариант 1	2	145
256	Петерсон Л.Г., Барзунова Э.Р, Невретдинова А.А.	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 2. Вариант 2 	2	145
257	Петерсон Л.Г. , Кубышева М.А.	Мир деятельности. Учебное пособие + разрезной материал 1 кл. 	1	554
258	Петерсон Л.Г. , Кубышева М.А.	Мир деятельности. Учебное пособие + разрезной материал 2 кл. 	2	554
259	Петерсон Л.Г. , Кубышева М.А.	Мир деятельности. Учебное пособие + разрезной материал 3 кл. 	3	554
260	Петерсон Л.Г. , Кубышева М.А.	Мир деятельности. Учебное пособие + разрезной материал 4 кл. 	4	554
261	Петерсон Л.Г. 	Математика: 3 класс: Рабочая тетрадь. В 3 ч. Ч.1	3	124
262	Петерсон Л.Г. 	Математика: 3 класс: Рабочая тетрадь. В 3 ч. Ч.2	3	124
263	Петерсон Л.Г. 	Математика: 3 класс: Рабочая тетрадь. В 3 ч. Ч.3	3	124
264	Петерсон Л.Г., Невретдинова А.А., Поникарова Т.Ю.	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 3. Вариант 1	3	145
265	Петерсон Л.Г., Невретдинова А.А., Поникарова Т.Ю.	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 3. Вариант 2 	3	145
266	Петерсон Л.Г. 	Математика: 4 класс: Рабочая тетрадь. В 3 ч. Ч.1	4	124
267	Петерсон Л.Г. 	Математика: 4 класс: Рабочая тетрадь. В 3 ч. Ч.2	4	124
268	Петерсон Л.Г. 	Математика: 4 класс: Рабочая тетрадь. В 3 ч. Ч.3	4	124
269	Петерсон Л.Г. , Горячева Т.С., Зубавичене Т.В., Невретдинова А.А.	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 4. Вариант 1	4	145
270	Петерсон Л.Г. , Горячева Т.С., Зубавичене Т.В., Невретдинова А.А.	Самостоятельные и контрольные работы по математике для начальной школы. Выпуск 4. Вариант 2	4	145
271	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 1 класс: рабочая тетрадь: в 2 ч. Ч.1	1	187
272	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 1 класс: рабочая тетрадь: в 2 ч. Ч.2	1	187
273	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 2 класс: рабочая тетрадь: в 2 ч. Ч.1	2	187
274	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 2 класс: рабочая тетрадь: в 2 ч. Ч.2	2	187
275	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 3 класс: рабочая тетрадь: в 2 ч. Ч.1	3	187
276	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 3 класс: рабочая тетрадь: в 2 ч. Ч.2	3	187
277	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 4 класс: рабочая тетрадь: в 2 ч. Ч.1	4	187
278	под ред. А.В. Горячева : Аверкин Ю.А., Павлов Д.И.	Информатика. 4 класс: рабочая тетрадь: в 2 ч. Ч.2	4	187
279	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: рабочая тетрадь для 2 класса: в 2 ч. Ч.1	2	127
280	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: рабочая тетрадь для 2 класса: в 2 ч. Ч.2	2	127
281	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: рабочая тетрадь для 3 класса: в 2 ч. Ч.1	3	137
282	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: рабочая тетрадь для 3 класса: в 2 ч. Ч.2	3	137
283	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: рабочая тетрадь для 4 класса: в 2 ч. Ч.1	4	127
284	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: рабочая тетрадь для 4 класса: в 2 ч. Ч.2	4	140
285	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: контрольные работы для 2 класса	2	122
286	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика. 3 класс: контрольные работы	3	137
287	Матвеева Н.В., Челак Е.Н., Конопатова Н.К. и др.	Информатика: контрольные работы для 4 класса	4	127
288	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 5 класса: в 2 ч . Ч. 1	5	102
289	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 5 класса: в 2 ч . Ч. 2	5	102
290	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 6 класса: в 2 ч . Ч.1	6	102
291	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 6 класса: в 2 ч . Ч.2	6	102
292	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 7 класса: в 2 ч . Ч.1	7	102
293	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 7 класса: в 2 ч . Ч.2	7	102
294	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 8 класса: в 2 ч . Ч.1	8	102
295	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 8 класса: в 2 ч . Ч.2	8	102
296	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 9 класса: в 2 ч . Ч.1	9	102
297	Босова Л.Л., Босова А.Ю.	Информатика: рабочая тетрадь для 9 класса: в 2 ч . Ч.2	9	102
298	Босова Л.Л., Босова А.Ю.	Информатика. 5 класс: самостоятельные и контрольные работы	5	102
299	Босова Л.Л., Босова А.Ю., Аквилянов Н.А.	Информатика. 5 класс. Итоговая контрольная работа	5	42
300	Босова Л.Л., Босова А.Ю.	Информатика. 6 класс: самостоятельные и контрольные работы	6	102
301	Босова Л.Л., Босова А.Ю., Аквилянов Н.А.	Информатика. 6 класс. Итоговая контрольная работа	6	42
302	Мирончик Е.А., Куклина И.Д., Босова Л.Л.	Информатика. Изучаем алгоритмику. Мой КуМир. 5-6 классы	5 - 6	137
303	Сорокина Т.Е., Босова А.Ю., под ред. Босовой Л.Л.	Практикум по программированию в среде Scratch. 5 - 6 классы	5 - 6	430
304	Босова Л.Л., Босова А.Ю. и др.	Информатика.7 класс: самостоятельные и контрольные работы	7	102
499	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство	4	535
305	Босова Л.Л., Босова А. Ю., Аквилянов Н. А.	Информатика. 7 класс. Итоговая контрольная работа	7	42
306	Босова Л.Л., Босова А.Ю. и др.	Информатика. 8 класс: самостоятельные и контрольные работы	8	102
307	Босова Л.Л., Босова А. Ю., Аквилянов Н. А.	Информатика. 8 класс. Итоговая контрольная работа	8	42
308	Босова Л.Л., Босова А.Ю. и др.	Информатика. 9 класс: самостоятельные и контрольные работы	9	102
309	Босова Л.Л., Босова А.Ю., Аквилянов Н.А.	Информатика. 7-9 классы. Сборник задач и упражнений	7 - 9	347
310	Босова Л.Л., Аквилянов Н.А., Кочергин И.О. и др. 	Информатика. 8 - 9 классы. Начала программирования на языке Python. Дополнительные главы к учебникам	8-9	150
311	Босова Л.Л., Босова А.Ю., Бондарева И.М. 	Информатика. 5-7 классы. Занимательные задачи	5-7	347
312	Семакин И.Г., Ромашкина Т.В.	Информатика. 7 класс: рабочая тетрадь: в 2 ч . Ч.1	7	117
313	Семакин И.Г., Ромашкина Т.В.	Информатика. 7 класс: рабочая тетрадь: в 2 ч . Ч.2	7	117
314	Семакин И.Г., Ромашкина Т.В.	Информатика. 8 класс: рабочая тетрадь: в 2 ч . Ч.1	8	117
315	Семакин И.Г., Ромашкина Т.В.	Информатика. 8 класс: рабочая тетрадь: в 2 ч . Ч.2	8	117
316	Семакин И.Г., Ромашкина Т.В.	Информатика: рабочая тетрадь для 9 класса: в 2 ч . Ч.1	9	117
317	Семакин И.Г., Ромашкина Т.В.	Информатика: рабочая тетрадь для 9 класса: в 2 ч . Ч.2	9	117
318	Залогова Л.А., Русаков С.В., Шеина Т.Ю., Шестакова Л.В.	Информатика. 7 класс. Контрольные и проверочные работы	7	102
319	Залогова Л.А., Русаков С.В., Шеина Т.Ю., Шестакова Л.В.	Информатика. 8 класс. Контрольные и проверочные работы	8	102
320	Залогова Л.А., Русаков С.В., Шеина Т.Ю., Шестакова Л.В.	Информатика.  9 класс. Контрольные и проверочные работы	9	102
321	Угринович Н.Д., Серёгин И.А.	Информатика. 7 класс: рабочая тетрадь: в 2 ч. Ч.1	7	102
322	Угринович Н.Д., Серёгин И.А.	Информатика. 7 класс: рабочая тетрадь: в 2 ч. Ч.2	7	102
323	Угринович Н.Д., Серёгин И.А, Полежаева О.А.	Информатика. 8 класс: рабочая тетрадь: в 2 ч. Ч.1	8	102
324	Угринович Н.Д., Серёгин И.А, Полежаева О.А.	Информатика. 8 класс: рабочая тетрадь: в 2 ч. Ч.2	8	102
325	Угринович Н.Д., Серёгин И.А, Полежаева О.А.	Информатика. 9 класс: рабочая тетрадь: в 2 ч. Ч.1	9	102
326	Угринович Н.Д., Серёгин И.А, Полежаева О.А.	Информатика. 9 класс: рабочая тетрадь: в 2 ч. Ч.2	9	102
327	Поляков К.Ю., Еремин Е.А.	Информатика: рабочая тетрадь для 7 класса: в 2 ч. Ч.1	7	102
328	Поляков К.Ю., Еремин Е.А.	Информатика: рабочая тетрадь для 7 класса: в 2 ч. Ч.2	7	102
329	Поляков К.Ю., Еремин Е.А.	Информатика: рабочая тетрадь для 8 класса: в 2 ч. Ч.1	8	102
330	Поляков К.Ю., Еремин Е.А.	Информатика: рабочая тетрадь для 8 класса: в 2 ч. Ч.2	8	102
331	Поляков К.Ю., Еремин Е.А.	Информатика: рабочая тетрадь для 9 класса: в 2 ч. Ч.1	9	102
332	Поляков К.Ю., Еремин Е.А.	Информатика: рабочая тетрадь для 9 класса: в 2 ч. Ч.2	9	102
333	Босова Л.Л., Босова А.Ю., Лобанов А.А., Лобанова Т.Ю.	Информатика. 10 класс.  Базовый уровень.Самостоятельные и контрольные работы	10	102
334	Босова Л.Л., Босова А.Ю., Аквилянов Н.А.	Информатика. 11 класс.  Базовый уровень.Самостоятельные и контрольные работы	11	102
335	Под ред. профессора Н.В. Макаровой	Информатика. 10-11 классы. Базовый уровень: рабочая тетрадь в 2 ч. Ч.1	10-11	161
336	Под ред. профессора Н.В. Макаровой	Информатика. 10-11 классы. Базовый уровень: рабочая тетрадь в 2 ч. Ч.2	10-11	161
337	Под ред. профессора Н.В. Макаровой	Информатика. Задачник по моделированию. 9-11 классы	9-11	381
338	Под ред. профессора Н.В. Макаровой	Информатика. Задачник с типовыми заданиями. 7-11 классы	7-11	381
339	Некрасова Т.В.	Методический комментарий к учебнику русского языка В.В. Репкина и др. для 2 класса	2	200
340	Геронимус Т.М.	Рабочая тетрадь. 1 класс. В 2-х частях. Ч.1	1	105
341	Геронимус Т.М.	Рабочая тетрадь. 1 класс. В 2частях. Ч.2	1	95
342	Геронимус Т.М.	Рабочая тетрадь. 2 класс. В 2-х частях. Ч.1	2	0
343	Геронимус  Т.М.	Рабочая тетрадь. 2 класс. В 2-х частях. Ч.2	2	0
344	Семакин И.Г., Шеина Т.Ю., Шестакова Л.В	Информатика. Углубленный уровень: практикум для 10-11 классов: В 2 ч. Ч.1	(10-11)	249
345	Семакин И.Г., Хеннер Е.К., Шестакова Л.В	Информатика. Углубленный уровень: практикум для 10-11 классов: В 2 ч. Ч.2	(10-11)	210
346	Красс Э.Ю.	Алгебраический практикум	7	147
347	Левитас Г.Г.	Алгебраический практикум	8	147
348	Левитас Г.Г.	Алгебраический практикум	9	147
349	Атанасян Л.С., Бутузов В.Ф., Кадомцев С.Б. и др.	Геометрия. 8 класс. Дополнительные главы к учебнику	8	350
350	Атанасян Л.С., Бутузов В.Ф., Кадомцев С.Б. и др.	Геометрия. 9 класс. Дополнительные главы к учебнику	9	350
351	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.	Физика. 11 класс. Базовый и углубленный уровни. Задачник	11	330
352	Копосов Д.Г.	Технология. Робототехника. 5 класс: учебное пособие	5	147
353	Копосов Д.Г.	Технология. Робототехника. 6 класс: учебное пособие	6	169
354	Копосов Д.Г.	Технология. Робототехника. 7 класс: учебное пособие	7	169
355	Копосов Д.Г.	Технология. Робототехника. 8 класс: учебное пособие	8	169
356	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н.,  Кошкина А.В.	Физика. 10 класс. Базовый и углубленный уровни. Задачник	10	330
357	Генденштейн Л.Э., Булатова А.А., Корнильев И.Н., Кошкина А.В.	Физика. Готовимся к ЕГЭ. Материалы для экспресс - подготовки	11	229
358	Курчина С.В.	Дневник наблюдений. 1 класс	1	158
359	Курчина С.В.	Дневник наблюдений. 2 класс	2	158
360	Курчина С.В.	Дневник наблюдений.3 класс 	3	158
361	Курчина С.В.	Дневник наблюдений.4 класс 	4	158
362	Матвеева Н.В., Долгова Г.И.	Дневник проекта №1. 1 класс	1	105
363	Матвеева Н.В., Долгова Г.И.	Дневник проекта №2. 1 класс	1	105
364	Матвеева Н.В., Долгова Г.И.	Дневник проекта №3. 1 класс	1	105
365	Матвеева Н.В., Долгова Г.И.	Дневник проекта №4. 1 класс	1	105
366	Матвеева Е.И.	Простые истории для первого чтения. Моя любимая тетрадь №1	1	173
367	Матвеева Е.И.	Простые истории для первого чтения. Моя любимая тетрадь №2	2	173
368	Каплан А.В., Пахомова Е.А., Кострюкова Т.А., Павлов Д.И., Ходакова Н.П.	Лаборатория словесника. 1 класс	1	189
369	Каплан А.В., Кострюкова Т.А., Ходакова Н.П., Правлов Д.И., Пахомова Е.А.	Лаборатория искусствоведа. 1 класс	1	189
370	Павлов Д.И., Ходакова Н.П., Пахомова Е.А., Каплан А.В., Кострюкова Т.А.	Лаборатория краеведа. 1 класс	1	189
371	Павлов Д.И., Ходакова Н.П., Каплан А.В., Пахомова Е.А., Кострюкова Т.А.	Лаборатория математика. 1 класс	1	189
372	Воюшина М.П., Суворова Е.П.	Комплексная итоговая работа. 1 класс: рабочая тетрадь	1	287
373	Воюшина М.П., Суворова Е.П.	Комплексная итоговая работа. 2 класс: рабочая тетрадь	2	287
374	Воюшина М.П., Суворова Е.П.	Комплексная итоговая работа. 3 класс: рабочая тетрадь	3	287
375	Воюшина М.П., Суворова Е.П.	Комплексная итоговая работа. 4 класс: рабочая тетрадь	4	287
376	Гребнева Ю.А., Громкова Ю.Б.	Подготовка к Всероссийской проверочной работе по математике. 1 класс	1	131
377	Гребнева Ю.А., Громкова Ю.Б.	Подготовка к Всероссийской проверочной работе по математике. 2 класс	2	131
378	Гребнева Ю.А., Громкова Ю.Б.	Подготовка к Всероссийской проверочной работе по математике. 3 класс	3	131
379	Гребнева Ю.А., Громкова Ю.Б.	Подготовка к Всероссийской проверочной работе по математике. 4 класс	4	131
380	Мишакина Т.Л., Александрова С.Н.	Подготовка к Всероссийской проверочной работе по русскому языку. 1 класс	1	131
381	Мишакина Т.Л., Александрова С.Н.	Подготовка к Всероссийской проверочной работе по русскому языку. 2 класс	2	131
382	Мишакина Т.Л., Александрова С.Н.	Подготовка к Всероссийской проверочной работе по русскому языку. 3 класс	3	131
383	Мишакина Т.Л., Александрова С.Н.	Подготовка к Всероссийской проверочной работе по русскому языку. 4 класс	4	131
384	Мишакина Т.Л., Елина Е.М.	Подготовка к Всероссийской проверочной работе по окружающему миру. 1 класс	1	131
385	Мишакина Т.Л., Елина Е.М.	Подготовка к Всероссийской проверочной работе по окружающему миру. 2 класс	2	131
386	Мишакина Т.Л., Елина Е.М.	Подготовка к Всероссийской проверочной работе по окружающему миру. 3 класс	3	131
387	Мишакина Т.Л., Елина Е.М.	Подготовка к Всероссийской проверочной работе по окружающему миру. 4 класс	4	131
388	Мишакина Т.Л., Гладкова С.А.	Подготовка к Всероссийской проверочной работе по литературному чтению. 1 класс	1	131
389	Мишакина Т.Л., Гладкова С.А.	Подготовка к Всероссийской проверочной работе по литературному чтению. 2 класс	2	131
390	Мишакина Т.Л., Гладкова С.А.	Подготовка к Всероссийской проверочной работе по литературному чтению. 3 класс	3	131
391	Мишакина Т.Л., Гладкова С.А.	Подготовка к Всероссийской проверочной работе по литературному чтению. 4 класс	4	131
392	Назарова Е.В.	ВПР. Математика. 5 класс. Типовые тестовые задания. 15 вариантов.	5	208
393	Федоскина О.В.	ВПР. Математика. 4 класс. Типовые тестовые задания. 15 вариантов.	4	208
394	Федоскина О.В.	ВПР. Математика. 4 класс. Блицподготовка к Всероссийской проверочной работе за 30 дней	4	160
395	Стефаненко Н.А.	ВПР. Русский язык. 4 класс. Типовые тестовые задания. 10 вариантов.	4	160
396	Богданова В.В., Разагатова Н.А.	ВПР. Русский язык. 4 класс. Обучающие проверочные работы.	4	160
397	Богданова В.В., Разагатова Н.А.	ВПР. Окружающий мир. 4 класс. Обучающие проверочные работы.	4	208
398	Богданова В.В., Разагатова Н.А.	ВПР. Математика. 4 класс. Обучающие проверочные работы.	4	133
399	Мошнина Р.Ш. и др.	ВПР. Русский язык. Математика. Окружающий мир.  1 класс. Обучающие проверочные работы.	1	133
400	Мошнина Р.Ш. и др.	ВПР. Русский язык. Математика. Окружающий мир.  2 класс. Обучающие проверочные работы.	2	133
401	Мошнина Р.Ш. и др.	ВПР. Русский язык. Математика. Окружающий мир.  3 класс. Обучающие проверочные работы.	3	133
402	Разумовская Е.В.	ВПР. Математика. 5-6 класс. Дроби. Проверочные работы.	5-6	133
403	Разумовская Е.В.	ВПР. Математика. 5-6 класс. Дроби. Математический тренажер.	5-6	133
404	Шабанова И.Л.	ВПР. Русский язык. 5 класс. Типовые тестовые задания. 10 вариантов 	5	133
405	Нарушевич А.Г. и др.	ВПР. Русский язык. 5 класс. Контрольное списывание. Орфография. Пунктуация 	5	133
406	Нарушевич А.Г. и др.	ВПР. Русский язык. 5 класс. Виды языковых разборов 	5	133
407	Нарушевич А.Г. и др.	ВПР. Русский язык. 5 класс. Орфоэпия. Морфология. Синтаксис	5	133
408	Нарушевич А.Г. и др.	ВПР. Русский язык. Лексика. Анализ текста : практикум для 5 класса	5	133
409	Кузнецова Н.Е.	Русский язык. 9-11 класс. Орфография+речь. Орфограммы в корне слова. -Н и - НН в различных частях речи. Практикум № 1	9-11	122
410	Иванова С.Ю.	ОГЭ. Русский язык. Типовые экзаменационные задания : 12 вариантов 	9	229
411	Ткачёва М.В.	Справочник по геометрии в формулах и таблицах	7-9	229
412	Семенов А.В., Эргле Е.В.	ОГЭ.Математика. 9 класс. Блицподготовка к государственному экзамену за курс основной школы	9	229
413	Колечкин И.С.	География. Сборник задач и упражнений. Базовый и углубленный уровни: Ч.1	5-11	254
414	Колечкин И.С.	География. Сборник задач и упражнений. Базовый и углубленный уровни: Ч.2	5-11	254
415	Павлова Е.С.                              	Информатика. Сборник задач и упражнений. 10-11 классы. Базовый и углубленный уровни 	10-11	311
416	Никитенко З.Н., Никитенко Е.А.	Английский язык. Первые шаги. 1 класс	1	294
417	Никитенко З.Н.	Английский язык. Первые шаги. 1 класс: рабочая тетрадь: в 2 частях. Часть 1	1	152
418	Никитенко З.Н.	Английский язык. Первые шаги. 1 класс: рабочая тетрадь: в 2 частях. Часть 2	1	152
420	Нечаева Н.В.	Нечаева Н.В., Азбука. Рабочая тетрадь	1	130
421	Нечаева Н.В., Белорусец К.С.	Нечаева Н.В., Белорусец К.С., Я читаю в 3-х частях  в 3-х частях, часть 1	1	165
422	Нечаева Н.В., Белорусец К.С.	Нечаева Н.В., Белорусец К.С., Я читаю в 3-х частях  в 3-х частях, часть 2	1	165
423	Нечаева Н.В., Белорусец К.С.	Нечаева Н.В., Белорусец К.С., Я читаю в 3-х частях  в 3-х частях, часть 3	1	165
424	Нечаева Н.В., Булычева Н.К.	Нечаева Н.В., Булычева Н.К., Тетрадь по письму в 4-х частях, часть 1	1	125
425	Нечаева Н.В., Булычева Н.К.	Нечаева Н.В., Булычева Н.К., Тетрадь по письму в 4-х частях, часть 2	1	125
426	Нечаева Н.В., Булычева Н.К.	Нечаева Н.В., Булычева Н.К., Тетрадь по письму в 4-х частях, часть 3	1	125
427	Нечаева Н.В., Булычева Н.К.	Нечаева Н.В., Булычева Н.К., Тетрадь по письму в 4-х частях, часть 4	1	125
428	Мельникова О.А.	Мельникова О.А., Звуки и буквы. Учусь русскому языку Рабочая тетрадь в 2-х частях, часть 1	1	220
429	Мельникова О.А.	Мельникова О.А., Звуки и буквы. Учусь русскому языку Рабочая тетрадь в 2-х частях, часть 2	1	220
430	Свиридова В.Ю., Березина Э.В.	Свиридова В.Ю., Березина Э.В., Учись читать	1	180
431	Свиридова В.Ю.	Свиридова В.Ю., Хрестоматия по литературному чтению	1	300
432	Бененсон Е.П., Итина Л.С.	Бененсон Е.П., Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 1	1	175
433	Бененсон Е.П., Итина Л.С.	Бененсон Е.П., Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 2	1	175
434	Бененсон Е.П., Итина Л.С.	Бененсон Е.П., Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 3	1	175
435	Бененсон Е.П., Итина Л.С.	Бененсон Е.П., Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 4	1	175
436	Итина Л.С., Кормишина С.Н.	Итина Л.С., Кормишина С.Н., Геометрия. Волшебные точки. Вычисляй и рисуй	1	125
437	Дмитриева Н.Я., Казаков Н.А.	Дмитриева Н.Я., Казаков Н.А., Окружающий мир. Рабочая тетрадь	1	235
438	Проснякова Т.Н.	Проснякова Т.Н., Технология. Школа волшебников. Рабочая тетрадь 	1	275
439	Цирулик Н.А., Цирулик Г.Э., Хдебникова С.И.	Цирулик Н.А., Цирулик Г.Э., Хдебникова С.И., Технология. Бумажные фантазии. Тетрадь для практических работ	1	275
440	Ригина Г.С. 	Ригина Г.С. , Музыка. Рабочая тетрадь	1	145
441	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство	1	535
442	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Лаборатория искусства	1	310
443	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Чистая линия Художественные прописи в 2-х частях, часть 1	1	130
444	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Чистая линия. Художественные прописи в 2-х частях, часть 2	1	130
445	Проснякова Т.Н., Ларичева Е.И., Кубышева Е.С.	Проснякова Т.Н., Ларичева Е.И., Кубышева Е.С., Изобразительное искусство. Радужный мир. Учебное пособие по внеурочной деятельности в 2-х частях, часть 1	1	235
446	Проснякова Т.Н., Ларичева Е.И., Кубышева Е.С.	Проснякова Т.Н., Ларичева Е.И., Кубышева Е.С., Изобразительное искусство. Радужный мир Учебное пособие по внеурочной деятельности в 2-х частях, часть 2	1	235
447	Яковлева С.Г.	Яковлева С.Г., Русский язык. Рабочая тетрадь  в 4-х частях, часть 1	2	150
448	Яковлева С.Г.	Яковлева С.Г., Русский язык. Рабочая тетрадь  в 4-х частях, часть 2	2	150
449	Яковлева С.Г.	Яковлева С.Г., Русский язык. Рабочая тетрадь  в 4-х частях, часть 3	2	150
450	Яковлева С.Г.	Яковлева С.Г., Русский язык. Рабочая тетрадь  в 4-х частях, часть 4	2	150
451	Самыкина С.В.	Самыкина С.В., Литературное чтение. Рабочая тетрадь в 2-х частях, часть 1	2	165
452	Самыкина С.В.	Самыкина С.В., Литературное чтение. Рабочая тетрадь в 2-х частях, часть 2	2	165
453	Свиридова В.Ю.	Свиридова В.Ю., Хрестоматия по литературному чтению	2	320
454	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 1	2	120
455	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 2	2	120
456	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 3	2	120
457	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 4-х частях, часть 4	2	120
458	Кормишина С.Н.	Кормишина С.Н., Геометрия вокруг нас. Тетрадь для практических работ	2	165
459	Итина Л.С., Кормишина С.Н.	Итина Л.С., Кормишина С.Н., Геометрия. Волшебные точки. Вычиляй и рисуй	2	125
460	Дмитриева Н.Я., Казаков А. 	Дмитриева Н.Я., Казаков А. , Окружающий мир. Рабочая тетрадь	2	235
461	Проснякова Т.Н.	Проснякова Т.Н., Технология. Волшебные секреты. Тетрадь для практических работ	2	270
462	Цирулик Н.А., Цирулик Г.Э., Хдебникова С.И.	Цирулик Н.А., Цирулик Г.Э., Хдебникова С.И., Технология. Бумажный калейдоскоп. Тетрадь для практических работ	2	270
463	Ригина Г.С.	Ригина Г.С., Музыка. Рабочая тетрадь	2	190
464	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство	2	535
465	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Учимся у великих художников	2	320
466	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Живая линия. Художественные прописи в 2-х частях, часть 1	2	100
467	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Живая линия. Художественные прописи в 2-х частях, часть 2	2	100
468	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 1	3	150
469	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 2	3	150
470	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 3	3	150
471	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 4	3	150
472	Самыкина С.В.	Самыкина С.В., Литературное чтение. Рабочая тетрадь в 2-х частях, часть 1	3	195
473	Самыкина С.В.	Самыкина С.В., Литературное чтение. Рабочая тетрадь в 2-х частях, часть 2	3	195
474	Свиридова В.Ю.	Свиридова В.Ю., Хрестоматия по литературному чтению	3	320
475	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 3-х частях, часть 1	3	140
476	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 3-х частях, часть 2	3	140
477	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 3-х частях, часть 3	3	140
478	Кормишина С.Н.	Кормишина С.Н., Геометрия вокруг нас. Тетрадь для практических работ	3	165
479	Итина Л.С., Кормишина С.Н.	Итина Л.С., Кормишина С.Н., Геометрия. Волшебные точки. Вычиляй и рисуй	3	125
480	Дмитриева Н.Я., Казаков А. 	Дмитриева Н.Я., Казаков А. , Окружающий мир. Рабочая тетрадь	3	235
481	Цирулик Н.А., Цирулик Г.Э., Хлебникова С.И.	Цирулик Н.А., Цирулик Г.Э., Хлебникова С.И., Технология. Бумажные вещицы. Тетрадь для практических работ	3	270
482	Проснякова Т.Н.	Проснякова Т.Н., Технология. Бумажное волшебство. Рабочая тетрадь	3	270
483	Ригина Г.С.	Ригина Г.С., Музыка. Рабочая тетрадь	3	135
484	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство	3	535
485	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Очевидное - невероятное. Альбом художественных задач	3	310
486	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 1	4	150
487	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 2	4	150
488	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 3	4	150
489	Нечаева Н.В. Воскресенская Н.Е.	Нечаева Н.В. Воскресенская Н.Е., Русский язык. Рабочая тетрадь  в 4-х частях, часть 4	4	150
490	Самыкина С.В.	Самыкина С.В., Литературное чтение. Рабочая тетрадь в 2-х частях, часть 1	4	195
491	Самыкина С.В.	Самыкина С.В., Литературное чтение. Рабочая тетрадь в 2-х частях, часть 2	4	195
492	Свиридова В.Ю.	Свиридова В.Ю., Хрестоматия по литературному чтению	4	320
493	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 2-х частях, часть 1	4	140
494	Бененсон Е.П Итина Л.С.	Бененсон Е.П Итина Л.С., Математика. Рабочая тетрадь в 2-х частях, часть 2	4	140
495	Итина Л.С., Кормишина С.Н.	Итина Л.С., Кормишина С.Н., Геометрия. Волшебные точки. Вычисляй и рисуй.	4	125
496	Дмитриева Н.Я., Казаков А.	Дмитриева Н.Я., Казаков А., Окружающий мир. Рабочая тетрадь	4	235
497	Цирулик Н.А., Цирулик Г.Э., Хдебникова С.И.	Цирулик Н.А., Цирулик Г.Э., Хдебникова С.И., Технология. Бумажный мир. Тетрадь для практических работ	4	275
498	Ригина Г.С. 	Ригина Г.С. , Музыка. Рабочая тетрадь	4	190
500	Ашикова С.Г. 	Ашикова С.Г. , Изобразительное искусство. Красота спасет мир. Альбом художественных задач	4	300
502	Безруких М.М.	Тетрадь по письму № 1 к "Букварю" \nД.Б. Эльконина	1	0
503	Безруких М.М.	Тетрадь по письму № 2 к "Букварю" \nД.Б. Эльконина	1	0
504	Безруких М.М.	Тетрадь по письму № 3 к "Букварю"\nД.Б. Эльконина	1	0
505	Безруких М.М.	Тетрадь по письму № 4 к "Букварю" \nД.Б. Эльконина	1	0
506	Агаркова Н.Г.	Тетрадь по письму №1, 1 класс: Комплект из 4-х рабочих тетрадей к Букварю Л.И.Тимченко. 	1	85
507	Агаркова Н.Г.	Тетрадь по письму №2, 1 класс: Комплект из 4-х рабочих тетрадей к Букварю Л.И.Тимченко. 	1	85
508	Агаркова Н.Г.	Тетрадь по письму №3, 1 класс: Комплект из 4-х рабочих тетрадей к Букварю Л.И.Тимченко. 	1	85
509	Агаркова Н.Г.	Тетрадь по письму №4, 1 класс: Комплект из 4-х рабочих тетрадей к Букварю Л.И.Тимченко. 	1	85
510	Чудинова Е.В.	Рабочая тетрадь для адаптации ребенка к школе	1	158
511	Илюхина В.А., Восторгова Е.В.	Тетрадь по письму для первого класса к букварю В.В. Репкина, Е.В. Восторговой, В.А. Левина: в 4 тетр. Тетрадь №1	1	40
512	Илюхина В.А., Восторгова Е.В.	Тетрадь по письму для первого класса к букварю В.В. Репкина, Е.В. Восторговой, В.А. Левина: в 4 тетр. Тетрадь №2	1	40
513	Илюхина В.А., Восторгова Е.В.	Тетрадь по письму для первого класса к букварю В.В. Репкина, Е.В. Восторговой, В.А. Левина: в 4 тетр. Тетрадь №3	1	40
514	Илюхина В.А., Восторгова Е.В.	Тетрадь по письму для первого класса к букварю В.В. Репкина, Е.В. Восторговой, В.А. Левина: в 4 тетр. Тетрадь №4	1	40
515	Александрова Э.И.	Математические прописи: учебное пособие для 1 класса	1	213
516	Александрова Э.И.	Рабочие тетради по математике: №1. Как сравнивают по длине, ширине, форме и что такое периметр. №2. Как сравнивают по площади	1	293
517	Александрова Э.И.	Рабочие тетради по математике: №3. Как сравнивают по объему и количеству. №4. Как сравнивают углы, составляют схемы и формулы	1	293
518	Эльконин Д.Б.	Спутник букваря в 3 ч. Ч.1	1	92
519	Эльконин Д.Б.	Спутник букваря в 3 ч. Ч.2	1	92
520	Эльконин Д.Б..	Спутник букваря в 3 ч. Ч.3	1	92
521	Александрова Э.И.	Рабочая тетрадь по математике №1. 2 класс	2	141
522	Александрова Э.И.	Рабочая тетрадь по математике №2. 2 класс	2	160
523	Александрова Э.И.	Рабочая тетрадь по математике №1. 3 класс	3	191
524	Александрова Э.И.	Рабочая тетрадь по математике №2. 3 класс	3	191
525	Александрова Э.И.	Рабочая тетрадь по математике №1. 4 класс	4	145
526	Александрова Э.И.	Рабочая тетрадь по математике №2. 4 класс	4	194
527	Александрова Э.И.	Математика. Контрольные работы. 1 класс	1	130
528	Александрова Э.И.	Математика. Контрольные работы. 2 класс	2	130
529	Александрова Э.И.	Математика. Контрольные работы. 3 класс	3	130
530	Александрова Э.И.	Математика. Контрольные работы. 4 класс	4	130
531	Под ред. Воронцова А.Б.	Математика. 1 класс: самостоятельные работы на всех этапах учебного года: пособие для учащихся.	1	121
532	Под ред. Воронцова А.Б.	Математика. 1 класс: проверочные работы на всех этапах учебного года: пособие для учащихся.	1	149
533	Под ред. Воронцова А.Б.	Математика. 2 класс: самостоятельные работы на всех этапах учебного года: пособие для учащихся.	2	160
534	Под ред. Воронцова А.Б.	Математика. 2 класс: проверочные работы на всех этапах учебного года: пособие для учащихся.	2	149
535	Под ред. Воронцова А.Б.	Математика. 3 класс: самостоятельные работы на всех этапах учебного года: пособие для учащихся.	3	174
536	Под ред. Воронцова А.Б.	Математика. 3 класс: проверочные работы на всех этапах учебного года: пособие для учащихся.	3	160
537	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике №1. 1 кл. 	1	140
538	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике №2. 1 кл. 	1	140
539	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике №1. 2 кл. 	2	180
540	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике №2. 2 кл. 	2	180
541	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике №1. 3 кл. 	3	180
542	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике №2. 3 кл. 	3	180
543	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике. 4 кл.: В 2 ч. Ч.1	4	180
544	 Горбов С.Ф., Микулина Г.Г. 	Рабочая тетрадь по математике. 4 кл.: В 2 ч. Ч.2	4	180
545	Ломакович С.В  Тимченко Л.И.	Рабочая тетрадь по русскому языку. 2 кл.: В 2 ч. Ч.1	2	114
546	Ломакович С.В  Тимченко Л.И.	Рабочая тетрадь по русскому языку. 2 кл.: В 2 ч. Ч.2	2	114
547	Ломакович С.В  Тимченко Л.И.	Рабочая тетрадь по русскому языку. 3 кл.: В 2 ч. Ч.1	3	133
548	Ломакович С.В  Тимченко Л.И.	Рабочая тетрадь по русскому языку. 3 кл.: В 2 ч. Ч.2	3	133
549	Ломакович С.В  Тимченко Л.И.	Рабочая тетрадь по русскому языку. 4 кл.: В 2 ч. Ч.1	4	178
550	Ломакович С.В  Тимченко Л.И.	Рабочая тетрадь по русскому языку. 4 кл.: В 2 ч. Ч.2	4	178
551	Матвеева Е.И.	Литературное чтение: тетрадь для тренировки и самопроверки. 2 класс	2	160
552	Матвеева Е.И.	Литературное чтение: тетрадь для тренировки и самопроверки. 3 класс	3	160
553	Матвеева Е.И.	Литературное чтение: тетрадь для тренировки и самопроверки. 4 класс	4	160
554	Матвеева Е.И.	Тетрадь по литературному чтению для 1 класса начальной школы	1	124
555	Матвеева Е.И.	Тетрадь №1 по литературному чтению для 2 класса начальной школы	2	124
556	Матвеева Е.И.	Тетрадь №2 по литературному чтению для 2 класса начальной школы	2	124
557	Матвеева Е.И.	Тетрадь №1 по литературному чтению для 3 класса начальной школы	3	124
558	Матвеева Е.И.	Тетрадь №2 по литературному чтению для 3 класса начальной школы	3	124
559	Матвеева Е.И.	Тетрадь по литературному чтению №1 для 4 класса начальной школы	4	124
560	Матвеева Е.И.	Тетрадь по литературному чтению №2 для 4 класса начальной школы	4	124
561	Матвеева Е.И. Бахтина С.В.	Комплексные  диагностические  работы в начальной школе. 2 класс	2	228
562	Матвеева Е.И. Бахтина С.В.	Комплексные  диагностические  работы в начальной школе. 3 класс	3	228
563	Матвеева Е.И. Бахтина С.В.	Комплексные  диагностические  работы в начальной школе. 4 класс	4	228
564	Микулина Г.Г.	Контрольные работы по математике. 1 кл.	1	120
565	Микулина Г.Г.	Контрольные работы по математике. 2 кл.	2	120
566	Микулина Г.Г.	Контрольные работы по математике. 3 кл.	3	141
567	Микулина Г.Г., Савельева О.В.	Контрольные работы по математике. 4 кл.	4	141
568	Тимченко Л.И.	Контрольные работы  по русскому языку. 1 кл.	1	133
569	Тимченко Л.И.	Контрольные работы  по русскому языку. 2 кл.	2	155
570	Тимченко Л.И.	Контрольные работы  по русскому языку. 3 кл.	3	166
571	Тимченко Л.И.	Контрольные работы  по русскому языку. 4 кл.	4	166
572	Тимченко Л.И.	Рабочая тетрадь по русскому языку. 1 кл.	1	120
573	Тимченко Л.И.	Развиваем грамотную речь: учебное пособие для 2 класса	2	186
574	Тимченко Л.И.	Развиваем грамотную речь: учебное пособие для 3 класса	3	186
575	Тимченко Л.И.	Развиваем грамотную речь: учебное пособие для 4 класса	4	186
576	Тимченко Л.И.	Русский язык. 2 класс: контрольно-диагностические работы.	2	228
577	Тимченко Л.И.	Русский язык. 3 класс: контрольно-диагностические работы.	3	228
578	Тимченко Л.И.	Русский язык. 4 класс: контрольно-диагностические работы.	4	228
579	Тимченко Л.И.	Сборник заданий и упражнений для подготовки к Всероссийской проверочной работе по русскому языку. 4 кл.	4	275
580	Чудинова Е.В.	Окружающий мир 2 класс: контрольно-диагностические работы.	2	141
581	Чудинова Е.В. , Коханович Д.В.	Окружающий мир. 3 класс: контрольно-диагностические работы.	3	132
582	Чудинова Е.В. , Коханович Д.В.	Окружающий мир. 4 класс: контрольно-диагностические работы.	4	177
583	Чудинова Е.В.	Окружающий мир. 1 класс: Рабочая тетрадь	1	152
584	Чудинова Е.В.	Окружающий мир. 1 класс: проверочные работы	1	133
585	Чудинова Е.В.	Окружающий мир: рабочая тетрадь для 2 класса: В 2 ч. Ч.1	2	141
586	Чудинова Е.В.	Окружающий мир: рабочая тетрадь для 2 класса: В 2 ч. Ч.2	2	141
587	Чудинова Е.В.	Окружающий мир. 2 класс: проверочные работы	2	160
588	Чудинова Е.В.	Окружающий мир: рабочая тетрадь для 3 класса: В 2 ч. Ч.1	3	120
589	Чудинова Е.В.	Окружающий мир: рабочая тетрадь для 3 класса: В 2 ч. Ч.2	3	120
590	Чудинова Е.В.	Окружающий мир. 3 класс: проверочные работы	3	114
591	Чудинова Е.В.	Окружающий мир: тетрадь для практических работ: пособие для учащихся 4 класса	4	145
592	Чудинова Е.В.	Окружающий мир. 4 класс: тетрадь для тренировки и самопроверки	4	180
594	Д.И. Павлов, М.Ю. Ревякин, под ред. Л.Л. Босовой. 	Робототехника. 2-4 классы. Ч. 1	2-4	250
595	Д.И. Павлов, М.Ю. Ревякин, под ред. Л.Л. Босовой. 	Робототехника. 2-4 классы. Ч. 2	2-4	250
596	Д.И. Павлов, М.Ю. Ревякин, под ред. Л.Л. Босовой. 	Робототехника. 2-4 классы. Ч. 3	2-4	250
597	Д.И. Павлов, М.Ю. Ревякин, под ред. Л.Л. Босовой. 	Робототехника. 2-4 классы. Ч. 4	2-4	250
598	Поляков К.Ю.	Программирование. Python. С++. Часть 1	8	320
599	Поляков К.Ю.	Программирование. С++, Python. 2 часть	9	320
600	Поляков К.Ю.	Программирование. С++, Python. 3 часть	10	320
601	Поляков К.Ю.	Программирование. С++, Python. 4 часть	11	320
602	Д.Г. Жемчужников 	Web-дизайн. Уровень 1	7-9	400
603	Д.Г. Жемчужников 	Web-дизайн. Уровень 2	10 -11	400
604	Цветкова М. С., Якушина Е.В.	Информационная безопасность. Правила безопасного Интернета. 	2-4	180
605	Цветкова М. С., Якушина Е.В.	Информатика. Безопасное поведение в сети	5-6	180
606	Цветкова М. С., Хлобыстова И.Ю.	Информационная безопасность. Кибербезопасность	7-9	135
607	Цветкова М.С.	Правовые основы информационной безопасности	10-11	0
608	 Д.Г. Копосов	3-D моделирование и прототипирование.Уровень 1	7	500
609	 Д.Г. Копосов	3-D моделирование и прототипирование.Уровень 2	8	500
610	Уханева В.А.,Животова Е.Б.	Компьютерная графика. Черчение.	8	500
611	 Д.Г. Копосов	Робототехника на платформе Arduino	9-11	500
40	\N	\N	\N	\N
88	\N	\N	\N	\N
115	\N	\N	\N	\N
134	\N	\N	\N	\N
165	\N	\N	\N	\N
198	\N	\N	\N	\N
240	\N	\N	\N	\N
419	\N	\N	\N	\N
501	\N	\N	\N	\N
593	\N	\N	\N	\N
\.


--
-- Data for Name: book_drofa; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_drofa (id, author, name, grade, price) FROM stdin;
1	\N	\N	\N	\N
2	\N	\N	\N	\N
3	Калинина О.Б.	Обучающие комплексные работы. 1 класс (Калинина)	1	88.9899999999999949
4	Калинина О.Б.	Обучающие комплексные работы. 2 класс (Калинина)	2	88.9899999999999949
5	Калинина О.Б.	Обучающие комплексные работы. 3 класс (Калинина)	3	88.9899999999999949
6	Калинина О.Б.	Обучающие комплексные работы. 4 класс (Калинина)	4	88.9899999999999949
7	\N	\N	\N	\N
8	\N	\N	\N	\N
9	Андрианова Т.М.	Андрианова. Русский язык. 1 класс. Букварь. Учебник	1	300.95999999999998
10	Андрианова Т.М.,Илюхина В.А.	Андрианова, Илюхина. Русский язык. 1 класс. Учебник	1	293.920000000000016
11	Андрианова Т.М.	Андрианова. Русский язык. 1 класс. Спутник букваря. Учебное пособие для читающих детей	1	294.910000000000025
12	Илюхина В.А.	Илюхина. 1 класс. Прописи к "Букварю" Андриановой. В 4 ч. Часть 1	1	89.980000000000004
13	Илюхина В.А.	Илюхина. 1 класс. Прописи к "Букварю" Андриановой. В 4 ч. Часть 2	1	89.980000000000004
14	Илюхина В.А.	Илюхина. 1 класс. Прописи к "Букварю" Андриановой. В 4 ч. Часть 3	1	89.980000000000004
15	Илюхина В.А.	Илюхина. 1 класс. Прописи к "Букварю" Андриановой. В 4 ч. Часть 4	1	89.980000000000004
16	Андрианова Т.М.	Андрианова. Русский язык. 1 класс. Рабочая тетрадь к "Букварю" Андриановой	1	99.9899999999999949
17	Андрианова Т.М., Илюхина В.А.	Андрианова, Илюхина. Русский язык. 1 класс. Рабочая тетрадь. В 2 ч. Часть 1	1	102.959999999999994
18	Андрианова Т.М., Илюхина В.А.	Андрианова, Илюхина. Русский язык. 1 класс. Рабочая тетрадь. В 2 ч. Часть 2	1	102.959999999999994
19	Андрианова Т.М., Журавлева О.Н., Калинина О.Б.	Итоговые проверочные работы. Итоговая комплексная работа. Русский язык. Математика. 1 класс (Андрианова, Журавлева)	1	88.9899999999999949
20	Илюхина В.А.	Илюхина. 1 класс. Прописи для читающих детей. В 4 ч. Часть 1	1	113.959999999999994
21	Илюхина В.А.	Илюхина. 1 класс. Прописи для читающих детей. В 4 ч. Часть 2	1	113.959999999999994
22	Илюхина В.А.	Илюхина. 1 класс. Прописи для читающих детей. В 4 ч. Часть 3	1	113.959999999999994
23	Илюхина В.А.	Илюхина. 1 класс. Прописи для читающих детей. В 4 ч. Часть 4	1	113.959999999999994
24	Мишина Алевтина Петровна	Андрианова, Илюхина. Русский язык. 1 класс. Тетрадь для самопроверки знаний и умений. (Мишина)	1	141.900000000000006
25	Желтовская Л.Я.	Андрианова, Илюхина. Русский язык. 1 класс. Безударные гласные. Трен. задания для форм. предм. и метапредм. уч. действий. (Желтовская)	1	92.9500000000000028
26	Желтовская Л.Я.,Калинина О.Б.	Желтовская, Калинина. Русский язык. 2 класс. Учебник. В 2 ч. Часть 1	2	339.899999999999977
27	Желтовская Л.Я.,Калинина О.Б.	Желтовская, Калинина. Русский язык. 2 класс. Учебник. В 2 ч. Часть 2	2	339.899999999999977
28	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	102.959999999999994
29	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	102.959999999999994
30	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 2 класс. Контрольные и диагностические работы	2	137.939999999999998
31	Калинина О.Б., Желтовская Л.Я.	Желтовская, Калинина. Русский язык. 2 класс. Тесты и самостоятельные работы для текущего контроля	2	103.950000000000003
32	Желтовская Л.Я., Калинина О.Б., Нефёдова М.Г., Журавлева О.Н.	Итоговые проверочные работы. Итоговая комплексная работа. Русский язык. Математика. 2 класс (Нефедова)	2	86.9000000000000057
33	Калинина О.Б.	Желтовская, Калинина. Русский язык. 2 класс. Готовимся к всероссийской проверочной работе (ВПР)	2	126.939999999999998
34	Желтовская Л.Я.,Калинина О.Б.	Желтовская, Калинина. Русский язык. 3 класс. Учебник. В 2 ч. Часть 1	3	339.899999999999977
35	Желтовская Л.Я.,Калинина О.Б.	Желтовская, Калинина. Русский язык. 3 класс. Учебник. В 2 ч. Часть 2	3	339.899999999999977
36	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	102.959999999999994
37	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	102.959999999999994
38	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 3 класс. Контрольные и диагностические работы	3	140.909999999999997
39	Калинина О.Б., Желтовская Л.Я.	Желтовская, Калинина. Русский язык. 3 класс. Тесты и самостоятельные работы для текущего контроля	3	103.950000000000003
40	Желтовская Л.Я., Нефедова М.Г., Журавлева О.Н.	Итоговые проверочные работы. Итоговая комплексная работа. Русский язык. Математика. 3 класс (Желтовская)	3	119.900000000000006
41	Калинина О.Б.	Желтовская, Калинина. Русский язык. 3 класс. Готовимся к всероссийской проверочной работе (ВПР)	3	126.939999999999998
42	Калинина О.Б., Желтовская Л.Я.	Желтовская, Калинина. Русский язык. 3 класс. Безуд. гласные в окончаниях слов. Трен. задания для форм. предм. и метапредм. уч. действий	3	88.9899999999999949
43	Желтовская Л.Я.,Калинина О.Б.	Желтовская, Калинина. Русский язык. 4 класс. Учебник. В 2 ч. Часть 1	4	339.899999999999977
44	Желтовская Л.Я.,Калинина О.Б.	Желтовская, Калинина. Русский язык. 4 класс. Учебник. В 2 ч. Часть 2	4	339.899999999999977
45	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	102.959999999999994
46	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	102.959999999999994
47	Желтовская Л.Я., Калинина О.Б.	Желтовская, Калинина. Русский язык. 4 класс. Контрольные и диагностические работы	4	137.939999999999998
48	Калинина О.Б., Желтовская Л.Я.	Желтовская, Калинина. Русский язык. 4 класс. Тесты и самостоятельные работы для текущего контроля	4	103.950000000000003
49	Калинина О.Б., Журавлева О.Н., Циновская М.Г.	Итоговые проверочные работы. Итоговая комплексная работа. Русский язык. Математика. 4 класс (Желтовская, Калинина)	4	119.900000000000006
50	Калинина О.Б.	Желтовская, Калинина. Русский язык. 4 класс. Готовимся к всероссийской проверочной работе (ВПР)	4	126.939999999999998
51	Калинина О.Б., Желтовская Л.Я.	Желтовская, Калинина. Русский язык. 3-4 классы. Гласные и согл. в приставках. Трен. задания для форм. предм. и метапредм. уч. действий	3-4	88.9899999999999949
52	Калинина О.Б., Желтовская Л.Я.	Желтовская, Калинина. Русский язык. 3-4 классы. Парные звонкие и глухие согл. Трен. задания для форм. предм. и метапредм. уч. действий	3-4	88.9899999999999949
53	Ветров Е.В.	Желтовская, Калинина. Русский язык. 2-3 классы. Проверяем безударные гласные в корне слова. Тетр. для самост. работы по русскому языку (Ветров)	2-3	91.9599999999999937
54	Грехнева Г.М., Корепова К.Е., Тимченко Л.И.	Грехнева, Тимченко. Обучение грамоте. 1 класс. Азбука. Учебное пособие по обучению грамоте и чтению. В 2 ч. Часть 1	1	330
55	Грехнева Г.М., Корепова К.Е., Тимченко Л.И.	Грехнева, Тимченко. Обучение грамоте. 1 класс. Азбука. Учебное пособие по обучению грамоте и чтению. В 2 ч. Часть 2	1	330
56	Тимченко Л.И.	Грехнева, Тимченко. Обучение грамоте. 1 класс. Прописи к азбуке. В 4 ч. Часть 1	1	67.980000000000004
57	Тимченко Л.И.	Грехнева, Тимченко. Обучение грамоте. 1 класс. Прописи к азбуке. В 4 ч. Часть 2	1	67.980000000000004
58	Тимченко Л.И.	Грехнева, Тимченко. Обучение грамоте. 1 класс. Прописи к азбуке. В 4 ч. Часть 3	1	67.980000000000004
59	Тимченко Л.И.	Грехнева, Тимченко. Обучение грамоте. 1 класс. Прописи к азбуке. В 4 ч. Часть 4	1	67.980000000000004
60	Илюхина В.А.	Илюхина. Чистописание. 1 класс. Рабочая тетрадь	1	69.9599999999999937
61	Илюхина В.А.	Илюхина. Чистописание. 2 класс. Рабочая тетрадь. В 3 ч. Часть 1	2	69.9599999999999937
62	Илюхина В.А.	Илюхина. Чистописание. 2 класс. Рабочая тетрадь. В 3 ч. Часть 2	2	69.9599999999999937
63	Илюхина В.А.	Илюхина. Чистописание. 2 класс. Рабочая тетрадь. В 3 ч. Часть 3	2	69.9599999999999937
64	Илюхина В.А.	Илюхина. Чистописание. 3 класс. Рабочая тетрадь. В 3 ч. Часть 1	3	69.9599999999999937
65	Илюхина В.А.	Илюхина. Чистописание. 3 класс. Рабочая тетрадь. В 3 ч. Часть 2	3	69.9599999999999937
66	Илюхина В.А.	Илюхина. Чистописание. 3 класс. Рабочая тетрадь. В 3 ч. Часть 3	3	69.9599999999999937
67	Илюхина В.А.	Илюхина. Чистописание. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	69.9599999999999937
68	Илюхина В.А.	Илюхина. Чистописание. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	69.9599999999999937
69	Рамзаева Т.Г.	Рамзаева. Русский язык. 1 класс. Учебник	1	368.939999999999998
70	Рамзаева Т.Г., Савинкина Л.П.	Рамзаева. Русский язык. 1 класс. Тетрадь для упражнений	1	137.939999999999998
71	Троицкая Н.Б.	Рамзаева. Русский язык. 1 класс. Развитие речи. Рабочая тетрадь (Троицкая)	1	112.969999999999999
72	Рамзаева Т.Г.	Рамзаева. Русский язык. Справочник к учебнику	1-4	119.900000000000006
73	Рамзаева Т.Г., Сильченкова Л.С.	Рамзаева. Русский язык. 1 класс. Тетрадь для проверочных работ	1	134.969999999999999
74	Рамзаева Т.Г.	Рамзаева. Русский язык. 2 класс. Учебник. В 2 ч. Часть 1	2	298.980000000000018
75	Рамзаева Т.Г.	Рамзаева. Русский язык. 2 класс. Учебник. В 2 ч. Часть 2	2	298.980000000000018
76	Рамзаева Т.Г., Савинкина Л.П.	Рамзаева. Русский язык. 2 класс. Тетрадь для упражнений	2	137.939999999999998
77	Рамзаева Т.Г., Сильченкова Л.С.	Рамзаева. Русский язык. 2 класс. Тетрадь для контрольных работ	2	134.969999999999999
78	Троицкая Н.Б.	Рамзаева. Русский язык. 2 класс. Развитие речи. Рабочая тетрадь (Троицкая)	2	112.969999999999999
79	Рамзаева Т.Г.	Рамзаева. Русский язык. 3 класс. Учебник. В 2 ч. Часть 1	3	298.980000000000018
80	Рамзаева Т.Г.	Рамзаева. Русский язык. 3 класс. Учебник. В 2 ч. Часть 2	3	298.980000000000018
81	Рамзаева Т.Г., Савинкина Л.П.	Рамзаева. Русский язык. 3 класс. Тетрадь для упражнений. В 2 ч. Часть 1	3	137.939999999999998
82	Рамзаева Т.Г., Савинкина Л.П.	Рамзаева. Русский язык. 3 класс. Тетрадь для упражнений. В 2 ч. Часть 2	3	137.939999999999998
83	Рамзаева Т.Г., Сильченкова Л.С.	Рамзаева. Русский язык. 3 класс. Тетрадь для контрольных работ	3	134.969999999999999
84	Троицкая Н.Б.	Рамзаева. Русский язык. 3 класс. Развитие речи. Рабочая тетрадь (Троицкая)	3	112.969999999999999
85	Рамзаева Т.Г.	Рамзаева. Русский язык. 4 класс. Учебник. В 2 ч. Часть 1	4	298.980000000000018
86	Рамзаева Т.Г.	Рамзаева. Русский язык. 4 класс. Учебник. В 2 ч. Часть 2	4	298.980000000000018
87	Рамзаева Т.Г., Савинкина Л.П.	Рамзаева. Русский язык. 4 класс. Тетрадь для упражнений. В 2 ч. Часть 1	4	137.939999999999998
88	Рамзаева Т.Г., Савинкина Л.П.	Рамзаева. Русский язык. 4 класс. Тетрадь для упражнений. В 2 ч. Часть 2	4	137.939999999999998
89	Рамзаева Т.Г., Сильченкова Л.С.	Рамзаева. Русский язык. 4 класс. Тетрадь для контрольных работ	4	134.969999999999999
90	Троицкая Н.Б.	Рамзаева. Русский язык. 4 класс. Развитие речи. Рабочая тетрадь (Троицкая)	4	112.969999999999999
91	\N	\N	\N	\N
92	Кац Э.Э.	Кац. Литературное чтение. 1 класс. Учебное пособие	1	330
93	Кац Э.Э.	Кац. Литературное чтение. 1 класс. Рабочая тетрадь	1	107.909999999999997
94	Андрианова Т.М., Кац Э.Э. , Калинина О.Б.	Проверочные и диагностические работы. Русский язык. Литературное чтение. 1 класс (Андрианова, Кац)	1	137.939999999999998
95	Кац Э.Э.	Кац. Литературное чтение. 2 класс. Учебное пособие. В 2 ч. Часть 1	2	359.920000000000016
96	Кац Э.Э.	Кац. Литературное чтение. 2 класс. Учебное пособие. В 2 ч. Часть 2	2	359.920000000000016
97	Кац Э.Э.	Кац. Литературное чтение. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	94.9300000000000068
98	Кац Э.Э.	Кац. Литературное чтение. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	94.9300000000000068
99	Кац Э.Э., Миронова Н.А.	Кац. Литературное чтение. 2 класс. Проверочные и диагностические работы	2	137.939999999999998
100	Кац Э.Э., Миронова Н.А.	Кац. Литературное чтение. 2 класс. Тесты и самостоятельные работы	2	106.920000000000002
101	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Учебное пособие. В 3 ч. Часть 1	3	286
102	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Учебное пособие. В 3 ч. Часть 2	3	286
103	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Учебное пособие. В 3 ч. Часть 3	3	286
104	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Рабочая тетрадь. В 3 ч. Часть 1	3	94.9300000000000068
105	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Рабочая тетрадь. В 3 ч. Часть 2	3	94.9300000000000068
106	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Рабочая тетрадь. В 3 ч. Часть 3	3	94.9300000000000068
107	Кац Э.Э.	Кац. Литературное чтение. 3 класс. Проверочные и диагностические работы	3	137.939999999999998
108	Кац Э.Э., Миронова Н.А.	Кац. Литературное чтение. 3 класс. Тесты и самостоятельные работы	3	106.920000000000002
109	Кац Э.Э.	Кац. Литературное чтение. 4 класс. Учебное пособие. В 3 ч. Часть 1	4	286
110	Кац Э.Э.	Кац. Литературное чтение. 4 класс. Учебное пособие. В 3 ч. Часть 2	4	286
111	Кац Э.Э.	Кац. Литературное чтение. 4 класс. Учебное пособие. В 3 ч. Часть 3	4	286
112	Кац Э.Э.	Кац. Литературное чтение. 4 класс. Рабочая тетрадь. В 3 ч. Часть 1	4	94.9300000000000068
113	Кац Э.Э.	Кац. Литературное чтение. 4 класс. Рабочая тетрадь. В 3 ч. Часть 2	4	94.9300000000000068
114	Кац Э.Э.	Кац. Литературное чтение. 4 класс. Рабочая тетрадь. В 3 ч. Часть 3	4	94.9300000000000068
115	Э.Э. Кац, Н.А. Миронова	Кац. Литературное чтение. 4 класс. Проверочные и диагностические работы	4	137.939999999999998
116	Кац Э.Э., Миронова Н.А.	Кац. Литературное чтение. 4 класс. Тесты и самостоятельные работы	4	112.969999999999999
117	Скрипова Ю.Ю., Шабалина О.В.	Итоговая аттестация. Литературное чтение. 4 класс. Базовый и повышенный уровень сложности (Скрипова, Шабалина)	4	67.980000000000004
118	\N	\N	\N	\N
119	\N	\N	\N	\N
120	\N	\N	\N	\N
121	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Учебник. В 2 ч. Часть 1	2	257.949999999999989
122	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Учебник. В 2 ч. Часть 2	2	257.949999999999989
123	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Рабочая тетрадь	2	233.969999999999999
124	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Лексико-грамматический практикум	2	154.990000000000009
125	Афанасьева О.В., Михеева И.В., Баранова К.М., Чупрына О.Г.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Контрольные работы	2	143
126	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Прописи	2	154.990000000000009
127	Афанасьева О.В., Михеева И.В., Колесникова Е.А.	Афанасьева, Михеева. Rainbow English. Английский язык. 2 класс. Диагностические работы	2	152.900000000000006
128	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Учебник. В 2 ч. Часть 1	3	265.980000000000018
129	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Учебник. В 2 ч. Часть 2	3	265.980000000000018
130	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Рабочая тетрадь	3	233.969999999999999
131	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Контрольные работы	3	143
132	Афанасьева О.В., Михеева И.В., Сьянов А.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Лексико-грамматический практикум	3	154.990000000000009
133	Афанасьева О.В., Михеева И.В., Макеева С.Н.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Диагностические работы	3	152.900000000000006
134	Афанасьева О.В., Михеева И.В., Сьянов А.В. Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 3 класс. Подготовка к всероссийским проверочным работам (ВПР)	3	119.900000000000006
135	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Учебник. В 2 ч. Часть 1	4	265.980000000000018
136	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Учебник. В 2 ч. Часть 2	4	265.980000000000018
137	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Рабочая тетрадь	4	233.969999999999999
138	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Контрольные работы	4	143
139	Афанасьева О.В., Михеева И.В., Сьянов А.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Лексико-грамматический практикум	4	154.990000000000009
140	Афанасьева О.В., Михеева И.В., Фроликова Е.Ю.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Диагностические работы	4	152.900000000000006
141	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Подготовка к всероссийским проверочным работам (ВПР)	4	139.919999999999987
142	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 4 класс. Книга для чтения	4	174.900000000000006
143	Биболетова М.З.,Денисенко О.А.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 2 класс. Учебник	2	424.930000000000007
144	Биболетова М.З., Денисенко О.А., Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 2 класс. Рабочая тетрадь	2	156.969999999999999
145	Биболетова М.З.,Денисенко О.А.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 3 класс. Учебник	3	479.930000000000007
146	Биболетова М.З., Денисенко О.А., Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 3 класс. Рабочая тетрадь	3	156.969999999999999
147	Биболетова М.З.,Денисенко О.А.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 4 класс. Учебник	4	484.990000000000009
148	Биболетова М.З., Денисенко О.А., Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 4 класс. Рабочая тетрадь	4	156.969999999999999
149	\N	\N	\N	\N
150	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 2 класс. Учебник (Гаврилова)	2	456.939999999999998
151	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Прописи)	2	183.919999999999987
152	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	183.919999999999987
153	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 3 класс. Учебник (Гаврилова)	3	456.939999999999998
154	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 3 класс. Рабочая тетрадь	3	234.960000000000008
155	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 4 класс. Учебник (Гаврилова)	4	456.939999999999998
156	Артемова Н.А., Гаврилова Т.А.	Артемова. Spektrum. Немецкий язык. 4 класс. Рабочая тетрадь	4	234.960000000000008
157	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 2 класс. Учебное пособие	2	454.95999999999998
158	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	154
159	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	154
160	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 3 класс. Учебное пособие. Комплект (+ CD)	3	454.95999999999998
161	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 3 класс. Рабочая тетрадь	3	154
162	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 4 класс. Учебное пособие	4	454.95999999999998
163	Гальскова Н.Д., Гез Н.И.	Гальскова, Гез. Немецкий язык. 4 класс. Рабочая тетрадь	4	154
164	\N	\N	\N	\N
165	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 1 класс. Учебник. В 2 ч. Часть 1 (Циновская)	1	330
166	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 1 класс. Учебник. В 2 ч. Часть 2	1	330
167	Нефедова М.Г.	Башмаков, Нефедова. Математика. 1 класс. Рабочая тетрадь. В 2 ч. Часть 1	1	108.900000000000006
168	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 1 класс. Рабочая тетрадь. В 2 ч. Часть 2	1	108.900000000000006
169	Нефёдова М.Г.	Башмаков, Нефедова. Математика. 1 класс. Контрольные и диагностические работы (Циновская)	1	103.950000000000003
170	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 2 класс. Учебник. В 2 ч. Часть 1	2	330
171	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 2 класс. Учебник. В 2 ч. Часть 2	2	330
172	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	108.900000000000006
173	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	108.900000000000006
174	Нефёдова М.Г.	Башмаков, Нефедова. Математика. 2 класс. Контрольные и диагностические работы (Циновская)	2	103.950000000000003
175	Нефёдова М.Г,	Башмаков, Нефедова. Математика. 2 класс. Тесты и самостоятельные работы для текущего контроля	2	112.969999999999999
176	Рыдзе О.А.	Рыдзе О.А. Математика. 2 класс. Арифметические задачи. Тренировочные задания для формирования предметных и метапредметных учебных действий	2	84.9200000000000017
177	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 3 класс. Учебник. В 2 ч. Часть 1	3	330
178	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 3 класс. Учебник. В 2 ч. Часть 2	3	330
179	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	108.900000000000006
180	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	108.900000000000006
181	Нефедова М.Г.	Башмаков, Нефедова. Математика. 3 класс. Контрольные и диагностические работы	3	114.950000000000003
182	Нефёдова М.Г.	Башмаков, Нефедова. Математика. 3 класс. Тесты и самостоятельные работы для текущего контроля (Циновская)	3	112.969999999999999
183	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 4 класс. Учебник. В 2 ч. Часть 1	4	330
184	Башмаков М.И.,Нефедова М.Г.	Башмаков, Нефедова. Математика. 4 класс. Учебник. В 2 ч. Часть 2	4	330
185	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	108.900000000000006
186	Башмаков М.И., Нефедова М.Г.	Башмаков, Нефедова. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	108.900000000000006
187	Нефедова М.Г.	Башмаков, Нефедова. Математика. 4 класс. Контрольные и диагностические работы	4	114.950000000000003
188	Нефедова М.Г.	Башмаков, Нефедова. Математика. 4 класс. Тесты и самостоятельные работы для текущего контроля	4	112.969999999999999
189	Кочурова Е.Э.	Тематический контроль и оценка. Кочурова. Математика. 2-3 классы. Решение задач. Работа с информацией. Рабочая тетрадь для проверки знаний	2-3	104.939999999999998
190	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 1 класс. Учебник. В 2 ч. Часть 1	1	377.95999999999998
191	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 1 класс. Учебник. В 2 ч. Часть 2	1	377.95999999999998
192	Муравина О.В.	Муравин. Математика. 1 класс. Рабочая тетрадь. В 2 ч. Часть 1	1	135.960000000000008
193	Муравина О.В.	Муравин. Математика. 1 класс. Рабочая тетрадь. В 2 ч. Часть 2	1	135.960000000000008
194	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 2 класс. Учебник. В 2 ч. Часть 1	2	377.95999999999998
195	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 2 класс. Учебник. В 2 ч. Часть 2	2	377.95999999999998
196	Муравина О.В.	Муравин. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	135.960000000000008
197	Муравина О.В.	Муравин. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	135.960000000000008
198	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 3 класс. Учебник. В 2 ч. Часть 1	3	377.95999999999998
199	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 3 класс. Учебник. В 2 ч. Часть 2	3	377.95999999999998
200	Муравина О.В.	Муравин. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	135.960000000000008
201	Муравина О.В.	Муравин. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	135.960000000000008
202	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 4 класс. Учебник. В 2 ч. Часть 1	4	377.95999999999998
203	Муравин Г.К.,Муравина О.В.	Муравин. Математика. 4 класс. Учебник. В 2 ч. Часть 2	4	377.95999999999998
204	Муравина О.В.	Муравин. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	135.960000000000008
205	Муравина О.В.	Муравин. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	135.960000000000008
206	Ордынкина И.С.	Прописи цифр (Ордынкина)	1-4	48.9500000000000028
207	\N	\N	\N	\N
208	Крылова О.В., Сивоглазов В.И.	Сивоглазов. Окружающий мир. 1-4 классы. Природа и человек. Атлас	1-4	104.939999999999998
209	Сивоглазов В.И.	Сивоглазов. Окружающий мир. 1 класс. Альбом проектов	1	145.969999999999999
210	Сивоглазов В.И.	Сивоглазов. Окружающий мир. 2 класс. Альбом проектов	2	145.969999999999999
211	Сивоглазов В.И.	Сивоглазов. Окружающий мир. 3 класс. Альбом проектов	3	145.969999999999999
212	Сивоглазов В.И.	Сивоглазов. Окружающий мир. 4 класс. Альбом проектов	4	145.969999999999999
213	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 1 класс. Учебник	1	341.990000000000009
214	Ивченкова Г.Г.	Ивченкова, Потапов. Окружающий мир. 1 класс. Рабочая тетрадь. В 2 ч. Часть 1	1	136.949999999999989
215	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 1 класс. Рабочая тетрадь. В 2 ч. Часть 2	1	136.949999999999989
216	Потапов И.В., Ивченкова Г.Г.	Ивченкова, Потапов. Окружающий мир. 1 класс. Проверочные и диагностические работы	1	127.930000000000007
217	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 2 класс. Учебник. В 2 ч. Часть 1	2	262.899999999999977
218	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 2 класс. Учебник. В 2 ч. Часть 2	2	262.899999999999977
219	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	136.949999999999989
220	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	136.949999999999989
221	Потапов И.В., Ивченкова Г.Г.	Ивченкова, Потапов. Окружающий мир. 2 класс. Проверочные и диагностические работы	2	127.930000000000007
222	Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 2 класс. Тесты и самостоятельные работы для текущего контроля	2	108.900000000000006
223	Ивченкова Г.Г.,Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 3 класс. Учебник. В 2 ч. Часть 1	3	330
224	Потапов И.В.,Саплина Е.В.,Саплин А.И.	Ивченкова, Потапов. Окружающий мир. 3 класс. Учебник. В 2 ч. Часть 2	3	330
225	Ивченкова Г.Г.	Ивченкова, Потапов. Окружающий мир. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	136.949999999999989
226	Потапов И.В., Саплина Е.В., Саплин А.И.	Ивченкова, Потапов. Окружающий мир. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	136.949999999999989
227	Потапов И.В., Калинина О.Б.	Ивченкова, Потапов. Окружающий мир. 3 класс. Проверочные и диагностические работы	3	127.930000000000007
228	Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 3 класс. Тесты и самостоятельные работы для текущего контроля	3	108.900000000000006
229	Ивченкова Г.Г.,Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 4 класс. Учебник. В 2 ч. Часть 1	4	330
230	Саплина Е.В.,Саплин А.И.	Ивченкова, Потапов. Окружающий мир. 4 класс. Учебник. В 2 ч. Часть 2 (Саплин)	4	330
231	Ивченкова Г.Г., Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	136.949999999999989
232	Саплина Е.В., Саплин А.И.	Ивченкова, Потапов. Окружающий мир. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Саплин)	4	136.949999999999989
233	Потапов И.В., Калинина О.Б.	Ивченкова, Потапов. Окружающий мир. 4 класс. Проверочные и диагностические работы	4	127.930000000000007
234	Потапов И.В.	Ивченкова, Потапов. Окружающий мир. 4 класс. Тесты и самостоятельные работы для текущего контроля	4	108.900000000000006
235	Саплина Е.В.,Саплин А.И.,Сивоглазов В.И.	Саплина. Окружающий мир. 1 класс. Учебник	1	432.95999999999998
236	Саплина Е.В., Саплин А.И., Сивоглазов В.И.	Саплина. Окружающий мир. 1 класс. Рабочая тетрадь	1	145.969999999999999
237	Сивоглазов В.И.,Саплина Е.В.,Саплин А.И.	Саплина. Окружающий мир. 2 класс. Учебник	2	432.95999999999998
238	Сивоглазов В.И., Саплина Е.В., Саплин А.И.	Саплина. Окружающий мир. 2 класс. Рабочая тетрадь	2	145.969999999999999
239	Саплина Е.В.,Сивоглазов В.И.,Саплин А.И.	Саплина. Окружающий мир. 3 класс. Учебник. В 2 ч. Часть 1	3	360.910000000000025
240	Саплина Е.В.,Сивоглазов В.И.,Саплин А.И.	Саплина. Окружающий мир. 3 класс. Учебник. В 2 ч. Часть 2	3	360.910000000000025
241	Саплина Е.В., Сивоглазов В.И., Саплин А.И.	Саплина. Окружающий мир. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	145.969999999999999
242	Саплина Е.В., Сивоглазов В.И., Саплин А.И.	Саплина. Окружающий мир. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	145.969999999999999
243	Саплина Е.В.,Саплин А.И.,Сивоглазов В.И.	Саплина. Окружающий мир. 4 класс. Учебник. В 2 ч. Часть 1	4	360.910000000000025
244	Саплина Е.В.,Саплин А.И.,Сивоглазов В.И.	Саплина. Окружающий мир. 4 класс. Учебник. В 2 ч. Часть 2	4	360.910000000000025
245	Сивоглазов В.И., Саплина Е.В., Саплин А.И.	Саплина. Окружающий мир. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	145.969999999999999
246	Сивоглазов В.И., Саплина Е.В., Саплин А.И.	Саплина. Окружающий мир. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	145.969999999999999
247	Лапшина А.А., Петров А.П.	Итоговая аттестация. Окружающий мир. 4 класс. Базовый и повышенный уровень сложности (Лапшина, Петров)	4	67.980000000000004
248	\N	\N	\N	\N
249	Шемшурин А.А.,Брунчукова Н.М.,Демин Р.Н. и др./Под ред. Т.Д. Шапошниковой	Шемшурин. ОРКСЭ. 4-5 классы. Основы светской этики. Учебник	4-5	423.939999999999998
250	Амиров Р.Б.,Воскресенский О.В.,Горбачева Т.М. и др./Под ред. Т.Д. Шапошниковой	Амиров. ОРКСЭ. 4-5 классы. Основы мировых религиозных культур. Учебник	4-5	423.939999999999998
251	Костюкова Т.А.,Воскресенский О.В.,Савченко К.В./Под ред. Т.Д. Шапошниковой	Костюкова. ОРКСЭ. 4-5 классы. Основы православной культуры . Учебник (Воскресенский, Савченко, Шапошникова)	4-5	423.939999999999998
252	Саплина Е.В.,Саплин А.И.	Саплина. ОДНК. 4 класс. Основы религиозных культур и светской этики. Учебник	4	348.920000000000016
253	Саплина Е.В., Саплин А.И	Саплина. ОДНК. 4 класс. Основы религиозных культур и светской этики. Рабочая тетрадь	4	127.930000000000007
254	\N	\N	\N	\N
255	\N	\N	\N	\N
256	Кузин В.С.,Кубышкина Э.И.,Богатырев Я.М.	Кузин. ИЗО. 1 класс. Учебник	1	293.920000000000016
257	Кузин В.С., Кубышкина Э.И.	Кузин. ИЗО. 1 класс. Рабочий альбом	1	148.939999999999998
258	Богатырева В.Я.	Кузин. ИЗО. 1 класс. Рабочая тетрадь (Богатырева)	1	169.949999999999989
259	Кузин В.С.,Кубышкина Э.И.,Богатырев Я.М.	Кузин. ИЗО. 2 класс. Учебник	2	308
260	Кузин В.С., Кубышкина Э.И.	Кузин. ИЗО. 2 класс. Рабочий альбом	2	148.939999999999998
261	Богатырева В.Я.	Кузин. ИЗО. 2 класс. Рабочая тетрадь (Богатырева)	2	169.949999999999989
262	Кузин В.С.,Кубышкина Э.И.,Богатырев Я.М.	Кузин. ИЗО. 3 класс. Учебник	3	308
263	Кузин В.С., Кубышкина Э.И.	Кузин. ИЗО. 3 класс. Рабочий альбом	3	148.939999999999998
264	Богатырева В.Я.	Кузин. ИЗО. 3 класс. Рабочая тетрадь (Богатырева)	3	169.949999999999989
265	Кузин В.С.,Богатырев Я.М.	Кузин. ИЗО. 4 класс. Учебник	4	308
266	Кузин В.С., Кубышкина Э.И.	Кузин. ИЗО. 4 класс. Рабочий альбом	4	148.939999999999998
267	Богатырева В.Я.	Кузин. ИЗО. 4 класс. Рабочая тетрадь (Богатырева)	4	169.949999999999989
268	Сокольникова Н.М.	Сокольникова. ИЗО. 1 класс. Учебник. В 2 ч. Часть 1	1	199.97999999999999
269	Сокольникова Н.М.	Сокольникова. ИЗО. 1 класс. Учебник. В 2 ч. Часть 2	1	199.97999999999999
270	Сокольникова Н.М.	Сокольникова. ИЗО. 1 класс. Рабочая тетрадь	1	138.930000000000007
271	Сокольникова Н.М.	Сокольникова. ИЗО. 1 класс. Рабочий альбом	1	160.930000000000007
272	Сокольникова Н.М.	Сокольникова. ИЗО. 2 класс. Учебник. В 2 ч. Часть 1	2	199.97999999999999
273	Сокольникова Н.М.	Сокольникова. ИЗО. 2 класс. Учебник. В 2 ч. Часть 2	2	199.97999999999999
274	Сокольникова Н.М.	Сокольникова. ИЗО. 2 класс. Рабочая тетрадь	2	138.930000000000007
275	Сокольникова Н.М.	Сокольникова. ИЗО. 2 класс. Рабочий альбом	2	160.930000000000007
276	Сокольникова Н.М.	Сокольникова. ИЗО. 3 класс. Учебник. В 2 ч. Часть 1	3	199.97999999999999
277	Сокольникова Н.М.	Сокольникова. ИЗО. 3 класс. Учебник. В 2 ч. Часть 2	3	199.97999999999999
278	Сокольникова Н.М.	Сокольникова. ИЗО. 3 класс. Рабочая тетрадь	3	138.930000000000007
279	Сокольникова Н.М.	Сокольникова. ИЗО. 3 класс. Рабочий альбом	3	160.930000000000007
280	Сокольникова Н.М.	Сокольникова. ИЗО. 4 класс. Учебник. В 2 ч. Часть 1	4	199.97999999999999
281	Сокольникова Н.М.	Сокольникова. ИЗО. 4 класс. Учебник. В 2 ч. Часть 2	4	199.97999999999999
282	Сокольникова Н.М.	Сокольникова. ИЗО. 4 класс. Рабочая тетрадь	4	138.930000000000007
283	Сокольникова Н.М.	Сокольникова. ИЗО. 4 класс. Рабочий альбом	4	160.930000000000007
284	\N	\N	\N	\N
285	Алеев В.В.,Кичак Т.Н.	Алеев. Музыка. 1 класс. Учебник. В 2 ч. Часть 1	1	348.920000000000016
286	Алеев В.В.,Кичак Т.Н.	Алеев. Музыка. 1 класс. Учебник. В 2 ч. Часть 2	1	348.920000000000016
287	Алеев В.В., Кичак Т.Н.	Алеев. Музыка. 1 класс. Рабочая тетрадь	1	154.990000000000009
288	Алеев В.В.,Кичак Т.Н.	Алеев. Музыка. 2 класс. Учебник. В 2 ч. Часть 1	2	348.920000000000016
289	Алеев В.В.,Кичак Т.Н.	Алеев. Музыка. 2 класс. Учебник. В 2 ч. Часть 2	2	348.920000000000016
290	Алеев В. В., Кичак Т. Н.	Алеев. Музыка. 2 класс. Рабочая тетрадь	2	154.990000000000009
291	Алеев В.В.,Кичак Т.Н.	Алеев. Музыка. 3 класс. Учебник. В 2 ч. Часть 1	3	348.920000000000016
292	Алеев В.В.,Кичак Т.Н.	Алеев. Музыка. 3 класс. Учебник. В 2 ч. Часть 2	3	348.920000000000016
293	Алеев В. В., Кичак Т. Н.	Алеев. Музыка. 3 класс. Рабочая тетрадь	3	154.990000000000009
294	Алеев В.В.	Алеев. Музыка. 4 класс. Учебник. В 2 ч. Часть 1	4	348.920000000000016
295	Алеев В.В.	Алеев. Музыка. 4 класс. Учебник. В 2 ч. Часть 2	4	348.920000000000016
296	Алеев В.В., Кичак Т.Н.	Алеев. Музыка. 4 класс. Рабочая тетрадь	4	154.990000000000009
297	Бакланова Т.И.	Бакланова. Музыка. 1 класс. Учебник. В 2 ч. Часть 1	1	249.919999999999987
298	Бакланова Т.И.	Бакланова. Музыка. 1 класс. Учебник. В 2 ч. Часть 2	1	249.919999999999987
299	Бакланова Т.И.	Бакланова. Музыка. 2 класс. Учебник	2	398.970000000000027
300	Бакланова Т.И.	Бакланова. Музыка. 3 класс. Учебник	3	398.970000000000027
301	Бакланова Т.И.	Бакланова. Музыка. 4 класс. Учебник	4	398.970000000000027
302	\N	\N	\N	\N
303	Узорова О.В.,Нефедова Е.А.	Узорова, Нефедова. Технология. 1 класс. Учебник. В 2 ч. Часть 1	1	269.939999999999998
304	Узорова О.В.,Нефедова Е.А.	Узорова, Нефедова. Технология. 1 класс. Учебник. В 2 ч. Часть 2	1	269.939999999999998
305	Узорова О.В.	Узорова, Нефедова. Технология. 1 класс. Рабочая тетрадь	1	254.97999999999999
306	Узорова О.В.,Нефедова Е.А.	Узорова, Нефедова. Технология. 2 класс. Учебник	2	414.920000000000016
307	Узорова О.В., Нефедова Е.А.	Узорова, Нефедова. Технология. 2 класс. Рабочая тетрадь	2	144.97999999999999
308	Узорова О.В.,Нефедова Е.А.	Узорова, Нефедова. Технология. 3 класс. Учебник	3	414.920000000000016
309	Узорова О.В.	Узорова, Нефедова. Технология. 3 класс. Рабочая тетрадь	3	144.97999999999999
310	Узорова О.В.,Нефедова Е.А.	Узорова, Нефедова. Технология. 4 класс. Учебник	4	414.920000000000016
311	Узорова О.В.	Узорова, Нефедова. Технология. 4 класс. Рабочая тетрадь	4	144.97999999999999
312	\N	\N	\N	\N
313	Лисицкая Т.С.,Новикова Л.А.	Лисицкая, Новикова. Физическая культура. 1 класс. Учебник	1	309.980000000000018
314	Лисицкая Т.С., Новикова Л.А.	Лисицкая, Новикова. Физическая культура. 1 класс. Спортивный дневник школьника	1	104.939999999999998
315	Лисицкая Т.С.,Новикова Л.А.	Лисицкая, Новикова. Физическая культура. 2 класс. Учебник	2	309.980000000000018
316	Лисицкая Т.С., Новикова Л.А.	Лисицкая, Новикова. Физическая культура. 2 класс. Спортивный дневник школьника	2	104.939999999999998
317	Лисицкая Т.С.,Новикова Л.А.	Лисицкая, Новикова. Физическая культура. 3-4 классы. Учебник	3-4	309.980000000000018
318	Погадаев Г.И.	Погадаев. Физическая культура. 1-2 классы. Учебник	1-2	445.939999999999998
319	Погадаев Г.И.	Погадаев. Физическая культура. 3-4 классы. Учебник	3-4	445.939999999999998
320	\N	\N	\N	\N
321	\N	\N	\N	\N
322	\N	\N	\N	\N
323	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 5 класс. Учебник. В 2 ч. Часть 1	5	239.909999999999997
324	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 5 класс. Учебник. В 2 ч. Часть 2	5	239.909999999999997
325	Ларионова Л.Г.	Разумовская. Русский язык. 5 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (Ларионова)	5	147.949999999999989
326	Львов В.В.	Разумовская. Русский язык. 5 класс. Контрольные работы (Львов)	5	133.97999999999999
327	Львов В.В.	Разумовская. Русский язык. 5 класс. Диагностические работы (Львов)	5	140.909999999999997
328	Капинос В.И., Пучкова Л.И., Гостева Ю.Н.	Разумовская. Русский язык. 5 класс. Тесты (Капинос, Пучкова, Гостева)	5	138.930000000000007
329	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 6 класс. Учебник. В 2 ч. Часть 1	6	239.909999999999997
330	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 6 класс. Учебник. В 2 ч. Часть 2	6	239.909999999999997
331	Ларионова Л.Г.	Разумовская. Русский язык. 6 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (Ларионова)	6	147.949999999999989
332	Львов В.В.	Разумовская. Русский язык. 6 класс. Диагностические работы (Львов)	6	140.909999999999997
333	Капинос В.И., Пучкова Л.И., Гостева Ю.Н.	Разумовская. Русский язык. 6 класс. Тесты (Капинос, Пучкова, Гостева)	6	138.930000000000007
334	Львов В.В.	Разумовская. Русский язык. 6 класс. Контрольные работы (Львов)	6	133.97999999999999
335	Львов В.В.	Разумовская. Русский язык. 6 класс. Тетрадь для оценки качества знаний (Львов)	6	122.980000000000004
336	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 7 класс. Учебник	7	414.920000000000016
337	Ларионова Л.Г.	Разумовская. Русский язык. 7 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (Ларионова)	7	147.949999999999989
338	Львов В.В.	Разумовская. Русский язык. 7 класс. Диагностические работы (Львов)	7	140.909999999999997
339	Капинос В.И., Пучкова Л.И., Гостева Ю.Н.	Разумовская. Русский язык. 7 класс. Тесты (Капинос, Пучкова, Гостева)	7	138.930000000000007
340	Львов В. В.	Разумовская. Русский язык. 7 класс. Контрольные работы (Львов)	7	133.97999999999999
341	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 8 класс. Учебник	8	423.939999999999998
342	Литвинова М.М.	Разумовская. Русский язык. 8 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (Литвинова)	8	160.930000000000007
343	Львов В.В.	Разумовская. Русский язык. 8 класс. Диагностические работы (Львов)	8	140.909999999999997
344	Капинос В.И., Пучкова Л.И., Гостева Ю.Н.	Разумовская. Русский язык. 8 класс. Тесты (Капинос, Пучкова, Гостева)	8	138.930000000000007
345	Литвинова М.М.	Разумовская. Русский язык. 8 класс. Контрольные работы (Литвинова)	8	133.97999999999999
346	Разумовская М.М.,Львова С.И.,Капинос В.И. и др.	Разумовская. Русский язык. 9 класс. Учебник	9	423.939999999999998
347	Литвинова М.М.	Разумовская. Русский язык. 9 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (Литвинова)	9	160.930000000000007
348	Львов В.В.	Разумовская. Русский язык. 9 класс. Диагностические работы (Львов)	9	147.949999999999989
349	Литвинова М.М.	Разумовская. Русский язык. 9 класс. Контрольные работы (Литвинова)	9	133.97999999999999
350	Капинос В.И., Пучкова Л.И., Гостева Ю.Н.	Разумовская. Русский язык. 9 класс. Тесты (Капинос, Пучкова, Гостева)	9	138.930000000000007
351	Харитонова Е.И.	Русский язык. 5-9 классы. Рабочие программы (Харитонова)	5-9	114.950000000000003
352	Бабайцева В.В.,Чеснокова Л.Д.	Бабайцева. Русский язык. 5-9 классы. Теория. Учебник	5-9	397.980000000000018
353	Купалова А.Ю.,Еремеева А.П.,Лидман-Орлова Г.К. и др.;под ред. Купаловой А.Ю.	Бабайцева. Русский язык. 5 класс. Практика. Учебник (Купалова, Еремеева, Пахнова)	5	354.970000000000027
354	Никитина Е.И.	Бабайцева. Русский язык. 5 класс. Русская речь. Учебник (Никитина)	5	354.970000000000027
355	Лидман-Орлова Г.К.,Пименова С.Н.,Еремеева А.П. и др.;под ред. Лидман-Орловой Г.К.	Бабайцева. Русский язык. 6 класс. Практика. Учебник (Лидман-Орлова, Пименова, Еремеева)	6	354.970000000000027
356	Никитина Е.И.	Бабайцева. Русский язык. 6 класс. Русская речь. Учебник (Никитина)	6	354.970000000000027
357	Пименова С.Н., Еремеева А.П., Купалова А.Ю. и др.;под ред. Пименовой С.Н.	Бабайцева. Русский язык. 7 класс. Практика. Учебник (Пименова, Еремеева, Купалова)	7	354.970000000000027
358	Никитина Е.И.	Бабайцева. Русский язык. 7 класс. Русская речь. Учебник (Никитина)	7	354.970000000000027
359	Пичугов Ю.С.,Еремеева А.П.,Купалова А.Ю. и др.;под ред. Пичугова Ю.С.	Бабайцева. Русский язык. 8 класс. Практика. Учебник (Пичугов, Еремеева, Купалова)	8	354.970000000000027
360	Никитина Е.И.	Бабайцева. Русский язык. 8 класс. Русская речь. Учебник (Никитина)	8	354.970000000000027
361	Пичугов Ю.С.,Еремеева А.П.,Купалова А.Ю. и др.;под ред. Пичугова Ю.С.	Бабайцева. Русский язык. 9 класс. Практика. Учебник (Пичугов, Еремеева, Купалова)	9	354.970000000000027
362	Никитина Е.И.	Бабайцева. Русский язык. 9 класс. Русская речь. Учебник (Никитина)	9	354.970000000000027
363	Альбеткова Р.И.	Альбеткова. Русский язык. 5 класс. Русская словесность. Учебное пособие	5	277.970000000000027
364	Альбеткова Р.И.	Альбеткова. Русский язык. 6 класс. Русская словесность. Учебное пособие	6	277.970000000000027
365	Альбеткова Р.И.	Альбеткова. Русский язык. 7 класс. Русская словесность. Учебное пособие	7	277.970000000000027
366	Альбеткова Р.И.	Альбеткова. Русский язык. 8 класс. Русская словесность. Учебное пособие	8	282.920000000000016
367	Альбеткова Р.И.	Альбеткова. Русский язык. 9 класс. Русская словесность. Учебное пособие	9	282.920000000000016
368	Бабайцева В.В.	Бабайцева. Русский язык. 5-9 классы. Учебник (углубленный)	5-9	500.939999999999998
369	Бабайцева В.В., Беднарская Л.Д., Дрозд Н.В.	Бабайцева. Русский язык. 5 класс. Сборник заданий (углубленный)	5	209.990000000000009
370	Бабайцева В.В., Беднарская Л.Д.	Бабайцева. Русский язык. 6-7 классы. Сборник заданий (углубленный)	6-7	221.97999999999999
371	Бабайцева В.В., Беднарская Л.Д.	Бабайцева. Русский язык. 8-9 классы. Сборник заданий (углубленный)	8-9	221.97999999999999
372	Ушаков Д.Н., Крючков С.Е.	Ушаков, Крючков. Школьный орфографический словарь	\N	212.960000000000008
373	\N	\N	\N	\N
374	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 5 класс. Учебник. В 2 ч. Часть 1	5	374
375	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 5 класс. Учебник. В 2 ч. Часть 2	5	374
376	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 6 класс. Учебник. В 2 ч. Часть 1	6	374
377	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 6 класс. Учебник. В 2 ч. Часть 2	6	374
378	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 7 класс. Учебник. В 2 ч. Часть 1	7	374
379	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 7 класс. Учебник. В 2 ч. Часть 2	7	374
380	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 8 класс. Учебник. В 2 ч. Часть 1	8	374
381	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 8 класс. Учебник. В 2 ч. Часть 2	8	374
382	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 9 класс. Учебник. В 2 ч. Часть 1	9	374
383	Архангельский А.Н.,Смирнова Т.Ю.;под ред. Архангельского А.Н.	Архангельский. Литература. 9 класс. Учебник. В 2 ч. Часть 2	9	374
384	Курдюмова Т.Ф.	Курдюмова. Литература. 5 класс. Учебное пособие. В 2 ч. Часть 1	5	324.939999999999998
385	Курдюмова Т.Ф.	Курдюмова. Литература. 5 класс. Учебное пособие. В 2 ч. Часть 2	5	324.939999999999998
386	Курдюмова Т.Ф.	Курдюмова. Литература. 5 класс. Рабочая тетрадь. В 2 ч. Часть 1	5	123.969999999999999
387	Курдюмова Т.Ф.	Курдюмова. Литература. 5 класс. Рабочая тетрадь. В 2 ч. Часть 2	5	123.969999999999999
388	Курдюмова Т.Ф.	Курдюмова. Литература. 6 класс. Учебное пособие. В 2 ч. Часть 1	6	324.939999999999998
389	Курдюмова Т.Ф.	Курдюмова. Литература. 6 класс. Учебное пособие. В 2 ч. Часть 2	6	324.939999999999998
390	Курдюмова Т.Ф.	Курдюмова. Литература. 7 класс. Учебное пособие. В 2 ч. Часть 1	7	324.939999999999998
391	Курдюмова Т.Ф.	Курдюмова. Литература. 7 класс. Учебное пособие. В 2 ч. Часть 2	7	324.939999999999998
392	Курдюмова Т.Ф.	Курдюмова. Литература. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	123.969999999999999
393	Курдюмова Т.Ф.	Курдюмова. Литература. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	123.969999999999999
394	Курдюмова Т.Ф., Колокольцев Е.Н., Марьина О.Б.	Курдюмова. Литература. 8 класс. Учебное пособие. В 2 ч. Часть 1	8	330.990000000000009
395	Курдюмова Т.Ф., Марьина О.Б., Колокольцев Е.Н.	Курдюмова. Литература. 8 класс. Учебное пособие. В 2 ч. Часть 2	8	330.990000000000009
396	Курдюмова Т.Ф., Леонов С.А., Колокольцев Е.Н.	Курдюмова. Литература. 9 класс. Учебное пособие. В 2 ч. Часть 1	9	330.990000000000009
397	Курдюмова Т.Ф., Леонов С.А., Марьина О.Б.	Курдюмова. Литература. 9 класс. Учебное пособие. В 2 ч. Часть 2	9	330.990000000000009
398	Зуева Е.В.	Учимся писать сочинение. 5-6 классы (Зуева)	5-6	127.930000000000007
399	Зуева Е.В.	Учимся писать сочинение. 7-8 классы (Зуева)	7-8	127.930000000000007
400	\N	\N	\N	\N
401	\N	\N	\N	\N
402	\N	\N	\N	\N
403	Журина Т.Ю.	Английский язык. 5-11 классы. 55 устных тем по английскому языку (Журина)	5-11	146.960000000000008
404	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Учебник. В 2 ч. Часть 1	5	289.95999999999998
405	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Учебник. В 2 ч. Часть 2	5	289.95999999999998
547	Морозов А.Ю.	История в схемах и таблицах. 8 класс. Дидактические материалы (Агафонов)	8	104.939999999999998
406	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Рабочая тетрадь	5	239.909999999999997
407	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Лексико-грамматический практикум	5	154.990000000000009
408	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Контрольные работы	5	144.97999999999999
409	Афанасьева О.В., Михеева И.В., Колесникова Е.А.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Диагностические работы	5	152.900000000000006
410	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Подготовка к всероссийским проверочным работам (ВПР)	5	94.9300000000000068
411	Афанасьева О.В., Михеева И.В., Сьянов А.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 5 класс. Книга для чтения	5	168.960000000000008
412	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Учебник. В 2 ч. Часть 1	6	289.95999999999998
413	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Учебник. В 2 ч. Часть 2	6	289.95999999999998
414	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Рабочая тетрадь	6	239.909999999999997
415	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Лексико-грамматический практикум	6	154.990000000000009
416	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Контрольные работы	6	157.960000000000008
417	Афанасьева О.В., Михеева И.В., Колесникова Е.А.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Диагностические работы	6	152.900000000000006
418	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 6 класс. Книга для чтения	6	168.960000000000008
419	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Учебник. В 2 ч. Часть 1	7	289.95999999999998
420	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Учебник. В 2 ч. Часть 2	7	289.95999999999998
421	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Рабочая тетрадь	7	239.909999999999997
422	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Лексико-грамматический практикум	7	154.990000000000009
423	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Контрольные работы	7	157.960000000000008
424	Афанасьева О.В., Михеева И.В., Макеева С.Н.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Диагностические работы	7	152.900000000000006
425	Афанасьева О.В., Михеева И.В., Сьянов А.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 7 класс. Книга для чтения	7	168.960000000000008
426	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Учебник. В 2 ч. Часть 1	8	289.95999999999998
427	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Учебник. В 2 ч. Часть 2	8	289.95999999999998
428	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Рабочая тетрадь	8	239.909999999999997
429	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Лексико-грамматический практикум	8	154.990000000000009
430	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Контрольные работы	8	157.960000000000008
431	Афанасьева О.В., Михеева И.В., Макеева С.Н.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Диагностические работы	8	152.900000000000006
432	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 8 класс. Книга для чтения	8	168.960000000000008
433	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Учебник. В 2 ч. Часть 1	9	289.95999999999998
434	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Учебник. В 2 ч. Часть 2	9	289.95999999999998
435	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Рабочая тетрадь	9	239.909999999999997
629	Крылова О.В.	География. 7 класс. Атлас для проектных работ (Крылова)	7	155.97999999999999
436	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Лексико-грамматический практикум	9	154.990000000000009
437	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Контрольные работы	9	157.960000000000008
438	Афанасьева О.В., Михеева И.В., Макеева С.Н.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Диагностические работы	9	152.900000000000006
439	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Подготовка к всероссийским проверочным работам (ВПР)	9	94.9300000000000068
440	Афанасьева О.В., Михеева И.В., Сьянов А.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 9 класс. Книга для чтения	9	168.960000000000008
441	Биболетова М.З.,Денисенко О.А.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 5 класс. Учебник	5	506.990000000000009
442	Биболетова М.З., Денисенко О.А., Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 5 класс. Рабочая тетрадь	5	149.930000000000007
443	Биболетова М.З.,Денисенко О.А.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 6 класс. Учебник	6	506.990000000000009
444	Биболетова М.З.	Биболетова. Enjoy English. Английский язык. 6 класс. Рабочая тетрадь	6	149.930000000000007
445	Биболетова М.З.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 7 класс. Учебник	7	506.990000000000009
446	Биболетова М.З.	Биболетова. Enjoy English. Английский язык. 7 класс. Рабочая тетрадь	7	149.930000000000007
447	Биболетова М.З.,Трубанева Н.Н.	Биболетова. Enjoy English. Английский язык. 8 класс. Учебник	8	506.990000000000009
448	Биболетова М.З., Бабушис Е.Е.	Биболетова. Enjoy English. Английский язык. 8 класс. Рабочая тетрадь	8	149.930000000000007
449	Биболетова М.З., Бабушис Е.Е., Кларк О.И., Морозова А.Н., Соловьева И.Ю.	Биболетова. Enjoy English. Английский язык. 9 класс. Учебник	9	506.990000000000009
450	Биболетова М.З., Бабушис Е.Е., Кларк О.И., Морозова А.Н.	Биболетова. Enjoy English. Английский язык. 9 класс. Рабочая тетрадь	9	149.930000000000007
451	\N	\N	\N	\N
452	Радченко О.А.,Хебелер Г.,Степкин Н.П.	Радченко. Alles Klar! Немецкий язык. 5 класс. Учебник	5	440
453	Радченко О.А., Хебелер Г., Степкин Н.П.	Радченко. Alles Klar! Немецкий язык. 5 класс. Рабочая тетрадь. В 2 ч. Часть 1	5	160.930000000000007
454	Радченко О.А.,  Хебелер Г., Степкин Н.П.	Радченко. Alles Klar! Немецкий язык. 5 класс. Рабочая тетрадь. В 2 ч. Часть 2	5	160.930000000000007
455	Радченко О.А.,Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 6 класс. Учебник	6	440
456	Радченко О.А., Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 6 класс. Рабочая тетрадь. В 2 ч. Часть 1	6	160.930000000000007
457	Радченко О.А.,  Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 6 класс. Рабочая тетрадь. В 2 ч. Часть 2	6	160.930000000000007
458	Радченко О.А.,Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 7 класс. Учебник	7	440
459	Радченко О.А., Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 7 класс. Рабочая тетрадь	7	174.900000000000006
460	Радченко О.А.,  Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 8 класс. Рабочая тетрадь	7	174.900000000000006
461	Радченко О.А.,Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 8 класс. Учебник	8	440
462	Радченко О.А.,Хебелер Г.	Радченко. Alles Klar! Немецкий язык. 9 класс. Учебник	9	440
463	\N	\N	\N	\N
464	\N	\N	\N	\N
465	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 5 класс. Учебник	5	449.899999999999977
466	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 5 класс. Рабочая тетрадь. В 2 ч. Часть 1	5	187.990000000000009
467	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 5 класс. Рабочая тетрадь. В 2 ч. Часть 2	5	187.990000000000009
468	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 6 класс. Учебник	6	449.899999999999977
469	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 6 класс. Рабочая тетрадь. В 2 ч. Часть 1	6	187.990000000000009
470	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 6 класс. Рабочая тетрадь. В 2 ч. Часть 2	6	187.990000000000009
471	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 6 класс. Книга для чтения	6	102.959999999999994
472	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 7 класс. Учебник	7	449.899999999999977
630	Крылова О.В.	География. 8 класс. Атлас для проектных работ (Крылова)	8	155.97999999999999
473	Афанасьева О.В., Михеева И.В., Баранова К.М., Ваулина Ю.Е., Мичугина С.В., Петрова Н.Ю.	Афанасьева, Михеева. Английский язык как второй иностранный. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	187.990000000000009
474	Афанасьева О.В., Михеева И.В., Баранова К.М., Ваулина Ю.Е., Мичугина С.В., Петрова Н.Ю.	Афанасьева, Михеева. Английский язык как второй иностранный. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	187.990000000000009
475	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 8 класс. Учебник	8	456.939999999999998
476	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	187.990000000000009
477	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	187.990000000000009
478	Афанасьева О.В.,Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 9 класс. Учебник	9	456.939999999999998
479	Афанасьева О.В., Михеева И.В.	Афанасьева, Михеева. Английский язык как второй иностранный. 9 класс. Рабочая тетрадь	9	215.930000000000007
480	\N	\N	\N	\N
481	Шацких В.Н.,Кузнецова О.В.,Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 5 класс. Учебник	5	555.940000000000055
482	Шацких В.Н., Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 5 класс. С контрольными работами и текстами для чтения. Рабочая тетрадь	5	180.949999999999989
483	Шацких В.Н.,Бабина Л.В.,Денискина Л.Ю. и др.	Шацких. Французский язык как второй иностранный. 6 класс. Учебник	6	555.940000000000055
484	Шацких В.Н., Денискина Л.Ю., Бабина Л.В., Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 6 класс. С контрольными работами и текстами для чтения. Рабочая тетрадь	6	180.949999999999989
485	Шацких В.Н.,Бабина Л.В.,Денискина Л.Ю.,Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 7 класс. Учебник	7	555.940000000000055
486	Шацких В.Н., Денискина Л.Ю., Бабина Л.В., Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 7 класс. С контрольными работами и текстами для чтения. Рабочая тетрадь	7	180.949999999999989
487	Шацких В.Н.,Бабина Л.В.,Денискина Л.Ю.,Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 8 класс. Учебник	8	555.940000000000055
488	Шацких В.Н., Денискина Л.Ю., Бабина Л.В., Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 8 класс. С контрольными работами и текстами для чтения. Рабочая тетрадь	8	180.949999999999989
489	Шацких В.Н.,Бабина Л.В.,Денискина Л.Ю.,Кузнецова И.Н.	Шацких. Французский язык как второй иностранный. 9 класс. Учебник	9	555.940000000000055
490	\N	\N	\N	\N
491	\N	\N	\N	\N
492	Данилевский И.Н.,Андреев И.Л.,Юрасов М.К. и др.	Андреев, Волобуев. История России. 6 класс. С древнейших времен до начала XVI века. Учебник (Данилевский)	6	339.899999999999977
493	Симонова Е.В., Клоков В.А.	Андреев. История России. 6 класс. Рабочая тетрадь (Клоков, Симонова)	6	134.969999999999999
494	\N	Атлас по истории России с др.вр.до XVIв. 6кл. (НОВЫЙ истор.-культ. стандарт) ФГОС	6	110
495	\N	Контурные карты История России с др.вр.до XVIвека.6кл. (НОВЫЙ истор. -культ. стандарт) ФГОС	6	44
496	\N	История России с древнейших времён до XVI в. 6 кл. Атлас с контурными картами (ФГОС)	6	111.980000000000004
497	Саплина Е.В., Агафонов С.В.	Андреев. История России. 6 класс. Тематические контрольные работы (Саплина, Агафонов)	6	111.980000000000004
498	Федоров И.Н., Федорова С.А.	Андреев. История России. 6 класс. Технологические карты уроков (Федоров, Федорова)	6	110.989999999999995
499	Андреев И.Л.,Данилевский И.Н.,Федоров И.Н. и др.	Андреев, Волобуев. История России. 7 класс. XVI - конец XVII века. Учебник (Данилевский)	7	339.899999999999977
500	Симонова Е.В., Клоков В.А.	Андреев. История России. 7 класс. Рабочая тетрадь (Симонова, Клоков)	7	134.969999999999999
501	\N	Атлас по истории России XVI- конец XVII вв.7кл. (НОВЫЙ истор. -культ. стандарт) ФГОС	7	110
502	\N	Контурные карты История России. XVI- конец XVII века. 7 класс (НОВЫЙ истор. -культ. стандарт) ФГОС	7	44
503	\N	История России  XVII-XVIII вв. 7 кл. Атлас с контурными картами (ФГОС)	7	111.980000000000004
504	Саплина Е.В., Гонтарь С.А.	Андреев. История России. 7 класс. Тематические контрольные работы (Саплина, Гонтарь)	7	111.980000000000004
505	Андреев И.Л.,Ляшенко Л.М.,Амосова И.В. и др.	Андреев, Волобуев. История России. 8 класс. Конец XVII-XVIII века. Учебник (Ляшенко)	8	339.899999999999977
506	Симонова Е.В., Клоков В.А.	Андреев, Амосова. История России. 8 класс. Рабочая тетрадь (Симонова, Клоков)	8	134.969999999999999
507	\N	Атлас по истории России. Конец XVII-XVIII век.  8 класс.  (НОВЫЙ истор. -культ. стандарт) ФГОС	8	110
508	\N	Контурные карты История России конец XVII-XVIII век. 8 кл. (НОВЫЙ истор. -культ. стандарт) ФГОС	8	44
509	\N	История России XIX в. 8 кл. Атлас с контурными картами (ФГОС)	8	111.980000000000004
510	Саплина Е.В., Чиликин К.П.	Андреев, Амосова. История России. 8 класс. Тематические контрольные работы (Саплина, Чиликин)	8	111.980000000000004
511	Федоров И.Н., Федорова С.А., Амосова И.В.	Андреев, Амосова. История России. 8 класс. Технологические карты уроков	8	110.989999999999995
512	Ляшенко Л.М.,Волобуев О.В.,Симонова Е.В.,Клоков В.А.	Андреев, Волобуев. История России. 9 класс. XIX - начало XX века. Учебник (Ляшенко)	9	339.899999999999977
513	Симонова Е.В., Клоков В.А.	Андреев, Ляшенко. История России. 9 класс. Рабочая тетрадь (Симонова, Клоков)	9	134.969999999999999
514	\N	Атлас по истории России.  XIX -начало XX века. 9 кл.  (НОВЫЙ истор. -культ. стандарт) ФГОС	9	110
515	\N	Контурные карты История России XIX -начало XX века 9 кл.  (НОВЫЙ истор. -культ. стандарт) ФГОС	9	44
516	\N	История России XX-начало XXI в. 9 кл.  Атлас с контурными картами (ФГОС)	9	111.980000000000004
517	Саплина Е.В., Чиликин К.П.	Андреев, Ляшенко. История России. 9 класс. Тематические контрольные работы (Саплина, Чиликин)	9	111.980000000000004
518	\N	\N	\N	\N
519	\N	Атлас по истории Древнего Мира.5кл.	5	104.939999999999998
520	\N	Контурные карты История Древнего Мира.5кл. (ФГОС) 24 стр.	5	42.8999999999999986
521	\N	Атлас по истории Средних веков.6кл.	6	104.939999999999998
522	\N	Контурные карты История Средних веков.6кл. (ФГОС, 24 стр.)	6	42.8999999999999986
523	\N	Атлас.История Нового времени. XVI-XVIIIвв.7кл.	7	104.939999999999998
524	\N	Контурные карты История нового времени.XVI-XVIIIвв.7кл.	7	42.8999999999999986
525	\N	Атлас.История Нового времени.XIXв.8кл.	8	104.939999999999998
526	\N	Контурные карты История нового времени.XIXв.8кл.	8	42.8999999999999986
527	\N	Атлас Новейшая история.ХХ-начало ХХIвека.9кл. (40 стр)ФГОС	9	104.939999999999998
528	\N	Контурные карты Новейшая история XXв.-нач.XXIв.9кл.	9	42.8999999999999986
529	\N	Атлас. История древнего мира. 5 класс. (Историко-культурный стандарт)	5	102.959999999999994
530	\N	Контурные карты. История древнего мира. 5 класс. (Историко-культурный стандарт)	5	42.8999999999999986
531	\N	Атлас. История средних веков. 6 класс. (Историко-культурный стандарт)	6	102.959999999999994
532	\N	Контурные карты. История средних веков. 6 класс. (Историко-культурный стандарт)	6	42.8999999999999986
533	\N	Атлас. История нового времени. Конец XV -XVII вв. 7 класс. (Историко-культурный стандарт)	7	102.959999999999994
534	\N	Контурные карты. История нового времени. Конец XV - XVII вв. 7 класс. (Историко-культурный стандарт)	7	42.8999999999999986
535	\N	Атлас. История нового времени. XVIII в. 8 класс. (Историко-культурный стандарт)	8	102.959999999999994
536	\N	Контурные карты. История нового времени. 8 класс. (Историко-культурный стандарт)	8	42.8999999999999986
537	\N	Атлас. История нового времени. XIX - начало XX в. 9 класс. (Историко-культурный стандарт)	9	102.959999999999994
538	\N	Контурные карты. История нового времени. XIX - начало XX в. 9 класс. (Историко-культурный стандарт)	9	42.8999999999999986
539	Колпаков С.В., Селунская Н.А.	Колпаков. Всеобщая история. 5 класс. История древнего мира. Учебное пособие	5	413.930000000000007
540	Абрамов А.В., Абрамова Ю.А.	Колпаков. Всеобщая история. 5 класс. История древнего мира. Рабочая тетрадь с к/к (Абрамов, Абрамова)	5	151.909999999999997
541	Пономарев М.В., Абрамов А.В., Тырин С.В.	Пономарев. Всеобщая история. 6 класс. История средних веков. Учебное пособие	6	413.930000000000007
542	Колпаков С.В., Пономарев М.В.	Пономарев. Всеобщая история. 6 класс. История древнего мира. Рабочая тетрадь с к/к	6	151.909999999999997
543	Ведюшкин В.А., Бурин С.Н.	Ведюшкин, Бурин. Всеобщая история. 7 класс. История нового времени. Учебное пособие	7	413.930000000000007
544	Абдулаев Э.Н.	История в схемах и таблицах. 7 класс. Дидактические материалы (Агафонов)	7	99
545	Волкова Е.В., Пономарев М.В.	Ведюшкин, Бурин. Всеобщая история. 7 класс. История древнего мира. Рабочая тетрадь с к/к (Волкова, Пономарев)	7	151.909999999999997
546	Бурин С.Н., Митрофанов А.А., Пономарев М.В.	Ведюшкин, Митрофанов, Пономарев. Всеобщая история. 8 класс. История нового времени. Учебное пособие	8	413.930000000000007
548	Волкова Е.В., Пономарев М.В.	Ведюшкин, Митрофанов, Пономарев. Всеобщая история. 8 класс. История древнего мира. Рабочая тетрадь с к/к (Волкова, Пономарев)	8	151.909999999999997
549	Шубин А.В.	Шубин. Всеобщая история. 9 класс. Новейшая история. Учебное пособие	9	413.930000000000007
550	Пономарев М.В.	Шубин. Всеобщая история. 9 класс. Новейшая история. Рабочая тетрадь с к/к (Пономарев)	9	151.909999999999997
551	\N	\N	\N	\N
552	Кравченко А.И.,Агафонов С.В.	Кравченко. Обществознание. 6 класс. Учебник	6	359.920000000000016
553	Кравченко А.И.,Певцова Е.А.,Агафонов С.В.	Кравченко. Обществознание. 7 класс. Учебник	7	359.920000000000016
554	Кравченко А.И.,Хасбулатов Р.И.,Агафонов С.В.	Кравченко. Обществознание. 8 класс. Учебник	8	359.920000000000016
555	Кравченко А.И.,Певцова Е.А.,Агафонов С.В.	Кравченко. Обществознание. 9 класс. Учебник	9	359.920000000000016
556	Сорвин К.В.,Ростовцева Н.В.,Федоров О.Д.	Сорвин. Обществознание. 6 класс. Учебник	6	369.930000000000007
557	Сорвин К.В.,Ростовцева Н.В.,Федоров О.Д.	Сорвин. Обществознание. 7 класс. Учебник	7	369.930000000000007
558	Сорвин К.В.,Давыдова Е.А.,Кулакова Т.В.,Федоров О.Д.	Сорвин. Обществознание. 8 класс. Учебник	8	369.930000000000007
559	Сорвин К.В.,Богачев М.И.,Федоров О.Д.	Сорвин. Обществознание. 9 класс. Учебник	9	369.930000000000007
560	Болотина Т.В.	Никитин. Обществознание. 5 класс. Рабочая тетрадь (Болотина, Мишина)	5	117.920000000000002
561	Федорова С.А.	Никитин. Обществознание. 6 класс. Рабочая тетрадь (Федорова)	6	117.920000000000002
562	Федорова С.А.	Никитин. Обществознание. 7 класс. Рабочая тетрадь (Федорова)	7	117.920000000000002
563	Федорова С.А.	Никитин. Обществознание. 8 класс. Рабочая тетрадь (Федорова)	8	117.920000000000002
564	Федорова С.А.	Никитин. Обществознание. 9 класс. Рабочая тетрадь (Федорова)	9	117.920000000000002
565	\N	\N	\N	\N
566	Максимов Н.А., Герасимова Т.П., Барабанов В.В.	Классическая география. Максимов, Герасимова. 5 класс. Учебное пособие	5	399.95999999999998
567	Курчина С.В., Сонин Н.И.	Классическая линия. Баринова, Плешаков. География. 5 класс. Начальный курс. Рабочая тетрадь с тест. заданиями ЕГЭ (Сивоглазов, Курчина)	5	156.969999999999999
568	Герасимова Т.П., Неклюкова Н.П.	Классическая география. Герасимова, Неклюкова. 6 класс. Учебное пособие	6	399.95999999999998
569	Карташева Т.А., Курчина С.В.	Классическая линия. Герасимова. География. 6 класс. Начальный курс. Рабочая тетрадь с тест. заданиями ЕГЭ (Карташева, Курчина)	6	156.969999999999999
570	Коринская В.А., Душина И.В., Щенев В.А.	Классическая география. Коринская, Душина. 7 класс. Учебное пособие	7	399.95999999999998
571	Душина И.В.	Классическая линия. Коринская. География. 7 класс. География материков и океанов. Рабочая тетрадь с тест. заданиями ЕГЭ (Душина)	7	156.969999999999999
572	Сухов В.П., Низовцев В.А., Алексеев А.И.	Классическая география. Сухов, Низовцев. 8 класс. Учебное пособие	8	399.95999999999998
573	Баринова И.И.	Классическая линия. Баринова. География. 8 класс. География России. Природа. Рабочая тетрадь с тест. заданиями ЕГЭ	8	156.969999999999999
574	Алексеев А.И., Николина В.В., Низовцев В.А.	Классическая география. Алексеев, Николина. 9 класс. Учебное пособие	9	399.95999999999998
575	Дронов В.П.	Классическая линия. Дронов, Ром. География. 9 класс. География России. Население и хозяйство. Рабочая тетрадь с тест. заданиями ЕГЭ	9	156.969999999999999
576	Климанова О.А.,Климанов В.В.,Ким Э.В. и др.;под ред. Климановой О.А.	Климанова. География. 5-6 классы. Землеведение. Учебник	5-6	409.970000000000027
577	Румянцев А.В., Ким Э.В., Климанова О.А.	Климанова. География. 5 класс. Землеведение. Рабочая тетрадь с тест. заданиями ЕГЭ	5	156.969999999999999
578	Румянцев А.В., Ким Э.В., Климанова О.А.	Климанова. География. 6 класс. Землеведение. Рабочая тетрадь с тест. заданиями ЕГЭ	6	156.969999999999999
579	Климанова О.А.,Климанов В.В.,Ким Э.В.,Сиротин В.И.;под ред. Климановой О.А.	Климанова. География. 7 класс. Страноведение. Учебник	7	409.970000000000027
580	Румянцев А.В., Ким Э.В., Климанова О.А.	Климанова. География. 7 класс. Страноведение. Рабочая тетрадь с тест. заданиями ЕГЭ	7	156.969999999999999
581	Алексеев А.И., Низовцев В.А., Ким Э.В. и др.; под ред. Алексеева А.И.	Алексеев. География. 8 класс. География России. Природа и население. Учебник	8	409.970000000000027
582	Ким Э.В., Марченко Н.А., Низовцев В.А.	Алексеев. География. 8 класс. География России. Природа и население. Рабочая тетрадь с тест. заданиями ЕГЭ (Ким)	8	156.969999999999999
631	Крылова О.В.	География. 9 класс. Атлас для проектных работ (Крылова)	9	155.97999999999999
583	Алексеев А.И.,Низовцев В.А.,Ким Э.В. и др.;под ред. Алексеева А.И.	Алексеев. География. 9 класс. География России. Хозяйство и географические районы. Учебник	9	409.970000000000027
584	Ким Э.В., Марченко Н.А., Низовцев В.А.	Алексеев. География. 9 класс. География России. Хозяйство и географические районы. Рабочая тетрадь с тест. заданиями ЕГЭ (Ким, Марченко, Низовцев)	9	156.969999999999999
585	Дронов В.П., Савельева Л.Е.	Дронов. География. 5-6 классы. Учебное пособие	5-6	409.970000000000027
586	Дронов В.П., Савельева Л.Е.	Дронов. География. 5 класс. Землеведение. Рабочая тетрадь с тест. заданиями ЕГЭ	5	154
587	Дронов В.П., Савельева Л.Е.	Дронов. География. 6 класс. Землеведение. Рабочая тетрадь с тест. заданиями ЕГЭ	6	154
588	Душина И.В., Коринская В.А., Щенев В.А.	Дронов. География. 7 класс. Учебное пособие (Душина, Коринская, Щенев)	7	409.970000000000027
589	Душина И.В.	Дронов. География. 7 класс. Материки, океаны, народы и страны. Рабочая тетрадь с тест. заданиями ЕГЭ (Душина)	7	154
590	Баринова И.И., Дронов В.П., Ром В.Я.	Дронов. География. 8 класс. Учебное пособие	8	409.970000000000027
591	Баринова И.И., Дронов В.П.	Дронов. География. 8 класс. География России. Природа. Население. Хозяйство. Рабочая тетрадь с тест. заданиями ЕГЭ	8	154
592	Дронов В.П., Баринова И.И., Ром В.Я.	Дронов. География. 9 класс. Учебное пособие	9	409.970000000000027
593	Баринова И.И., Дронов В.П.	Дронов. География. 9 класс. География России. Хозяйство и географические районы. Рабочая тетрадь с тест. заданиями ЕГЭ	9	154
594	Сиротин В.И.	Сиротин. География. 5-6 классы. Рабочая тетрадь с к/к и заданиями для подготовки к ГИА и ЕГЭ	5-6	121.989999999999995
595	Сиротин В.И.	Сиротин. География. 7 класс. Рабочая тетрадь с к/к и заданиями для подготовки к ГИА и ЕГЭ	7	121.989999999999995
596	Сиротин В.И.	Сиротин. География. 8 класс. Рабочая тетрадь с к/к и заданиями для подготовки к ГИА и ЕГЭ	8	121.989999999999995
597	Сиротин В.И.	Сиротин. География. 9 класс. Рабочая тетрадь с к/к и заданиями для подготовки к ГИА и ЕГЭ	9	121.989999999999995
598	Сиротин В.И., Курчина С.В.	Сиротин. География. 5 класс. Практикум. Рабочая тетрадь	5	129.909999999999997
599	Сиротин В.И.	Сиротин. География. 6 класс. Практикум. Рабочая тетрадь	6	129.909999999999997
600	Дюкова С.Е.	География. 5-6 классы. Тематический и итоговый контроль (Дюкова)	5-6	119.900000000000006
601	Дюкова С.Е.	География. 7 класс. Тематический и итоговый контроль (Дюкова)	7	119.900000000000006
602	\N	\N	\N	\N
603	\N	Атлас. 5кл. География. (РГО)	5	104.939999999999998
604	\N	Контурные карты.География. 5 кл. (РГО)	5	46.9699999999999989
605	\N	Атлас. 6кл. География. (РГО)	6	104.939999999999998
606	\N	Контурные карты.География. 6 кл. (РГО)	6	46.9699999999999989
607	\N	Атлас. 7кл. География. (РГО)	7	104.939999999999998
608	\N	Контурные карты.География. 7 кл. (РГО)	7	46.9699999999999989
609	\N	Атлас. 8кл. География. (РГО)	8	104.939999999999998
610	\N	Контурные карты.География. 8 кл. (РГО)	8	46.9699999999999989
611	\N	Атлас. 9кл. География. (РГО)	9	104.939999999999998
612	\N	Контурные карты.География. 9 кл. (РГО)	9	46.9699999999999989
613	Приваловский А.Н., Юрьева М.В.	Ориентирование на местности. Атлас. 5-11 кл.	5-11	179.960000000000008
614	\N	Атлас. 10-11 кл.  География. (РГО) Экономическая и социальная география мира	10-11	104.939999999999998
615	\N	Контурные карты.География. 10-11 кл. (РГО)	10-11	46.9699999999999989
616	\N	География. 5 класс. Атлас. (Учись быть первым!) (ДИК) НОВЫЙ. ФГОС	5	117.920000000000002
617	\N	География.5кл.Контурные карты.(Учись быть первым!)(ДИК) (Новые)	5	49.9399999999999977
618	\N	География. 6 класс. Атлас. (Учись быть первым!)(ДИК) НОВЫЙ. ФГОС 	6	117.920000000000002
619	\N	География.6кл.Контурные карты.(Учись быть первым!)(ДИК) (Новые)	6	49.9399999999999977
620	\N	География. 7 класс. Атлас. (Учись быть первым!)(ДИК) НОВЫЙ. ФГОС	7	117.920000000000002
621	\N	География.7кл.Контурные карты.(Учись быть первым!)(ДИК) (Новые)	7	49.9399999999999977
622	\N	География. 8 класс. Атлас. (Учись быть первым!)(ДИК) НОВЫЙ. ФГОС	8	117.920000000000002
623	\N	География.8 кл.Контурные карты.(Учись быть первым!)(ДИК) Новые	8	49.9399999999999977
624	\N	География. 9 класс. Атлас. (Учись быть первым!)(ДИК) НОВЫЙ. ФГОС	9	117.920000000000002
625	\N	География.9 кл.Контурные карты.(Учись быть первым!)(ДИК) Новые	9	49.9399999999999977
626	\N	География. 10-11 кл.. Атлас. (Учись быть первым!)(ДИК) НОВЫЙ. ФГОС	 10-11	117.920000000000002
627	\N	География 10-11 кл.Контурные карты.(Учись быть первым!)(ДИК) (Новые)	 10-11	49.9399999999999977
628	Крылова О.В.	География. 5-6 классы. Атлас для проектных работ (Крылова)	5-6	155.97999999999999
632	Холина В.Н., Наумов А.С., Родионова И.А.	Холина. География. 10-11 классы. Атлас (углубленный)	10-11	240.900000000000006
633	\N	\N	\N	\N
634	Брадис В.М.	Брадис. Четырехзначные математические таблицы	7-9	89.980000000000004
635	\N	\N	\N	\N
636	Муравин Г.К., Муравина О.В.	Муравин. Математика. 5 класс. Учебное пособие	5	392.920000000000016
637	Муравин Г.К.,  Муравина О. В.	Муравин. Математика. 5 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 1	5	111.980000000000004
638	Муравин Г.К., Муравина О.В.	Муравин. Математика. 5 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 2	5	111.980000000000004
639	Муравин Г.К., Муравина О.В.	Муравин. Математика. 5-6 классы. Дидактические материалы	5-6	145.969999999999999
640	Муравин Г.К., Муравина О.В.	Муравин. Математика. 5 класс. Подготовка к всероссийским проверочным работам (ВПР)	5	111.980000000000004
641	Муравин Г.К., Муравина О.В.	Муравин. Математика. 6 класс. Учебное пособие	6	392.920000000000016
642	Муравин Г.К., Муравина О.В.	Муравин. Математика. 6 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 1	6	111.980000000000004
643	Муравин Г.К., Муравина О.В.	Муравин. Математика. 6 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 2	6	111.980000000000004
644	Муравина О.В., Муравин Г.К.	Муравин. Математика. 6 класс. Подготовка к всероссийским проверочным работам (ВПР)	6	111.980000000000004
645	Шарыгин И.Ф.,Ерганжиева Л.Н.	Шарыгин. Наглядная геометрия. 5-6 классы. Учебник	5-6	418.990000000000009
646	\N	\N	\N	\N
647	Муравин Г.К., Муравин К.С., Муравина О.В.	Муравин. Алгебра. 7 класс. Учебное пособие	7	400.949999999999989
648	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 7 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 1	7	113.959999999999994
649	Муравин Г.К.,  Муравина О. В.	Муравин. Алгебра. 7 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 2	7	113.959999999999994
650	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 8 класс. Учебное пособие	8	400.949999999999989
651	Муравин Г.К.,  Муравина О.В.	Муравин. Алгебра. 8 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 1	8	113.959999999999994
652	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 8 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 2	8	113.959999999999994
653	Муравин Г.К., Муравин К.С., Муравина О.В.	Муравин. Алгебра. 9 класс. Учебное пособие	9	400.949999999999989
654	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 9 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 1	9	113.959999999999994
655	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 9 класс. Рабочая тетрадь с тест. заданиями ЕГЭ. В 2 ч. Часть 2	9	113.959999999999994
656	\N	\N	\N	\N
657	Шарыгин И.Ф	Шарыгин. Геометрия. 7-9 классы. Учебник	7-9	383.899999999999977
658	\N	\N	\N	\N
659	Кушниренко А.Г.,Леонов А.Г.,Зайдельман Я.Н.,Тарасова В.В.	Кушниренко. Информатика. 7 класс. Учебник (Леонов)	7	449.899999999999977
660	Кушниренко А.Г.,Леонов А.Г.,Зайдельман Я.Н.,Тарасова В.В.	Кушниренко. Информатика. 8 класс. Учебник (Леонов)	8	489.939999999999998
661	Кушниренко А.Г.,Леонов А.Г.,Зайдельман Я.Н.,Тарасова В.В.	Кушниренко. Информатика. 9 класс. Учебник (Леонов)	9	489.939999999999998
662	Быкадоров Ю.А.	Быкадоров. Информатика. 8 класс. Учебное пособие	8	392.920000000000016
663	Быкадоров Ю.А.	Быкадоров. Информатика. 9 класс. Учебное пособие	9	392.920000000000016
664	\N	\N	\N	\N
665	\N	\N	\N	\N
666	Перышкин А.В.	Перышкин. Физика. 7 класс. Учебник	7	445.939999999999998
667	Филонович Н.В., Восканян А.Г.	Перышкин. Физика. 7 класс. Тетрадь для лабораторных работ (Филонович, Восканян)	7	112.969999999999999
668	Ханнанов Н.К., Ханнанова Т.А.	Перышкин. Физика. 7 класс. Рабочая тетрадь (Ханнанов)	7	137.939999999999998
669	Марон А.Е., Марон Е.А.	Перышкин. Физика. 7 класс. Дидактические материалы (Марон)	7	126.939999999999998
670	Марон А. Е., Марон Е. А., Позойский С. В.	Перышкин. Физика. 7 класс. Сборник вопросов и задач (Марон, Позойский)	7	124.959999999999994
671	Касьянов В.А., Дмитриева В.Ф.	Перышкин. Физика. 7 класс. Рабочая тетрадь (Касьянов, Дмитриева)	7	110
672	Шахматова В.В.	Перышкин. Физика. 7 класс. Подготовка к всероссийским проверочным работам (ВПР) (Шахматова)	7	84.9200000000000017
673	Марон А.Е., Марон Е.А.	Перышкин. Физика. 7 класс. Самостоятельные и контрольные работы (Марон)	7	133.97999999999999
674	Ханнанов Н.К., Ханнанова Т.А.	Перышкин. Физика. 7 класс. Тесты (Ханнанов)	7	139.919999999999987
675	Шахматова В.В., Шефер О.Р.	Перышкин. Физика. 7 класс. Диагностические работы (Шахматова, Шефер)	7	154
676	Никифоров Г.Г.	Изучение физики в 7-9 классах на основе научного метода познания. 7 класс. Методические рекомендации для учителя	7	184.909999999999997
677	Перышкин А.В.	Перышкин. Физика. 8 класс. Учебник	8	445.939999999999998
678	Филонович Н.В., Восканян А.Г.	Перышкин. Физика. 8 класс. Тетрадь для лабораторных работ (Филонович, Восканян)	8	112.969999999999999
679	Марон А.Е., Марон Е.А.	Перышкин. Физика. 8 класс. Дидактические материалы (Марон)	8	126.939999999999998
680	Марон А.Е., Марон Е.А., Позойский С.В.	Перышкин. Физика. 8 класс. Сборник вопросов и задач (Марон, Позойский)	8	124.959999999999994
681	Ханнанова Т.А.	Перышкин. Физика. 8 класс. Рабочая тетрадь (Ханнанова)	8	137.939999999999998
682	Касьянов В.А., Дмитриева В.Ф.	Перышкин. Физика. 8 класс. Рабочая тетрадь (Касьянов, Дмитриева)	8	110
683	Марон А.Е., Марон Е.А.	Перышкин. Физика. 8 класс. Самостоятельные и контрольные работы (Марон)	8	133.97999999999999
684	Филонович Н.В., Восканян А.Г.	Перышкин. Физика. 8 класс. Диагностические работы (Шахматова, Шефер)	8	154
685	Слепнева Н.И.	Перышкин. Физика. 8 класс. Тесты (Слепнева)	8	139.919999999999987
686	Шахматова В.В., Шефер О.Р.	Перышкин. Физика. 8 класс. Подготовка к всероссийским проверочным работам (ВПР) (Шахматова, Шефер)	8	84.9200000000000017
687	Перышкин А.В.,Гутник Е.М.	Перышкин. Физика. 9 класс. Учебник	9	445.939999999999998
688	Филонович Н.В., Восканян А.Г.	Перышкин. Физика. 9 класс. Тетрадь для лабораторных работ (Филонович, Восканян)	9	112.969999999999999
689	Марон А. Е., Марон Е. А., Позойский С. В.	Перышкин. Физика. 9 класс. Сборник вопросов и задач (Марон, Позойский)	9	124.959999999999994
690	Марон А.Е., Марон Е.А.	Перышкин. Физика. 9 класс. Дидактические материалы (Марон)	9	126.939999999999998
691	Гутник Е.М., Власова И.Г.	Перышкин. Физика. 9 класс. Рабочая тетрадь (Гутник, Власова)	9	137.939999999999998
692	Марон А.Е., Марон Е.А.	Перышкин. Физика. 9 класс. Самостоятельные и контрольные работы (Марон)	9	133.97999999999999
693	Касьянов В.А., Дмитриева В.Ф.	Перышкин. Физика. 9 класс. Рабочая тетрадь (Касьянов, Дмитриева)	9	124.959999999999994
694	Слепнева Н.И.	Перышкин. Физика. 9 класс. Тесты (Слепнева)	9	139.919999999999987
695	Шахматова В.В.	Перышкин. Физика. 9 класс. Диагностические работы (Шахматова, Шефер)	9	154
696	Пурышева Н.С.,Важеевская Н.Е.	Пурышева. Физика. 7 класс. Учебник	7	454.95999999999998
697	Пурышева Н.С., Важеевская Н.Е.	Пурышева. Физика. 7 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	7	152.900000000000006
698	Пурышева Н.С.,Важеевская Н.Е.	Пурышева. Физика. 8 класс. Учебник	8	454.95999999999998
699	Пурышева Н.С., Важеевская Н.Е.	Пурышева. Физика. 8 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	8	152.900000000000006
700	Пурышева Н.С.,Важеевская Н.Е.,Чаругин В.М.	Пурышева. Физика. 9 класс. Учебник	9	454.95999999999998
701	Пурышева Н.С., Важеевская Н.Е., Чаругин В.М.	Пурышева. Физика. 9 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	9	152.900000000000006
702	Ливанов Д.В.	Ливанов. Физика. 9-11 классы. Знакомьтесь: наш мир. Физика всего на свете. Учебное пособие	9-11	449.899999999999977
703	\N	\N	\N	\N
704	Пасечник В.В.	Биология. Линейный курс. Пасечник. 5 класс. Введение в биологию. Учебник	5	409.970000000000027
705	Пасечник В.В.	Пасечник. Биология. 5 класс. Бактерии, грибы, растения. Учебное пособие	5	419.980000000000018
706	Пасечник В.В.	Пасечник. Биология. 5 класс. Бактерии, грибы, растения. Рабочая тетрадь с тест. заданиями ЕГЭ	5	159.939999999999998
707	Пасечник В.В.	Пасечник. Биология. 5 класс. Бактерии, грибы, растения. Диагностические работы	5	113.959999999999994
708	Пасечник В.В.	Биология. Линейный курс. Пасечник. 6 класс. Покрытосеменные растения: строение и жизнедеятельность. Учебник	6	409.970000000000027
709	Пасечник В.В.	Пасечник. Биология. 6 класс. Многообразие покрытосеменных растений. Учебное пособие	6	419.980000000000018
710	Пасечник В.В.	Пасечник. Биология. 6 класс. Многообразие покрытосеменных растений. Рабочая тетрадь с тест. заданиями ЕГЭ	6	159.939999999999998
711	Пасечник В.В.	Пасечник. Биология. 6 класс. Многообразие покрытосеменных растений. Диагностические работы	6	113.959999999999994
712	Пасечник В.В.	Биология. Линейный курс. Пасечник. 7 класс. Многообразие растений. Бактерии. Грибы. Учебник	7	409.970000000000027
713	Латюшин В.В., Шапкин В.А.	Латюшин. Биология. 7 класс. Животные. Учебное пособие	7	419.980000000000018
714	Латюшин В.В., Ламехова Е.А.	Латюшин. Биология. 7 класс. Животные. Рабочая тетрадь с тест. заданиями ЕГЭ	7	159.939999999999998
715	 Ламехова Е.А., Латюшин В.В.	Латюшин. Биология. 7 класс. Животные. Диагностические работы	7	113.959999999999994
716	Латюшин В.В.,Шапкин В.А.,Озерова Ж.А.	Биология. Линейный курс. Пасечник. 8 класс. Животные. Учебник (Латюшин, Шапкин)	8	429.990000000000009
717	Колесов Д.В., Маш Р.Д., Беляев И.Н.	Колесов. Биология. 8 класс. Человек. Рабочая тетрадь с тест. заданиями ЕГЭ	8	159.939999999999998
718	Колесов Д.В., Маш Р.Д., Сивоглазов В.И.	Колесов. Биология. 8 класс. Человек. Учебное пособие	8	419.980000000000018
719	Агафонова И.Б., Сивоглазов В.И.	Колесов. Биология. 8 класс. Человек. Диагностические работы (Агафонова, Сивоглазов)	8	113.959999999999994
720	Колесов Д.В.,Маш Р.Д.,Беляев И.Н.	Биология. Линейный курс. Пасечник. 9 класс. Человек. Учебник (Колесов, Маш)	9	429.990000000000009
721	Каменский А.А., Криксунов Е.А., Пасечник В.В.	Каменский. Биология. 9 класс. Введение в общую биологию. Учебное пособие	9	419.980000000000018
722	Пасечник В.В., Швецов Г.Г.	Каменский. Биология. 9 класс. Введение в общую биологию. Рабочая тетрадь с тест. заданиями ЕГЭ (Пасечник, Швецов)	9	159.939999999999998
723	Пасечник В.В., Швецов Г.Г.	Каменский. Биология. 9 класс. Введение в общую биологию. Диагностические работы (Пасечник, Швецов)	9	113.959999999999994
724	Сивоглазов В.И.,Плешаков А.А.	Сивоглазов. Биология. 5 класс. Учебник	5	414.920000000000016
725	Сивоглазов В.И.	Сивоглазов. Биология. 6 класс. Учебник	6	414.920000000000016
726	Сивоглазов В.И., Сапин М.Р., Каменский А.А.	Сивоглазов. Биология. 7 класс. Учебник	7	414.920000000000016
727	Сивоглазов В.И., Сапин М.Р., Каменский А.А.	Сивоглазов. Биология. 8 класс. Учебник	8	414.920000000000016
728	Захаров В.Б., Сивоглазов В.И., Мамонтов С.Г., Агафонов И.Б.	Сивоглазов. Биология. 9 класс. Учебник	9	414.920000000000016
729	Плешаков А.А., Сонин Н.И.	Биология. Линейный курс (синяя). Плешаков, Сонин. 5 класс. Введение в биологию. Учебное пособие	5	411.949999999999989
730	Сонин Н.И.	Биология. Концентрический курс (красная). Сонин, Плешаков. 5 класс. Введение в биологию. Рабочая тетрадь с тест. заданиями ЕГЭ	5	165
731	Сонин Н.И.	Биология. Линейный курс (синяя). Плешаков, Сонин. 5 класс. Введение в биологию. Рабочая тетрадь с тест. заданиями ЕГЭ (Сивоглазов)	5	158.949999999999989
732	Сонин Н.И., Пшеничная Л.Ю.	Биология. Концентрический курс (красная). Сонин, Плешаков. 5 класс. Введение в биологию. Альбом проектов	5	174.900000000000006
733	Сонин Н.И., Пшеничная Л.Ю.	Биология. Линейный курс (синяя). Плешаков, Сонин. 5 класс. Введение в биологию. Альбом проектов	5	174.900000000000006
734	Кириленкова В.Н., Павлова О.В., Сивоглазов В.И.	Биология. Линейный курс (синяя). Плешаков, Сонин. 5 класс. Введение в биологию. Тетрадь для оценки качества знаний (Кириленкова, Павлова, Сивоглазов)	5	134.969999999999999
735	Сонин Н.И., Сонина В.И.	Биология. Линейный курс (синяя). Сонин. 6 класс. Живой организм. Учебное пособие	6	411.949999999999989
736	Сонин Н.И.	Биология. Концентрический курс (красная). Сонин. 6 класс. Живой организм. Рабочая тетрадь с тест. заданиями ЕГЭ	6	165
737	Сонин Н.И.	Биология. Линейный курс (синяя). Сонин. 6 класс. Живой организм. Рабочая тетрадь с тест. заданиями ЕГЭ (Сивоглазов)	6	158.949999999999989
738	Сонин Н.И., Агафонова И.Б.	Биология. Линейный курс (синяя). Сонин. 6 класс. Живой организм. Альбом проектов	6	177.97999999999999
739	Захаров В.Б., Сивоглазов В.И.	Биология. Линейный курс (синяя). Сонин, Захаров. 7 класс. Многообразие живых организмов. Бактерии, грибы, растения. Учебное пособие	7	411.949999999999989
740	Захаров В.Б., Сонин Н.И.	Биология. Концентрический курс (красная). Захаров, Сонин. 7 класс. Многообразие живых организмов. Рабочая тетрадь с тест. заданиями ЕГЭ	7	165
741	Захаров В.Б., Сонин Н.И.	Биология. Линейный курс (синяя). Сонин, Захаров. 7 класс. Многообразие живых организмов. Бактерии, грибы, растения. Рабочая тетрадь с тест. зад. ЕГЭ	7	158.949999999999989
742	Захаров В.Б., Сонин Н.И.	Биология. Линейный курс (синяя). Сонин. 8 класс. Многообразие живых организмов. Животные. Учебное пособие (Захаров, Сивоглазов)	8	414.920000000000016
743	Сонин Н.И., Агафонова И.Б.	Биология. Концентрический курс (красная). Сонин. 8 класс. Человек. Рабочая тетрадь с тест. заданиями ЕГЭ	8	165
744	Захаров В.Б., Сонин Н.И.	Биология. Линейный курс (синяя). Сонин. 8 класс. Многообразие живых организмов. Животные. Рабочая тетрадь с тест. заданиями ЕГЭ (Захаров, Сивоглазов)	8	158.949999999999989
867	Кузнецов А.П.,Ким Э.В.	Ким, Кузнецов. География. 10-11 классы. Учебник (базовый)	10-11	458.920000000000016
745	Ренева Н.Б., Сивоглазов В.И.	Биология. Концентрический курс (красная). Сонин. 8 класс. Человек. Методическое пособие (Ренева, Сивоглазов)	8	172.919999999999987
746	Сапин М.Р., Сонин Н.И.	Биология. Линейный курс (синяя). Сонин. 9 класс. Человек. Учебное пособие (Сапин, Сивоглазов)	9	414.920000000000016
747	Сонин Н.И., Агафонова И.Б.	Биология. Линейный курс (синяя). Сонин. 9 класс. Человек. Рабочая тетрадь с тест. заданиями ЕГЭ	9	158.949999999999989
748	Цибулевский А.Ю., Захаров В.Б., Сонин Н.И.	Биология. Концентрический курс (красная). Мамонтов, Захаров. 9 класс. Общие закономерности. Рабочая тетрадь с тест. заданиями ЕГЭ	9	165
749	Петрова О.Г., Сивоглазов В.И.	Биология. Концентрический курс (красная). Мамонтов, Захаров. 9 класс. Общие закономерности. Методическое пособие (Петрова, Сивоглазов)	9	172.919999999999987
750	\N	\N	\N	\N
751	Еремин В.В., Дроздов А.А., Лунин В.В.	Еремин, Лунин. Химия. 7 класс. Введение в предмет. Учебное пособие	7	388.95999999999998
752	Еремин В.В.,Кузьменко Н.Е.,Дроздов А.А. и др./Под ред. Лунина В.В.	Еремин, Лунин. Химия. 8 класс. Учебник	8	451.990000000000009
753	Еремин В.В., Дроздов А.А., Шипарёва Г.А.	Еремин, Лунин. Химия. 8 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	8	143.990000000000009
754	Еремин В.В., Дроздов А.А.	Еремин, Лунин. Химия. 8 класс. Контрольные и проверочные работы	8	137.939999999999998
755	Еремин В.В.,Кузьменко Н.Е.,Дроздов А.А. и др./Под ред. Лунина В.В.	Еремин, Лунин. Химия. 9 класс. Учебник	9	451.990000000000009
756	Еремин В.В., Дроздов А.А., Шипарёва Г.А.	Еремин, Лунин. Химия. 9 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	9	143.990000000000009
757	Еремин В.В., Дроздов А.А.	Еремин, Лунин. Химия. 9 класс. Контрольные и проверочные работы	9	137.939999999999998
758	Габриелян О.С., Остроумов И.Г., Ахлебинин А.К.	Габриелян. Химия. 7 класс. Вводный курс. Учебник	7	440.990000000000009
759	Габриелян О.С., Шипарева Г.А.	Габриелян. Химия. 7 класс. Вводный курс. Рабочая тетрадь	7	157.960000000000008
760	Габриелян О.С.	Габриелян. Химия. 8 класс. Учебное пособие	8	399.95999999999998
761	Габриелян О.С., Сладков С.А.	Габриелян. Химия. 8 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	8	129.909999999999997
762	Габриелян О.С., Купцова А.В.	Габриелян. Химия. 8 класс. Тетрадь для лабораторных опытов и практических работ	8	126.939999999999998
763	Габриелян О.С., Купцова А.В.	Габриелян. Химия. 8 класс. Тетрадь для оценки качества знаний	8	129.909999999999997
764	Габриелян О.С., Сладков С.А., Смирнова Т.В.	Габриелян. Химия в тестах, задачах, упражнениях. 8 класс	8	180.949999999999989
765	Габриелян О.С.	Габриелян. Химия. 9 класс. Учебное пособие	9	399.95999999999998
766	Габриелян О.С., Сладков С.А.	Габриелян. Химия. 9 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	9	129.909999999999997
767	Габриелян О.С., Купцова А.В.	Габриелян. Химия. 9 класс. Тетрадь для лабораторных опытов и практических работ	9	126.939999999999998
768	Габриелян О.С., Купцова А.В.	Габриелян. Химия. 9 класс. Тетрадь для оценки качества знаний	9	129.909999999999997
769	Ахметов М.А.	Габриелян. Химия. 9 класс. Контрольные и проверочные работы (Ахметов)	9	146.960000000000008
770	\N	\N	\N	\N
771	\N	\N	\N	\N
772	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 5 класс. Учебное пособие. В 2 ч. Часть 1	5	236.939999999999998
773	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 5 класс. Учебное пособие. В 2 ч. Часть 2	5	236.939999999999998
774	Ломов С.П., Игнатьев С.В., Кармазина М.В.	Ломов. ИЗО. 5 класс. Рабочий альбом	5	247.939999999999998
775	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 6 класс. Учебное пособие. В 2 ч. Часть 1	6	236.939999999999998
776	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 6 класс. Учебное пособие. В 2 ч. Часть 2	6	236.939999999999998
777	Ломов С.П., Игнатьев С.В., Кармазина М.В.	Ломов. ИЗО. 6 класс. Рабочий альбом	6	247.939999999999998
778	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 7 класс. Учебное пособие. В 2 ч. Часть 1	7	236.939999999999998
779	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 7 класс. Учебное пособие. В 2 ч. Часть 2	7	236.939999999999998
780	Ломов С.П., Игнатьев С.В., Кармазина М.В.	Ломов. ИЗО. 7 класс. Рабочий альбом	7	247.939999999999998
781	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 8 класс. Учебное пособие	8	349.910000000000025
782	Ломов С.П., Игнатьев С.Е., Кармазина М.В.	Ломов. ИЗО. 9 класс. Учебное пособие	9	349.910000000000025
783	\N	\N	\N	\N
784	Науменко Т.И.,Алеев В.В.	Науменко, Алеев. Музыка. 5 класс. Учебник	5	378.949999999999989
916	Рымкевич А.П.	Рымкевич. Физика. 10-11класс. Задачник	10-11	183.919999999999987
917	\N	\N	\N	\N
785	Науменко Т.И., Алеев В.В., Кичак Т.Н.	Науменко, Алеев. Музыка. 5 класс. Дневник музыкальных размышлений	5	162.909999999999997
786	Науменко Т.И.,Алеев В.В.	Науменко, Алеев. Музыка. 6 класс. Учебник	6	404.910000000000025
787	Науменко Т.И., Алеев В.В., Кичак Т.Н.	Науменко, Алеев. Музыка. 6 класс. Дневник музыкальных размышлений	6	162.909999999999997
788	Науменко Т.И.,Алеев В.В.	Науменко, Алеев. Музыка. 7 класс. Учебник	7	404.910000000000025
789	Науменко Т.И., Алеев В.В., Кичак Т.Н.	Науменко, Алеев. Музыка. 7 класс. Дневник музыкальных размышлений	7	162.909999999999997
790	Науменко Т.Н.,Алеев В.В.	Науменко, Алеев. Музыка. 8 класс. Учебник	8	404.910000000000025
791	Науменко Т.И., Алеев В.В., Кичак Т.Н.	Науменко, Алеев. Музыка. 8 класс. Дневник музыкальных размышлений	8	162.909999999999997
792	\N	\N	\N	\N
793	Глозман Е.С.,Кожина О.А.,Хотунцев Ю.Л. и др.	Глозман, Кожина. Технология. 5 класс. Учебник	5	389.949999999999989
794	Глозман Е.С.,Кожина О.А.,Хотунцев Ю.Л. и др.	Глозман, Кожина. Технология. 6 класс. Учебник	6	389.949999999999989
795	Глозман Е.С.,Кожина О.А.,Хотунцев Ю.Л. и др.	Глозман, Кожина. Технология. 7 класс. Учебник	7	389.949999999999989
796	Глозман Е.С.,Кожина О.А.,Хотунцев Ю.Л. и др.	Глозман, Кожина. Технология. 8-9 классы. Учебник	8-9	389.949999999999989
797	Казакевич В.М., Молева Г.А., Афонин И.В.	Казакевич. Технология. 5 класс. Технический труд. Учебное пособие	5	330
798	Казакевич В.М., Молева Г.А., Афонин И.В.	Казакевич. Технология. 6 класс. Технический труд. Учебное пособие	6	330
799	Казакевич В.М., Молева Г.А.	Казакевич. Технология. 7 класс. Технический труд. Учебное пособие	7	330
800	Казакевич В.М., Молева Г.А., Афонин И.В.	Казакевич. Технология. 8 класс. Технический труд. Учебное пособие	8	332.970000000000027
801	Кожина О.А., Маркуцкая С.Э.	Кожина. Технология. 5 класс. Обслуживающий труд. Учебное пособие	5	346.939999999999998
802	Кожина О.А., Кудакова Е.Н. и др.	Кожина. Технология. 5 класс. Обслуживающий труд. Рабочая тетрадь	5	163.900000000000006
803	Кожина О.А., Кудакова Е.Н., Маркуцкая С.Э.	Кожина. Технология. 6 класс. Обслуживающий труд. Учебное пособие	6	346.939999999999998
804	Кожина О.А., Кудакова Е.Н.	Кожина. Технология. 6 класс. Обслуживающий труд. Рабочая тетрадь	6	163.900000000000006
805	Кожина О.А., Кудакова Е.Н., Маркуцкая С.Э.	Кожина. Технология. 7 класс. Обслуживающий труд. Учебное пособие	7	346.939999999999998
806	Кожина О.А., Маркуцкая С.Э.	Кожина. Технология. 7 класс. Обслуживающий труд. Рабочая тетрадь	7	163.900000000000006
807	Кожина О.А., Маркуцкая С.Э., Рыкова Н.Б.	Кожина. Технология. 8 класс. Обслуживающий труд. Учебное пособие	8	349.910000000000025
808	Кожина О.А., Кудакова Е.Н., Маркуцкая С.Э.	Кожина. Технология. 8 класс. Обслуживающий труд. Рабочая тетрадь	8	163.900000000000006
809	Резапкина Г.В.	Профессиональное самоопределение школьников. Личность. Профессия. Карьера. Технология. 8-9 классы (Резапкина)	8-9	379.939999999999998
810	\N	\N	\N	\N
811	\N	\N	\N	\N
812	Погадаев Г.И.	Погадаев. Физическая культура. 5-6 классы. Учебник	5-6	346.939999999999998
813	Погадаев Г.И.	Погадаев. Физическая культура. 7-9 классы. Учебник	7-9	346.939999999999998
814	Погадаев Г.И.	Погадаев. Физическая культура. 1-11 классы. Подготовка учащихся по физической культуре и комплексу ГТО	1-11	218.900000000000006
815	\N	\N	\N	\N
816	\N	\N	\N	\N
817	\N	\N	\N	\N
818	Бабайцева В.В.	Бабайцева. Русский язык. 10-11 классы. Учебник (углубленный)	10-11	429.990000000000009
819	Бабайцева В.В., Беднарская Л.Д., Сальникова О.А.	Бабайцева. Русский язык. 10-11 классы. Методическое пособие (углубленный)	10-11	140.909999999999997
820	Пахнова Т.М.	Пахнова. Русский язык. 10 класс. Учебник (базовый)	10	397.980000000000018
821	Пахнова Т.М.	Пахнова. Русский язык. 11 класс. Учебник (базовый)	11	397.980000000000018
822	\N	\N	\N	\N
823	Курдюмова Т.Ф.,Колокольцев Е.Н.,Марьина О.Б. и др.;под ред. Курдюмовой Т.Ф.	Курдюмова. Литература. 10 класс. Учебник (базовый)	10	361.899999999999977
824	Курдюмова Т.Ф.,Колокольцев Е.Н.,Марьина О.Б. и др.;под ред. Курдюмовой Т.Ф.	Курдюмова. Литература. 11 класс. Учебник. В 2 ч. Часть 1 (базовый)	11	330
825	Курдюмова Т.Ф.,Колокольцев Е.Н.,Марьина О.Б. и др.;под ред. Курдюмовой Т.Ф.	Курдюмова. Литература. 11 класс. Учебник. В 2 ч. Часть 2 (базовый)	11	330
826	Михальская А.К.,Зайцева О.Н.	Михальская, Зайцева. Литературное чтение. 10 класс. Учебник. В 2 ч. Часть 1	10	369.930000000000007
827	Михальская А.К.,Зайцева О.Н.	Михальская, Зайцева. Литературное чтение. 10 класс. Учебник. В 2 ч. Часть 2	10	369.930000000000007
828	Михальская А.К.,Зайцева О.Н.	Михальская, Зайцева. Литературное чтение. 11 класс. Учебник. В 2 ч. Часть 1	11	385
829	Михальская А.К.,Зайцева О.Н.	Михальская, Зайцева. Литературное чтение. 11 класс. Учебник. В 2 ч. Часть 2	11	385
830	\N	\N	\N	\N
831	Архангельский А.Н.,Бак Д.П.,Кучерская М.А. и др.; под ред. Архангельского А.Н.	Архангельский, Агеносов. Литература. 10 класс. Учебник. В 2 ч. Часть 1 (углубленный)	10	330
832	Архангельский А.Н.,Бак Д.П.,Кучерская М.А. и др.; под ред. Архангельского А.Н.	Архангельский, Агеносов. Литература. 10 класс. Учебник. В 2 ч. Часть 2 (углубленный)	10	330
833	Агеносов В.В. и др.; под ред. Агеносова В.В.	Архангельский, Агеносов. Литература. 11 класс. Учебник. В 2 ч. Часть 1 (углубленный)	11	330
834	Агеносов В.В. и др.; под ред. Агеносова В.В.	Архангельский, Агеносов. Литература. 11 класс. Учебник. В 2 ч. Часть 2 (углубленный)	11	330
835	\N	\N	\N	\N
836	\N	\N	\N	\N
837	\N	\N	\N	\N
838	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 10 класс. Учебник (базовый)	10	556.92999999999995
839	Афанасьева О.В., Баранова К.М., Михеева И.В.	Афанасьева, Михеева. Rainbow English. Английский язык. 10 класс. Рабочая тетрадь (базовый)	10	228.909999999999997
840	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 10 класс. Лексико-грамматический практикум (базовый)	10	154.990000000000009
841	Афанасьева О.В.,Михеева И.В.,Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 11 класс. Учебник (базовый)	11	556.92999999999995
842	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 11 класс. Рабочая тетрадь (базовый)	11	228.909999999999997
843	Афанасьева О.В., Михеева И.В., Баранова К.М.	Афанасьева, Михеева. Rainbow English. Английский язык. 11 класс. Лексико-грамматический практикум (базовый)	11	154.990000000000009
844	Биболетова М.З.,Бабушис Е.Е.,Снежко Н.Д.	Биболетова. Enjoy English. Английский язык. 10 класс. Учебник	10	506.990000000000009
845	Биболетова М.З., Бабушис Е.Е., Снежко Н.Д.	Биболетова. Enjoy English. Английский язык. 10 класс. Рабочая тетрадь	10	149.930000000000007
846	Биболетова М.З.,Бабушис Е.Е.,Снежко Н.Д.	Биболетова. Enjoy English. Английский язык. 11 класс. Учебник	11	506.990000000000009
847	Биболетова М.З.	Биболетова. Enjoy English. Английский язык. 11 класс. Рабочая тетрадь	11	149.930000000000007
848	\N	\N	\N	\N
849	Шацких В.Н. и др.	Шацких. Французский язык как второй иностранный. 10-11 классы. Учебник (базовый)	10-11	508.970000000000027
850	\N	\N	\N	\N
851	\N	\N	\N	\N
852	Волобуев О.В.,Карпачев С.П.,Клоков В.А.	Андреев, Волобуев. История России. 10 класс. Учебник	10	330
853	\N	Атлас по истории России. 1914 год - начало XXI века. 10 кл.  (НОВЫЙ истор. -культ. стандарт) ФГОС	10	110
854	\N	Контурные карты  История России.  1914 год - начало XXI века. 10 кл  (НОВЫЙ истор. -культ. стандарт) ФГОС	10	44
855	Волобуев О.В., Клоков В.А., Пономарев М.В.	Волобуев.Атлас.Россия и мир.10-11кл.	10-11	121
856	\N	Волобуев.Россия и мир.10-11кл.Контурные карты.	10-11	52.9099999999999966
857	Саплина Е.В., Клоков В.А.	Андреев, Волобуев. История России. 10 класс. Тематические контрольные работы (Клоков)	10	111.980000000000004
858	Волобуев О.В.,Карпачев С.П.,Клоков В.А. и др.	Андреев, Волобуев. История России. 10 класс. Начало ХХ – начало XXI века. Учебник. В 2 ч. Часть 1 (углубленный) (Карпачёв)	10	309.980000000000018
859	Волобуев О.В.,Карпачев С.П.,Клоков В.А. и др.	Андреев, Волобуев. История России. 10 класс. Начало ХХ – начало XXI века. Учебник. В 2 ч. Часть 2 (углубленный) (Карпачёв)	10	309.980000000000018
860	Волобуев О.В.,Андреев И.Л.,Ляшенко Л.М. и др.	Андреев, Волобуев. История России. 11 класс. Учебник. В 2 ч. Часть 1 (углубленный)	11	309.980000000000018
861	Волобуев О.В.,Андреев И.Л.,Ляшенко Л.М. и др.	Андреев, Волобуев. История России. 11 класс. Учебник. В 2 ч. Часть 2 (углубленный)	11	309.980000000000018
862	Волобуев О.В.,Абрамов А.В.,Карпачев С.П. и др.	Волобуев, Пономарев. Россия в мире. 11 класс. С древнейших времен до начала XX века. Учебник (базовый)	11	507.980000000000018
863	\N	Атлас. Новейшая история. 1914 г. - начало XXI в. 10 класс. (Историко-культурный стандарт)	10	102.959999999999994
864	\N	Контурные карты. Новейшая история. 1914 г. -начало XXI в. 10 класс. (Историко-культурный стандарт)	10	42.8999999999999986
865	Шубин А.В.	Шубин. Всеобщая история. 10 класс. Новейшая история. Учебник (базовый, углубленный)	10	449.899999999999977
866	\N	\N	\N	\N
868	Сиротин В.И.	Сиротин. География. 10 класс. Рабочая тетрадь с к/к и заданиями для подготовки к ГИА и ЕГЭ	10	121.989999999999995
869	\N	Новая географическая картина мира. География. 10-11 классы. Учебное пособие. В 2 ч. Часть 1 (Без)	10-11	299.970000000000027
870	\N	Новая географическая картина мира. География. 10-11 классы. Учебное пособие. В 2 ч. Часть 2 (Без)	10-11	299.970000000000027
871	\N	\N	\N	\N
872	Холина В.Н.	Холина. География. 10 класс. Учебник (углубленный)	10	487.95999999999998
873	Холина В.Н.	Холина. География. 10 класс. Рабочая тетрадь (углубленный)	10	161.919999999999987
874	Холина В.Н.	Холина. География. 11 класс. Учебник (углубленный)	11	487.95999999999998
875	Холина В.Н.	Холина. География. 11 класс. Рабочая тетрадь (углубленный)	11	161.919999999999987
876	\N	\N	\N	\N
877	Хасбулатов Р.И.	Хасбулатов. Экономика. 10-11 классы. Учебник (базовый, углубленный)	10-11	466.949999999999989
878	\N	\N	\N	\N
879	Никитин А.Ф.,Никитина Т.И.	Никитин. Право. 10-11 классы. Учебник (базовый, углубленный)	10-11	484
880	Калуцкая Е.К.	Никитин. Право. 10-11 классы. Методическое пособие (базовый, углубленный) (Калуцкая)	10-11	209
881	\N	\N	\N	\N
882	Кравченко А.И.,Хасбулатов Р.И.,Агафонов С.В.	Кравченко. Обществознание. 10 класс. Учебник	10	359.920000000000016
883	Кравченко А.И., Акчурин Т.Ф., Агафонов С.В.	Кравченко. Обществознание. 11 класс. Учебник	11	359.920000000000016
884	Иоффе А.Н., Кишенкова О.В.	Никитин. Обществознание. 10 класс. Практикум (базовый) (Иоффе, Кишенкова)	10	128.919999999999987
885	Иоффе А.Н., Кишенкова О.В.	Никитин. Обществознание. 11 класс. Практикум (базовый) (Иоффе, Кишенкова)	11	128.919999999999987
886	\N	\N	\N	\N
887	\N	\N	\N	\N
888	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 10 класс. Учебник (базовый)	10	440.990000000000009
889	Муравин Г.К., Муравина О.В.	Муравин. Алгебра. 11 класс. Учебник (базовый)	11	440.990000000000009
890	Шарыгин И.Ф.	Шарыгин. Геометрия. 10-11 классы. Учебник (базовый)	10-11	386.980000000000018
891	\N	\N	\N	\N
892	Муравин Г.К.,Муравина О.В.	Муравин. Алгебра. 10 класс. Учебник (углубленный)	10	464.970000000000027
893	Муравин Г.К.,Муравина О.В.	Муравин. Алгебра. 11 класс. Учебник (углубленный)	11	464.970000000000027
894	Потоскуев Е.В.,Звавич Л.И.	Потоскуев, Звавич. Геометрия. 10 класс. Учебник (углубленный)	10	379.939999999999998
895	Потоскуев Е.В.,Звавич Л.И.	Потоскуев, Звавич. Геометрия. 10 класс. Задачник (углубленный)	10	279.949999999999989
896	Потоскуев Е.В.,Звавич Л.И.	Потоскуев, Звавич. Геометрия. 11 класс. Учебник (углубленный)	11	379.939999999999998
897	Потоскуев Е.В.,Звавич Л.И.	Потоскуев, Звавич. Геометрия. 11 класс. Задачник (углубленный)	11	279.949999999999989
898	\N	\N	\N	\N
899	Фиошин М.Е.,Рессин А.А.,Юнусов С.М.	Фиошин, Юнусов. Информатика. 10 класс. Учебник (углубленный) (Рессин)	10	421.95999999999998
900	Фиошин М.Е.,Рессин А.А.,Юнусов С.М.	Фиошин, Юнусов. Информатика. 11 класс. Учебник (углубленный)	11	421.95999999999998
901	\N	\N	\N	\N
902	\N	\N	\N	\N
903	Мякишев Г.Я.,Петрова М.А.,Степанов С.В. и др.	Мякишев. Физика. 10 класс. Учебник (базовый)	10	473
904	Заболотский А.А., Комиссаров В.Ф., Петрова М.А.	Мякишев. Физика. 10 класс. Сборник задач (базовый) (Заболотский, Комиссаров, Петрова)	10	248.930000000000007
905	Мякишев Г.Я.,Петрова М.А.,Угольников О.С. и др.	Мякишев. Физика. 11 класс. Учебник (базовый)	11	473
906	Заболотский А.А., Комиссаров В.Ф., Петрова М.А.	Мякишев. Физика. 11 класс. Сборник задач (базовый) (Заболотский, Комиссаров, Петрова)	11	248.930000000000007
907	Касьянов В.А.	Касьянов. Физика. 10 класс. Учебник (базовый)	10	405.899999999999977
908	Касьянов В.А., Коровин В.А.	Касьянов. Физика. 10 класс. Тетрадь для лабораторных работ (базовый, углубленный)	10	117.920000000000002
909	Касьянов В.А.	Касьянов. Физика. 11 класс. Учебник (базовый)	11	405.899999999999977
910	Касьянов В.А., Коровин В.А.	Касьянов. Физика. 11 класс. Тетрадь для лабораторных работ (базовый, углубленный)	11	117.920000000000002
911	Пурышева Н.С., Важеевская Н.Е., Исаев Д.А.; под ред. Пурышевой Н.С.	Пурышева. Физика. 10 класс. Учебник (базовый, углубленный)	10	455.949999999999989
912	Пурышева Н.С., Важеевская Н.Е., Исаев Д.А.	Пурышева. Физика. 10 класс. Рабочая тетрадь (базовый)	10	166.97999999999999
913	Пурышева Н.С., Важеевская Н.Е., Исаев Д.А., Чаругин В.М.	Пурышева. Физика. 11 класс. Учебник (базовый, углубленный)	11	455.949999999999989
914	Пурышева Н.С., Важеевская Н.Е., Исаев Д.А.	Пурышева. Физика. 11 класс. Рабочая тетрадь (базовый)	11	166.97999999999999
915	Гольдфарб Н.И.	Гольдфарб. Физика. 10-11класс. Задачник	10-11	281.930000000000007
918	Мякишев Г.Я.,Синяков А.З.	Мякишев. Физика. 10 класс. Механика. Учебник (углубленный)	10	473
919	Мякишев Г.Я.,Синяков А.З.	Мякишев. Физика. 10 класс. Молекулярная физика. Термодинамика. Учебник (углубленный)	10	473
920	Степанов С.В.	Мякишев. Физика. 10 класс. Лабораторный практикум (углубленный) (Степанов)	10	162.909999999999997
921	Шаталина А.В.	Мякишев. Физика. 10 класс. Методическое пособие (углубленный) (Шаталина)	10	117.920000000000002
922	Мякишев Г.Я.,Синяков А.З.	Мякишев. Физика. 10-11 классы. Электродинамика. Учебник (углубленный)	10-11	473
923	Мякишев Г.Я.,Синяков А.З.	Мякишев. Физика. 11 класс. Колебания и волны. Учебник (углубленный)	11	473
924	Мякишев Г.Я.,Синяков А.З.	Мякишев. Физика. 11 класс. Оптика. Квантовая физика. Учебник (углубленный)	11	473
925	Степанов С.В.	Мякишев. Физика. 11 класс. Лабораторный практикум (углубленный) (Степанов)	11	156.969999999999999
926	Шаталина А.В.	Мякишев. Физика. 11 класс. Методическое пособие (углубленный) (Шаталина)	11	117.920000000000002
927	Касьянов В.А.	Касьянов. Физика. 10 класс. Учебник (углубленный)	10	482.899999999999977
928	Марон А.Е., Марон Е.А.	Касьянов. Физика. 10 класс. Дидактические материалы (базовый, углубленный) (Марон)	10	128.919999999999987
929	Касьянов В.А.	Касьянов. Физика. 11 класс. Учебник (углубленный)	11	482.899999999999977
930	Марон А.Е., Марон Е.А.	Касьянов. Физика. 11 класс. Дидактические материалы (базовый, углубленный) (Марон)	11	128.919999999999987
931	\N	\N	\N	\N
932	Воронцов-Вельяминов Б.А., Страут Е.К.	Воронцов-Вельяминов. Астрономия. 10-11 классы. Учебник	10-11	401.939999999999998
933	Гомулина Н.Н., Карачевцева И.П., Коханов А.А.	Воронцов-Вельяминов. Астрономия. 10-11 классы. Атлас (Гомулина, Карачевцева, Коханов)	10-11	124.959999999999994
934	Шевченко М.Ю., Угольников О.С.	Воронцов-Вельяминов. Астрономия. 10-11 классы. Школьный астрономический календарь на 2020/2021 учебный год (Шевченко, Угольников)	10-11	224.949999999999989
935	Гомулина Н.Н.	Воронцов-Вельяминов. Астрономия. 10-11 классы. Проверочные и контрольные работы (Гомулина)	11	103.950000000000003
936	Кунаш М.А.	Воронцов-Вельяминов. Астрономия. 11 класс. Методическое пособие (Кунаш)	11	106.920000000000002
937	\N	\N	\N	\N
938	Габриелян О.С.	Габриелян. Химия. 10 класс. Учебник (базовый)	10	418
939	Габриелян О.С., Сладков С.А.	Габриелян. Химия. 10 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (базовый)	10	154.990000000000009
940	Ахметов М.А.	Габриелян. Химия. 10 класс. Контрольные и проверочные работы (базовый) (Ахметов)	10	170.939999999999998
941	Габриелян О.С.	Габриелян. Химия. 11 класс. Учебник (базовый)	11	418
942	Габриелян О.С., Сладков С.А.	Габриелян. Химия. 11 класс. Рабочая тетрадь с тест. заданиями ЕГЭ (базовый)	11	154.990000000000009
943	Габриелян О.С., Березкин П.Н., Ушакова А.А., Майорова Г.В., Кузьмина Н.В., Кириллова А.Е.	Габриелян. Химия. 11 класс. Контрольные и проверочные работы (базовый)	11	144.97999999999999
944	Еремин В.В., Кузьменко Н.Е., Теренин В.И., Дроздов А.А., Лунин В.В.; под ред. Лунина В.В.	Еремин, Лунин. Химия. 10 класс. Учебник (базовый)	10	469.920000000000016
945	Еремин В.В., Кузьменко Н.Е., Дроздов А.А., Лунин В.В.; под ред. Лунина В.В.	Еремин, Лунин. Химия. 11 класс. Учебник (базовый)	11	469.920000000000016
946	\N	\N	\N	\N
947	Габриелян О.С., Пономарев С.Ю., Остроумов И.Г.	Габриелян. Химия. 10 класс. Учебное пособие (углубленный)	10	445.939999999999998
948	Габриелян О.С.	Габриелян. Химия. 11 класс. Учебное пособие (углубленный)	11	445.939999999999998
949	Еремин В.В., Кузьменко Н.Е., Теренин В.И., Дроздов А.А., Лунин В.В.; под ред. Лунина В.В.	Еремин, Лунин. Химия. 10 класс. Учебник (углубленный)	10	501.930000000000007
950	Еремин В.В., Кузьменко Н.Е., Дроздов А.А., Лунин В.В.; под ред. Лунина В.В.	Еремин, Лунин. Химия. 11 класс. Учебник (углубленный)	11	501.930000000000007
951	\N	\N	\N	\N
952	Сивоглазов В.И.,Агафонова И.Б.,Захарова Е.Т.	Сивоглазов, Агафонова. Биология. 10 класс. Общая биология. Учебник (базовый)	10	443.95999999999998
953	Агафонова И.Б., Сивоглазов В.И.	Сивоглазов, Агафонова. Биология. 10 класс. Общая биология. Рабочая тетрадь с тест. заданиями ЕГЭ (базовый)	10	177.97999999999999
954	Сивоглазов В.И., Агафонова И.Б.,Захарова Е.Т.	Сивоглазов, Агафонова. Биология. 11 класс. Общая биология. Учебник (базовый)	11	443.95999999999998
955	Агафонова И.Б., Сивоглазов В.И., Захарова Е.Т.	Сивоглазов, Агафонова. Биология. 11 класс. Общая биология. Рабочая тетрадь с тест. заданиями ЕГЭ (базовый)	11	177.97999999999999
956	Мишакова В.Н., Агафонова И.Б., Сивоглазов В.И.	Сивоглазов, Агафонова. Биология. 11 класс. Общая биология. Методическое пособие (базовый)	11	180.949999999999989
957	Агафонова И.Б.,Сивоглазов В.И.	Сивоглазов. Биология. 10 класс. Учебник (базовый, углубленный)	10	460.899999999999977
958	Агафонова И.Б.,Сивоглазов В.И.	Сивоглазов. Биология. 11 класс. Учебник (базовый, углубленный)	11	460.899999999999977
959	Каменский А.А., Криксунов Е.А., Пасечник В.В.	Каменский. Биология. 10-11 классы. Общая биология. Учебное пособие (базовый)	10-11	466.949999999999989
960	Пасечник В.В., Швецов Г.Г.	Каменский. Биология. 10-11 классы. Общая биология. Рабочая тетрадь с тест. заданиями ЕГЭ (базовый) (Пасечник, Швецов)	10-11	169.949999999999989
961	Пасечник В.В., Швецов Г.Г.	Каменский. Биология. 10-11 классы. Общая биология. Методическое пособие (базовый) (Пасечник, Швецов)	10-11	122.980000000000004
962	\N	\N	\N	\N
963	Захаров В.Б.,Мамонтов С.Г.,Сонин Н.И.,Захарова Е.Т.;под ред. Захарова В.Б.	Захаров. Биология. 10 класс. Учебник (углубленный)	10	449.899999999999977
964	Захаров В.Б.,Мамонтов С.Г.,Сонин Н.И.,Захарова Е.Т.;под ред. Захарова В.Б.	Захаров. Биология. 11 класс. Учебник (углубленный)	11	449.899999999999977
965	\N	\N	\N	\N
966	Габриелян О.С.,Остроумов И.Г.,Пурышева Н.С. и др.	Габриелян. Естествознание. 10 класс. Учебник (базовый)	10	440
967	Габриелян О.С.,Остроумов И.Г.,Пурышева Н.С. и др.	Габриелян. Естествознание. 11 класс. Учебник (базовый)	11	440
968	Титов С.А.,Агафонова И.Б.,Сивоглазов В.И.	Титов. Естествознание. 10 класс. Учебник (базовый)	10	403.920000000000016
969	Титов С.А.,Агафонова И.Б.,Сивоглазов В.И.	Титов. Естествознание. 11 класс. Учебник (базовый)	11	403.920000000000016
970	\N	\N	\N	\N
971	\N	\N	\N	\N
972	Погадаев Г.И.	Погадаев. Физическая культура. 10-11 классы. Учебник (базовый)	10-11	393.910000000000025
973	\N	\N	\N	\N
974	Чернова Н.М.,Галушин В.М.,Константинов В.М.	Чернова. Экология. 10-11 классы. Учебник (базовый)	10-11	423.939999999999998
975	\N	\N	\N	\N
976	\N	\N	\N	\N
977	\N	\N	\N	\N
978	\N	\N	\N	\N
979	Гуревич А.Е.,Исаев Д.А.,Понтак Л.С.	Гуревич. Введение в естественно-научные предметы. 5-6 классы. Учебник	5-6	454.95999999999998
980	Гуревич А.Е., Краснов М.В., Нотов Л.А., Понтак Л.С.	Гуревич. Введение в естественно-научные предметы. 5 класс. Рабочая тетрадь	5	169.949999999999989
981	Гуревич А. Е., Краснов М. В., Нотов Л. А., Понтак Л. С.	Гуревич. Введение в естественно-научные предметы. 6 класс. Рабочая тетрадь	6	169.949999999999989
982	Плешаков А.А.,Сонин Н.И.	Плешаков, Сонин. Введение в естественно-научные предметы. 5 класс. Учебник	5	484.990000000000009
983	Плешаков А.А., Сонин Н.И.	Плешаков, Сонин. Введение в естественно-научные предметы. 5 класс. Рабочая тетрадь с тест. заданиями ЕГЭ	5	149.930000000000007
984	Пакулова В.М.,Иванова Н.В.	Пакулова. Введение в естественно-научные предметы. 5 класс. Природа. Неживая и живая. Учебник	5	445.939999999999998
985	Пакулова В.М., Иванова Н.В.	Пакулова. Введение в естественно-научные предметы. 5 класс. Природа. Неживая и живая. Рабочая тетрадь с тест. заданиями ЕГЭ	5	149.930000000000007
986	\N	Контурные карты. Естествознание. 5 класс.	5	38.9399999999999977
987	\N	\N	\N	\N
988	\N	\N	\N	\N
989	Данилова Г.И.	Данилова. Искусство. 5 класс. Учебник	5	413.930000000000007
990	Данилова Г.И.	Данилова. Искусство. 6 класс. Учебник	6	413.930000000000007
991	Данилова Г.И.	Данилова. Искусство. 7 класс. Учебник	7	413.930000000000007
992	Данилова Г.И.	Данилова. Искусство. 8 класс. Учебник	8	413.930000000000007
993	Данилова Г.И.	Данилова. Искусство. 9 класс. Учебник	9	413.930000000000007
994	\N	\N	\N	\N
995	\N	\N	\N	\N
996	\N	\N	\N	\N
997	Ботвинников А.Д.,Виноградов В.Н.,Вышнепольский И.С.	Ботвинников, Виноградов. Черчение. 9 класс. Учебник (Гордеенко)	9	266.970000000000027
998	Вышнепольский В.И.	Ботвинников, Виноградов. Черчение. 9 класс. Рабочая тетрадь (Вышнепольский)	9	183.919999999999987
999	Виноградов В.Н., Вышнепольский И.С.	Ботвинников, Виноградов. Черчение. 9 класс. Методическое пособие	9	113.959999999999994
1000	\N	\N	\N	\N
1001	Поляков В.В., Кузнецов М.И., Марков В.В.	Латчук. ОБЖ. 5 класс. Учебное пособие (Поляков, Кузнецов, Марков)	5	401.939999999999998
1002	Маслов А.Г., Марков В.В., Латчук В.Н.	Латчук. ОБЖ. 6 класс. Учебное пособие	6	401.939999999999998
1003	Вангородский С.Н., Кузнецов М.И., Латчук В.Н.	Латчук. ОБЖ. 8 класс. Учебное пособие	8	409.970000000000027
1004	Вангородский С.Н., Кузнецов М.И., Латчук В.Н.	Латчук. ОБЖ. 9 класс. Учебное пособие	9	409.970000000000027
1005	Фролов М.П., Шолох В.П., Юрьева М.В.	Фролов, Шолох. ОБЖ. 5 класс. Учебное пособие	5	387.970000000000027
1006	Фролов М.П., Мишин Б.И., Шолох В.П.	Фролов, Шолох. ОБЖ. 6 класс. Учебное пособие	6	387.970000000000027
1007	Галкина М.В.	Фролов, Шолох. ОБЖ. 6 класс. Рабочая тетрадь (Галкина)	6	137.939999999999998
1008	Воробьева Ю.Л.	Фролов, Шолох. ОБЖ. 7 класс. Учебное пособие	7	300.95999999999998
1009	Фролов М.П., Шолох В.П., Юрьева М.В.	Фролов, Шолох. ОБЖ. 8 класс. Учебное пособие	8	300.95999999999998
1010	Фролов М.П.	Фролов, Шолох. ОБЖ. 9 класс. Учебное пособие (Фролов)	9	300.95999999999998
1011	Чернышев П.А., Викерчук М.И., Глек И.В., Виноградов А.С./Под ред. Глека И.В.	Глек. Шахматы. 5-6 классы. Начальный уровень. Учебник	5-6	330
1012	Викерчук М.И., Чернышев П.А., Глек И.В., Виноградов А.С./Под ред. Глека И.В.	Глек. Шахматы. 7-9 классы. Тактика. Учебник	7-9	330
1013	Глек И.В., Чернышев П.А., Викерчук М.И., Виноградов А.С./Под ред. Глека И.В.	Глек. Шахматы. 10-11 классы. Стратегия. Учебник	10-11	330
1014	Погадаев Г.И./под редакцией Игоря Акинфеева	Погадаев, Акинфеев. Физическая культура. 1-4 классы. Футбол. Учебное пособие	1-4	449.899999999999977
1015	Погадаев Г.И./под редакцией Игоря Акинфеева 	Погадаев, Акинфеев. Физическая культура. 5-9 классы. Футбол. Учебное пособие	5-9	399.95999999999998
1016	Погадаев Г.И./под редакцией Игоря Акинфеева	Погадаев, Акинфеев. Физическая культура. 10-11 классы. Футбол. Учебное пособие	10-11	399.95999999999998
1017	\N	\N	\N	\N
1018	\N	\N	\N	\N
1019	Данилова Г.И.	Данилова. Искусство. 10 класс. Учебник (базовый)	10	506
1020	Данилова Г.И.	Данилова. Искусство. 11 класс. Учебник (базовый)	11	506
1021	Латчук В.Н.	Латчук. ОБЖ. 10 класс. Учебное пособие (базовый)	10	356.949999999999989
1022	Марков В.В., Латчук В.Н., Миронов С.К.	Латчук. ОБЖ. 11 класс. Учебное пособие (базовый)	11	356.949999999999989
\.


--
-- Data for Name: book_prosvet_bl; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_prosvet_bl (id, author, name, grade, price) FROM stdin;
1	\N	\N	\N	\N
2	\N	\N	\N	\N
3	\N	\N	\N	\N
4	\N	\N	\N	\N
5	Горецкий В. Г., Кирюшкин В. А., Виноградская Л. А. и др.	Азбука. 1 класс. В 3-х частях. Ч.1 (для слабовидящих обучающихся)	1	1074.15000000000009
6	Горецкий В. Г., Кирюшкин В. А., Виноградская Л. А. и др.	Азбука. 1 класс. В 3-х частях. Ч.2 (для слабовидящих обучающихся)	1	958.649999999999977
7	Горецкий В. Г., Кирюшкин В. А., Виноградская Л. А. и др.	Азбука. 1 класс. В 3-х частях. Ч.3 (для слабовидящих обучающихся)	1	1062.59999999999991
8	Канакина В. П., Горецкий В. Г.	Русский язык. 1 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	1	1270.5
9	Канакина В. П., Горецкий В. Г.	Русский язык. 1 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	1	1166.54999999999995
10	Канакина В. П., Горецкий В. Г.	Русский язык. 1 класс. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	1	1166.54999999999995
11	Канакина В. П., Горецкий В. Г.	Русский язык. 2 класс. В 4-х ч. Ч. 1 (для слабовидящих обучающихся)	2	1270.5
12	Канакина В. П., Горецкий В. Г.	Русский язык. 2 класс. В 4-х ч. Ч. 2 (для слабовидящих обучающихся)	2	1270.5
13	Канакина В. П., Горецкий В. Г.	Русский язык. 2 класс. В 4-х ч. Ч. 3 (для слабовидящих обучающихся)	2	1270.5
14	Канакина В. П., Горецкий В. Г.	Русский язык. 2 класс. В 4-х ч. Ч. 4 (для слабовидящих обучающихся)	2	1270.5
15	Канакина В. П., Горецкий В. Г.	Русский язык. 3 класс. В 5-и ч. Ч. 1 (для слабовидящих обучающихся)	3	1270.5
16	Канакина В. П., Горецкий В. Г.	Русский язык. 3 класс. В 5-и ч. Ч. 2 (для слабовидящих обучающихся)	3	1270.5
17	Канакина В. П., Горецкий В. Г.	Русский язык. 3 класс. В 5-и ч. Ч. 3 (для слабовидящих обучающихся)	3	1270.5
18	Канакина В. П., Горецкий В. Г.	Русский язык. 3 класс. В 5-и ч. Ч. 4 (для слабовидящих обучающихся)	3	1270.5
19	Канакина В. П., Горецкий В. Г.	Русский язык. 3 класс. В 5-и ч. Ч. 5 (для слабовидящих обучающихся)	3	1039.5
20	Канакина В. П., Горецкий В. Г.	Русский язык. 4 класс. В 5-и ч. Ч. 1 (для слабовидящих обучающихся)	4	1270.5
21	Канакина В. П., Горецкий В. Г.	Русский язык. 4 класс. В 5-и ч. Ч. 2 (для слабовидящих обучающихся)	4	1085.70000000000005
22	Канакина В. П., Горецкий В. Г.	Русский язык. 4 класс. В 5-и ч. Ч. 3 (для слабовидящих обучающихся)	4	1085.70000000000005
23	Канакина В. П., Горецкий В. Г.	Русский язык. 4 класс. В 5-и ч. Ч. 4 (для слабовидящих обучающихся)	4	1085.70000000000005
24	Канакина В. П., Горецкий В. Г.	Русский язык. 4 класс. В 5-и ч. Ч. 5 (для слабовидящих обучающихся)	4	981.75
25	\N	\N	\N	\N
26	Климанова Л. Ф., Горецкий В. Г., Голованова М. В.	Литературное чтение. 1 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	1	1339.79999999999995
27	Климанова Л. Ф., Горецкий В. Г., Голованова М. В.	Литературное чтение. 1 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	1	1155
28	Климанова Л. Ф., Горецкий В. Г., Голованова М. В.	Литературное чтение. 2 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	2	1143.45000000000005
29	Климанова Л. Ф., Горецкий В. Г., Голованова М. В.	Литературное чтение. 2 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	2	1143.45000000000005
30	Климанова Л. Ф., Горецкий В. Г., Голованова М. В.	Литературное чтение. 2 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	2	1143.45000000000005
31	Климанова Л. Ф., Горецкий В. Г., Голованова М. В.	Литературное чтение. 2 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	2	1143.45000000000005
32	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 3 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	3	1143.45000000000005
33	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 3 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	3	1143.45000000000005
34	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 3 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	3	1143.45000000000005
35	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 3 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	3	1143.45000000000005
36	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 4 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	4	1409.09999999999991
37	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 4 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	4	1409.09999999999991
38	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 4 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	4	1409.09999999999991
39	Климанова Л. Ф., Горецкий В. Г., Голованова М. В. и др.	Литературное чтение. 4 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	4	1409.09999999999991
40	\N	\N	\N	\N
41	\N	\N	\N	\N
42	\N	\N	\N	\N
43	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 2 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	2	1062.59999999999991
44	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 2 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	2	1316.70000000000005
45	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 2 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	2	1316.70000000000005
46	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 2 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	2	1316.70000000000005
47	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 3 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	3	1420.65000000000009
48	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 3 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	3	1420.65000000000009
49	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 3 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	3	1420.65000000000009
50	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 3 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	3	1420.65000000000009
51	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 4 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	4	1420.65000000000009
52	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 4 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	4	1420.65000000000009
53	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 4 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	4	1420.65000000000009
54	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 4 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	4	1420.65000000000009
55	\N	\N	\N	\N
56	Бим И. Л., Рыжова Л. И.	Немецкий язык. 2 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	2	1258.95000000000005
57	Бим И. Л., Рыжова Л. И.	Немецкий язык. 2 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	2	1258.95000000000005
58	Бим И. Л., Рыжова Л. И.	Немецкий язык. 2 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	2	1709.40000000000009
59	Бим И. Л., Рыжова Л. И.	Немецкий язык. 2 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	2	1455.29999999999995
60	Бим И. Л., Рыжова Л. И., Фомичева Л. М.	Немецкий язык. 3 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	3	1767.15000000000009
61	Бим И. Л., Рыжова Л. И., Фомичева Л. М.	Немецкий язык. 3 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	3	1767.15000000000009
62	Бим И. Л., Рыжова Л. И., Фомичева Л. М.	Немецкий язык. 3 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	3	1513.04999999999995
63	Бим И. Л., Рыжова Л. И., Фомичева Л. М.	Немецкий язык. 3 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	3	1513.04999999999995
64	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 5-и ч. Ч.1 (для слабовидящих обучающихся)	4	1894.20000000000005
65	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 5-и ч. Ч.2 (для слабовидящих обучающихся)	4	1709.40000000000009
66	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 5-и ч. Ч.3 (для слабовидящих обучающихся)	4	2055.90000000000009
67	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 5-и ч. Ч.4 (для слабовидящих обучающихся)	4	1709.40000000000009
68	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 5-и ч. Ч.5 (для слабовидящих обучающихся)	4	1466.84999999999991
69	\N	\N	\N	\N
70	\N	\N	\N	\N
71	Моро М. И., Волкова С. И., Степанова С. В.	Математика. 1 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	1	1235.84999999999991
72	Моро М. И., Волкова С. И., Степанова С. В.	Математика. 1 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	1	1258.95000000000005
73	Моро М. И., Волкова С. И., Степанова С. В.	Математика. 1 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	1	1258.95000000000005
74	Моро М. И., Волкова С. И., Степанова С. В.	Математика. 1 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	1	1258.95000000000005
75	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 2 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	2	1235.84999999999991
76	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 2 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	2	1258.95000000000005
77	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 2 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	2	1235.84999999999991
78	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 2 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	2	1258.95000000000005
79	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 3 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	3	1258.95000000000005
80	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 3 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	3	1258.95000000000005
81	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 3 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	3	1258.95000000000005
82	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 3 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	3	1258.95000000000005
83	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 4 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	4	1258.95000000000005
84	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 4 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	4	1235.84999999999991
85	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 4 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	4	1258.95000000000005
86	Моро М. И., Бантова М. А., Бельтюкова Г. В. и др.	Математика. 4 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	4	1258.95000000000005
87	\N	\N	\N	\N
88	Плешаков А. А.	Окружающий мир. 1 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	1	1155
89	Плешаков А. А.	Окружающий мир. 1 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	1	1155
90	Плешаков А. А.	Окружающий мир. 1 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	1	1155
91	Плешаков А. А.	Окружающий мир. 1 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	1	1155
92	Плешаков А. А.	Окружающий мир. 2 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	2	1270.5
93	Плешаков А. А.	Окружающий мир. 2 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	2	1270.5
94	Плешаков А. А.	Окружающий мир. 2 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	2	1270.5
95	Плешаков А. А.	Окружающий мир. 2 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	2	1270.5
96	Плешаков А. А.	Окружающий мир. 3 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	3	1270.5
97	Плешаков А. А.	Окружающий мир. 3 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	3	1270.5
98	Плешаков А. А.	Окружающий мир. 3 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	3	1270.5
99	Плешаков А. А.	Окружающий мир. 3 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	3	1270.5
100	Плешаков А. А., Крючкова Е. А.	Окружающий мир. 4 класс. В 4 ч. Ч.1 (для слабовидящих обучающихся)	4	1270.5
101	Плешаков А. А., Крючкова Е. А.	Окружающий мир. 4 класс. В 4 ч. Ч.2 (для слабовидящих обучающихся)	4	1270.5
102	Плешаков А. А., Крючкова Е. А.	Окружающий мир. 4 класс. В 4 ч. Ч.3 (для слабовидящих обучающихся)	4	1270.5
103	Плешаков А. А., Крючкова Е. А.	Окружающий мир. 4 класс. В 4 ч. Ч.4 (для слабовидящих обучающихся)	4	1270.5
104	\N	\N	\N	\N
105	Кураев А. В.	Основы религиозных культур и светской этики. Основы православной культуры. 4 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	4	1270.5
106	Кураев А. В.	Основы религиозных культур и светской этики. Основы православной культуры. 4 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	4	1270.5
107	Беглов А. Л., Саплина Е. В., Токарева Е. С. и др.	Основы религиозных культур и светской этики. Основы мировых религиозных культур. 4 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	4	1270.5
108	Беглов А. Л., Саплина Е. В., Токарева Е. С. и др.	Основы религиозных культур и светской этики. Основы мировых религиозных культур. 4 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	4	1270.5
109	Шемшурина А. И.	Основы религиозных культур и светской этики. Основы светской этики. 4 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	4	1270.5
110	Шемшурина А. И.	Основы религиозных культур и светской этики. Основы светской этики. 4 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	4	1270.5
111	Шемшурина А. И.	Основы религиозных культур и светской этики. Основы светской этики. 4 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	4	1270.5
112	Шемшурина А. И.	Основы религиозных культур и светской этики. Основы светской этики. 4 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	4	1270.5
113	\N	\N	\N	\N
114	\N	\N	\N	\N
115	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 1 класс (для слабовидящих обучающихся)	1	1386
116	Горяева Н. А., Неменская Л. А., Питерских А. С. и др. / Под ред. Неменского Б. М.	Изобразительное искусство. 3 класс. В 2-х частях. Ч.1 (для слабовидящих обучающихся)	3	1628.54999999999995
117	Горяева Н. А., Неменская Л. А., Питерских А. С. и др. / Под ред. Неменского Б. М.	Изобразительное искусство. 3 класс. В 2-х частях. Ч.2 (для слабовидящих обучающихся)	3	1628.54999999999995
118	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 4 класс. В 2-х частях. Ч.1(для слабовидящих обучающихся)	4	1582.34999999999991
119	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 4 класс. В 2-х частях. Ч.2(для слабовидящих обучающихся)	4	1570.79999999999995
120	\N	\N	\N	\N
121	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. 1 класс (для слабовидящих обучающихся)	1	1178.09999999999991
122	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. 3 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	3	1316.70000000000005
123	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. 3 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	3	1316.70000000000005
124	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. 4 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	4	1316.70000000000005
125	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. 4 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	4	1316.70000000000005
126	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. 4 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	4	1316.70000000000005
127	\N	\N	\N	\N
128	Лутцева Е.А., Зуева Т.П.	Технология. 1 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	1	1824.90000000000009
129	Лутцева Е.А., Зуева Т.П.	Технология. 1 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	1	1617
130	Лутцева Е.А., Зуева Т.П.	Технология. 2 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	2	2206.05000000000018
131	Лутцева Е.А., Зуева Т.П.	Технология. 2 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	2	2206.05000000000018
132	Лутцева Е.А., Зуева Т.П.	Технология. 3 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	3	2021.25
133	Лутцева Е.А., Зуева Т.П.	Технология. 3 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	3	2021.25
134	Лутцева Е.А., Зуева Т.П.	Технология. 4 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	4	2021.25
135	Лутцева Е.А., Зуева Т.П.	Технология. 4 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	4	1836.45000000000005
136	Роговцева Н.И., Богданова Н.В., Фрейтаг И.П.	Технология. 1 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	1	1328.25
137	Роговцева Н.И., Богданова Н.В., Фрейтаг И.П.	Технология. 1 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	1	1270.5
138	Роговцева Н.И., Богданова Н.В., Шипилова Н.В.	Технология. 2 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	2	2009.70000000000005
139	Роговцева Н.И., Богданова Н.В., Шипилова Н.В.	Технология. 2 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	2	1605.45000000000005
140	Роговцева Н.И., Богданова Н.В., Шипилова Н.В. и др.	Технология. 3 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	3	2390.84999999999991
141	Роговцева Н.И., Богданова Н.В., Шипилова Н.В. и др.	Технология. 3 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	3	2263.80000000000018
142	Роговцева Н.И., Богданова Н.В., Шипилова Н.В. и др.	Технология. 4 класс. В 2 ч. Ч.1 (для слабовидящих обучающихся)	4	2344.65000000000009
143	Роговцева Н.И., Богданова Н.В., Шипилова Н.В. и др.	Технология. 4 класс. В 2 ч. Ч.2 (для слабовидящих обучающихся)	4	2240.69999999999982
144	\N	\N	\N	\N
145	Лях В. И.	Физическая культура. 1-4 классы. В 2-х ч. Ч. 1 (для слабовидящих обучающихся)	 1 - 4	1235.84999999999991
146	Лях В. И.	Физическая культура. 1-4 классы. В 2-х ч. Ч. 2 (для слабовидящих обучающихся)	 1 - 4	1235.84999999999991
147	Матвеев А. П.	Физическая культура. 3 класс (для слабовидящих обучающихся)	3	1894.20000000000005
148	Матвеев А. П.	Физическая культура. 4 класс (для слабовидящих обучающихся)	4	1894.20000000000005
149	\N	\N	\N	\N
150	\N	\N	\N	\N
151	\N	\N	\N	\N
152	Ладыженская Т. А., Баранов М. Т., Тростенцова Л. А. и др.	Русский язык. 5 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	5	1420.65000000000009
153	Ладыженская Т. А., Баранов М. Т., Тростенцова Л. А. и др.	Русский язык. 5 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	5	1420.65000000000009
154	Ладыженская Т. А., Баранов М. Т., Тростенцова Л. А. и др.	Русский язык. 5 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	5	1420.65000000000009
155	Ладыженская Т. А., Баранов М. Т., Тростенцова Л. А. и др.	Русский язык. 5 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	5	1420.65000000000009
156	Баранов М. Т., Ладыженская Т. А., Тростенцова Л. А. и др.	Русский язык. 6 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	6	1420.65000000000009
157	Баранов М. Т., Ладыженская Т. А., Тростенцова Л. А. и др.	Русский язык. 6 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	6	1420.65000000000009
158	Баранов М. Т., Ладыженская Т. А., Тростенцова Л. А. и др.	Русский язык. 6 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	6	1420.65000000000009
159	Баранов М. Т., Ладыженская Т. А., Тростенцова Л. А. и др.	Русский язык. 6 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	6	1420.65000000000009
160	Баранов М. Т., Ладыженская Т. А., Тростенцова Л. А. и др.	Русский язык. 7 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	7	1674.75
161	Баранов М. Т., Ладыженская Т. А., Тростенцова Л. А. и др.	Русский язык. 7 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	7	1386
162	Бархударов С.Г., Крючков С.Е., Максимов Л.Ю. и др.	Русский язык. 8 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	8	1420.65000000000009
163	Бархударов С.Г., Крючков С.Е., Максимов Л.Ю. и др.	Русский язык. 8 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	8	1420.65000000000009
164	Бархударов С.Г., Крючков С.Е., Максимов Л.Ю. и др.	Русский язык. 9 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	9	1420.65000000000009
165	Бархударов С.Г., Крючков С.Е., Максимов Л.Ю. и др.	Русский язык. 9 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	9	1420.65000000000009
166	Рыбченкова Л. М., Александрова О. М., Глазков А. В. и др.	Русский язык. 5 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	5	1986.59999999999991
167	Рыбченкова Л. М., Александрова О. М., Глазков А. В. и др.	Русский язык. 5 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	5	1986.59999999999991
168	Рыбченкова Л. М., Александрова О. М., Глазков А. В. и др.	Русский язык. 5 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	5	1836.45000000000005
169	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 6 класс. В 3 ч. Ч.1 (для слабовидящих обучающихся)	6	1986.59999999999991
170	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 6 класс. В 3 ч. Ч.2 (для слабовидящих обучающихся)	6	1986.59999999999991
171	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 6 класс. В 3 ч. Ч.3 (для слабовидящих обучающихся)	6	1986.59999999999991
172	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 7 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	7	1986.59999999999991
173	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 7 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	7	1986.59999999999991
174	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 8 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	8	1986.59999999999991
175	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 8 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	8	1986.59999999999991
176	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 9 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	9	1986.59999999999991
177	Рыбченкова Л. М., Александрова О. М., Загоровская О. В. и др.	Русский язык. 9 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	9	1986.59999999999991
178	\N	\N	\N	\N
179	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 5 класс. В 5-и ч. Ч.1 (для слабовидящих обучающихся)	5	1386
180	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 5 класс. В 5-и ч. Ч.2 (для слабовидящих обучающихся)	5	1386
181	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 5 класс. В 5-и ч. Ч.3 (для слабовидящих обучающихся)	5	1386
182	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 5 класс. В 5-и ч. Ч.4 (для слабовидящих обучающихся)	5	1386
183	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 5 класс. В 5-и ч. Ч.5 (для слабовидящих обучающихся)	5	1270.5
184	Полухина В. П., Коровина В. Я., Журавлев В. П. и др.	Литература. 6 класс. В 5-и ч. Ч.1 (для слабовидящих обучающихся)	6	1386
185	Полухина В. П., Коровина В. Я., Журавлев В. П. и др.	Литература. 6 класс. В 5-и ч. Ч.2 (для слабовидящих обучающихся)	6	1386
186	Полухина В. П., Коровина В. Я., Журавлев В. П. и др.	Литература. 6 класс. В 5-и ч. Ч.3 (для слабовидящих обучающихся)	6	1386
187	Полухина В. П., Коровина В. Я., Журавлев В. П. и др.	Литература. 6 класс. В 5-и ч. Ч.4 (для слабовидящих обучающихся)	6	1386
188	Полухина В. П., Коровина В. Я., Журавлев В. П. и др.	Литература. 6 класс. В 5-и ч. Ч.5 (для слабовидящих обучающихся)	6	1270.5
189	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 7 класс. В 5-и ч. Ч.1 (для слабовидящих обучающихся)	7	1420.65000000000009
190	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 7 класс. В 5-и ч. Ч.2 (для слабовидящих обучающихся)	7	1420.65000000000009
191	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 7 класс. В 5-и ч. Ч.3 (для слабовидящих обучающихся)	7	1420.65000000000009
192	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 7 класс. В 5-и ч. Ч.4 (для слабовидящих обучающихся)	7	1420.65000000000009
193	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 7 класс. В 5-и ч. Ч.5 (для слабовидящих обучающихся)	7	1420.65000000000009
194	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 8 класс. В 6-и ч. Ч.1 (для слабовидящих обучающихся)	8	1420.65000000000009
195	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 8 класс. В 6-и ч. Ч.2 (для слабовидящих обучающихся)	8	1420.65000000000009
196	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 8 класс. В 6-и ч. Ч.3 (для слабовидящих обучающихся)	8	1420.65000000000009
197	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 8 класс. В 6-и ч. Ч.4 (для слабовидящих обучающихся)	8	1420.65000000000009
198	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 8 класс. В 6-и ч. Ч.5 (для слабовидящих обучающихся)	8	1420.65000000000009
199	Коровина В. Я., Журавлев В. П., Коровин В. И.	Литература. 8 класс. В 6-и ч. Ч.6 (для слабовидящих обучающихся)	8	1420.65000000000009
200	Коровина В.Я., Журавлёв В.П., Коровин В.И. и др. 	Литература. 9 класс. В 6-и ч. Ч.1 (для слабовидящих обучающихся)	9	1420.65000000000009
201	Коровина В.Я., Журавлёв В.П., Коровин В.И. и др. 	Литература. 9 класс. В 6-и ч. Ч.2 (для слабовидящих обучающихся)	9	1420.65000000000009
202	Коровина В.Я., Журавлёв В.П., Коровин В.И. и др. 	Литература. 9 класс. В 6-и ч. Ч.3 (для слабовидящих обучающихся)	9	1420.65000000000009
203	Коровина В.Я., Журавлёв В.П., Коровин В.И. и др. 	Литература. 9 класс. В 6-и ч. Ч.4 (для слабовидящих обучающихся)	9	1420.65000000000009
204	Коровина В.Я., Журавлёв В.П., Коровин В.И. и др. 	Литература. 9 класс. В 6-и ч. Ч.5 (для слабовидящих обучающихся)	9	1420.65000000000009
205	Коровина В.Я., Журавлёв В.П., Коровин В.И. и др. 	Литература. 9 класс. В 6-и ч. Ч.6 (для слабовидящих обучающихся)	9	1420.65000000000009
206	\N	\N	\N	\N
207	\N	\N	\N	\N
208	\N	\N	\N	\N
209	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 5 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	5	1420.65000000000009
210	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 5 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	5	1420.65000000000009
211	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 5 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	5	1420.65000000000009
212	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 5 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	5	1420.65000000000009
213	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. 6 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	6	1420.65000000000009
214	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. 6 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	6	1420.65000000000009
215	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. 6 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	6	1420.65000000000009
216	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. 6 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	6	1420.65000000000009
217	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 7 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	7	1420.65000000000009
218	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 7 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	7	1420.65000000000009
219	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 7 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	7	1420.65000000000009
220	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 7 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	7	1420.65000000000009
221	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 8  класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	8	1420.65000000000009
222	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 8  класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	8	1420.65000000000009
223	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 8  класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	8	1420.65000000000009
224	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 8  класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	8	1420.65000000000009
225	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 9  класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	9	1420.65000000000009
226	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 9  класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	9	1420.65000000000009
227	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 9  класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	9	1420.65000000000009
362	Белага В. В., Ломаченков И. А., Панебратцев Ю. А.	Физика. 7 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	7	2321.55000000000018
228	Ваулина Ю. Е., Дули Д. ., Подоляко О. Е. и др.	Английский язык. 9  класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	9	1420.65000000000009
229	\N	\N	\N	\N
230	Бим И. Л., Рыжова Л. И.	Немецкий язык. 5 класс. В 5-и ч. Ч.1 (для слабовидящих обучающихся)	5	1513.04999999999995
231	Бим И. Л., Рыжова Л. И.	Немецкий язык. 5 класс. В 5-и ч. Ч.2 (для слабовидящих обучающихся)	5	1513.04999999999995
232	Бим И. Л., Рыжова Л. И.	Немецкий язык. 5 класс. В 5-и ч. Ч.3 (для слабовидящих обучающихся)	5	1513.04999999999995
233	Бим И. Л., Рыжова Л. И.	Немецкий язык. 5 класс. В 5-и ч. Ч.4 (для слабовидящих обучающихся)	5	1513.04999999999995
234	Бим И. Л., Рыжова Л. И.	Немецкий язык. 5 класс. В 5-и ч. Ч.5 (для слабовидящих обучающихся)	5	1513.04999999999995
235	\N	\N	\N	\N
236	Кулигина А.С., Щепилова А.В.	Французский язык. 6 класс. В 3-х частях. Часть 1 (для слабовидящих обучающихся)	6	2113.65000000000009
237	Кулигина А.С., Щепилова А.В.	Французский язык. 6 класс. В 3-х частях. Часть 2 (для слабовидящих обучающихся)	6	2113.65000000000009
238	Кулигина А.С., Щепилова А.В.	Французский язык. 6 класс. В 3-х частях. Часть 3 (для слабовидящих обучающихся)	6	2113.65000000000009
239	Кулигина А.С., Щепилова А.В.	Французский язык. 9 класс. В 3-х частях. Часть 1 (для слабовидящих обучающихся)	9	2113.65000000000009
240	Кулигина А.С., Щепилова А.В.	Французский язык. 9 класс. В 3-х частях. Часть 2 (для слабовидящих обучающихся)	9	2113.65000000000009
241	Кулигина А.С., Щепилова А.В.	Французский язык. 9 класс. В 3-х частях. Часть 3 (для слабовидящих обучающихся)	9	2113.65000000000009
242	\N	\N	\N	\N
243	\N	\N	\N	\N
244	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 5 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	5	1778.70000000000005
245	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 5 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	5	1755.59999999999991
246	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 5 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	5	1640.09999999999991
247	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 5 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	5	1593.90000000000009
248	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 6 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	6	1235.84999999999991
249	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 6 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	6	1235.84999999999991
250	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 6 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	6	1235.84999999999991
251	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 6 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	6	1778.70000000000005
252	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 7 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	7	1235.84999999999991
253	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 7 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	7	1235.84999999999991
254	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 7 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	7	1628.54999999999995
255	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностарнный язык. 7 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	7	1778.70000000000005
256	Аверин М.М., Джин Ф., Рорман Л. . и др.	Немецкий язык. Второй иностранный язык. 8 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	8	1439.56999999999994
257	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 8 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	8	1439.56999999999994
258	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 8 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	8	1439.56999999999994
259	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 8 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	8	1570.3599999999999
260	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 9 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	9	2079
261	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 9 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	9	2079
262	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 9 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	9	2079
263	Аверин М.М., Джин Ф. ., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 9 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	9	2021.25
264	\N	\N	\N	\N
265	\N	\N	\N	\N
266	\N	\N	\N	\N
267	Арсентьев Н. М., Данилов А. А., Стефанович П. С. и др. / Под ред. Торкунова А. В.	История России. 6 класс. В 5-и ч. Ч. 1 (для слабовидящих обучающихся)	6	935.549999999999955
268	Арсентьев Н. М., Данилов А. А., Стефанович П. С. и др. / Под ред. Торкунова А. В.	История России. 6 класс. В 5-и ч. Ч. 2 (для слабовидящих обучающихся)	6	1478.40000000000009
269	Арсентьев Н. М., Данилов А. А., Стефанович П. С. и др. / Под ред. Торкунова А. В.	История России. 6 класс. В 5-и ч. Ч. 3 (для слабовидящих обучающихся)	6	693
270	Арсентьев Н. М., Данилов А. А., Стефанович П. С. и др. / Под ред. Торкунова А. В.	История России. 6 класс. В 5-и ч. Ч. 4 (для слабовидящих обучающихся)	6	1328.25
271	Арсентьев Н. М., Данилов А. А., Стефанович П. С. и др. / Под ред. Торкунова А. В.	История России. 6 класс. В 5-и ч. Ч. 5 (для слабовидящих обучающихся)	6	1316.70000000000005
272	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 7 класс. В 4-х ч. Ч. 1 (для слабовидящих обучающихся)     	7	981.75
273	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 7 класс. В 4-х ч. Ч. 2 (для слабовидящих обучающихся)	7	1559.25
274	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 7 класс. В 4-х ч. Ч. 3 (для слабовидящих обучающихся)	7	1559.25
275	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 7 класс. В 4-х ч. Ч. 4 (для слабовидящих обучающихся)	7	981.75
276	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 8 класс. В 4-х ч. Ч. 1 (для слабовидящих обучающихся)	8	1559.25
277	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 8 класс. В 4-х ч. Ч. 2 (для слабовидящих обучающихся)	8	820.049999999999955
278	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 8 класс. В 4-х ч. Ч. 3 (для слабовидящих обучающихся)	8	1582.34999999999991
279	Арсентьев Н. М., Данилов А. А., Курукин И. В. и др. / Под ред. Торкунова А. В.	История России. 8 класс. В 4-х ч. Ч. 4 (для слабовидящих обучающихся)	8	1224.29999999999995
280	Арсентьев Н. М., Данилов А. А., Левандовский А. А. и др. / Под ред. Торкунова А. В.	История России. 9 класс. В 5-и ч. Ч. 1 (для слабовидящих обучающихся)       	9	1328.25
281	Арсентьев Н. М., Данилов А. А., Левандовский А. А. и др. / Под ред. Торкунова А. В.	История России. 9 класс. В 5-и ч. Ч. 2 (для слабовидящих обучающихся)	9	981.75
282	Арсентьев Н. М., Данилов А. А., Левандовский А. А. и др. / Под ред. Торкунова А. В.	История России. 9 класс. В 5-и ч. Ч. 3 (для слабовидящих обучающихся)	9	981.75
283	Арсентьев Н. М., Данилов А. А., Левандовский А. А. и др. / Под ред. Торкунова А. В.	История России. 9 класс.  В 5-и ч. Ч. 4 (для слабовидящих обучающихся)	9	1224.29999999999995
284	Арсентьев Н. М., Данилов А. А., Левандовский А. А. и др. / Под ред. Торкунова А. В.	История России. 9 класс.  В 5-и ч. Ч. 5 (для слабовидящих обучающихся)	9	1559.25
285	\N	\N	\N	\N
286	Вигасин А. А., Годер Г. И., Свенцицкая И. С. / Под ред. Искендерова А. А.	Всеобщая история. История Древнего мира. 5 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	5	1778.70000000000005
287	Вигасин А. А., Годер Г. И., Свенцицкая И. С. / Под ред. Искендерова А. А.	Всеобщая история. История Древнего мира. 5 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	5	1778.70000000000005
288	Вигасин А. А., Годер Г. И., Свенцицкая И. С. / Под ред. Искендерова А. А.	Всеобщая история. История Древнего мира. 5 класс.В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	5	1778.70000000000005
289	Агибалова Е. В., Донской Г. М. / Под ред. Сванидзе А. А.	Всеобщая история. История Средних веков. 6 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	6	2009.70000000000005
290	Агибалова Е. В., Донской Г. М. / Под ред. Сванидзе А. А.	Всеобщая история. История Средних веков. 6 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	6	1882.65000000000009
291	Агибалова Е. В., Донской Г. М. / Под ред. Сванидзе А. А.	Всеобщая история. История Средних веков. 6 класс. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	6	2009.70000000000005
292	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 7 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	7	2182.94999999999982
293	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 7 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	7	2009.70000000000005
294	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 7 класс. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	7	2009.70000000000005
295	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. и др. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 8 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	8	2009.70000000000005
296	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. и др. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 8 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	8	1824.90000000000009
297	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. и др. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 8 класс. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	8	2009.70000000000005
298	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. и др. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 9 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	9	2182.94999999999982
299	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. и др. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 9 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	9	2182.94999999999982
300	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М. и др. / Под ред. Искендерова А. А.	Всеобщая история. История Нового времени. 9 класс. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	9	2182.94999999999982
301	\N	\N	\N	\N
302	Боголюбов Л.Н., Виноградова Н.Ф., Городецкая Н.И. и др.	Обществознание. 6 класс. В 2-х ч. Ч. 1 (для слабовидящих обучающихся)	6	1697.84999999999991
303	Боголюбов Л.Н., Виноградова Н.Ф., Городецкая Н.И. и др.	Обществознание. 6 класс. В 2-х ч. Ч. 2 (для слабовидящих обучающихся)	6	1697.84999999999991
304	Боголюбов Л. Н., Иванова Л. Ф., Городецкая Н. И., и др.	Обществознание. 7 класс. В 2-х ч. Ч. 1 (для слабовидящих обучающихся)	7	1958
305	Боголюбов Л. Н., Иванова Л. Ф., Городецкая Н. И., и др.	Обществознание. 7 класс. В 2-х ч. Ч. 2 (для слабовидящих обучающихся)	7	1386
306	Боголюбов Л. Н., Лазебникова А.Ю., Городецкая Н. И. и др	Обществознание. 8 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	8	2067.44999999999982
307	Боголюбов Л. Н., Лазебникова А.Ю., Городецкая Н. И. и др	Обществознание. 8 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	8	1478.40000000000009
308	Боголюбов Л. Н., Лазебникова А.Ю., Городецкая Н. И. и др	Обществознание. 8 класс.В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	8	2171.40000000000009
309	Боголюбов Л. Н., Лазебникова А.Ю., Матвеев А. И. и др.	Обществознание. 9 класс. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	9	1720.95000000000005
310	Боголюбов Л. Н., Лазебникова А.Ю., Матвеев А. И. и др.	Обществознание. 9 класс. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	9	1351.34999999999991
311	Боголюбов Л. Н., Лазебникова А.Ю., Матвеев А. И. и др.	Обществознание. 9 класс. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	9	1951.95000000000005
312	\N	\N	\N	\N
313	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 5-6 классы. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	 5 - 6	1674.75
314	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 5-6 классы. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	 5 - 6	1674.75
315	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 5-6 классы. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	 5 - 6	1386
316	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 7 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	7	1928.84999999999991
317	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 7 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	7	1928.84999999999991
318	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 7 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	7	1928.84999999999991
319	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 8 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	8	1928.84999999999991
320	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 8 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	8	1928.84999999999991
321	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 8 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	8	1928.84999999999991
322	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 9 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	9	1928.84999999999991
323	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 9 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	9	1928.84999999999991
324	Алексеев А. И., Николина В. В., Липкина Е. К. и др.	География. 9 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	9	1767.15000000000009
325	\N	\N	\N	\N
326	\N	\N	\N	\N
327	Бунимович Е. А., Дорофеев Г. В., Суворова С. Б. и др.	Математика. Арифметика. Геометрия. 5 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	5	1940.40000000000009
328	Бунимович Е. А., Дорофеев Г. В., Суворова С. Б. и др.	Математика. Арифметика. Геометрия. 5 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	5	1940.40000000000009
329	Бунимович Е. А., Дорофеев Г. В., Суворова С. Б. и др.	Математика. Арифметика. Геометрия. 5 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	5	1940.40000000000009
330	Бунимович Е. А., Дорофеев Г. В., Суворова С. Б. и др.	Математика. Арифметика. Геометрия. 5 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	5	1940.40000000000009
331	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. 6 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	6	1940.40000000000009
332	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. 6 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	6	2090.55000000000018
333	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. 6 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	6	1940.40000000000009
334	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. 6 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	6	1940.40000000000009
335	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 5 класс. В 4-х ч.. Ч.1 (для слабовидящих обучающихся)	5	2298.44999999999982
336	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 5 класс. В 4-х ч.. Ч.2 (для слабовидящих обучающихся)	5	2298.44999999999982
337	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 5 класс. В 4-х ч.. Ч.3 (для слабовидящих обучающихся)	5	1951.95000000000005
338	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 5 класс. В 4-х ч.. Ч.4 (для слабовидящих обучающихся)	5	1951.95000000000005
339	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 6 класс. В 4-х ч.. Ч.1 (для слабовидящих обучающихся)	6	2298.44999999999982
340	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 6 класс. В 4-х ч.. Ч.2 (для слабовидящих обучающихся)	6	2113.65000000000009
341	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 6 класс. В 4-х ч.. Ч.3 (для слабовидящих обучающихся)	6	1767.15000000000009
342	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика. 6 класс. В 4-х ч.. Ч.4 (для слабовидящих обучающихся)	6	2113.65000000000009
343	\N	\N	\N	\N
344	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 7 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	7	1940.40000000000009
345	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 7 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	7	1940.40000000000009
346	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 7 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	7	1940.40000000000009
347	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 8 класс. В 4-х ч. Ч.1  (для слабовидящих обучающихся)	8	1744.04999999999995
348	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 8 класс. В 4-х ч. Ч.2  (для слабовидящих обучающихся)	8	1940.40000000000009
349	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 8 класс. В 4-х ч. Ч.3  (для слабовидящих обучающихся)	8	1744.04999999999995
350	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 8 класс. В 4-х ч. Ч.4  (для слабовидящих обучающихся)	8	1744.04999999999995
351	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 9 класс. В 4-х ч. Ч.1  (для слабовидящих обучающихся)	9	1940.40000000000009
352	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 9 класс. В 4-х ч. Ч.2  (для слабовидящих обучающихся)	9	1940.40000000000009
353	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 9 класс. В 4-х ч. Ч.3  (для слабовидящих обучающихся)	9	1940.40000000000009
354	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра. 9 класс. В 4-х ч. Ч.4  (для слабовидящих обучающихся)	9	2113.65000000000009
355	\N	\N	\N	\N
356	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Геометрия. 7-9 классы. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	 7 - 9	1744.04999999999995
357	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Геометрия. 7-9 классы. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	 7 - 9	1744.04999999999995
358	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Геометрия. 7-9 классы. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	 7 - 9	1744.04999999999995
359	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Геометрия. 7-9 классы. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	 7 - 9	1744.04999999999995
360	\N	\N	\N	\N
361	\N	\N	\N	\N
363	Белага В. В., Ломаченков И. А., Панебратцев Ю. А.	Физика. 7 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	7	2321.55000000000018
364	Кабардин О. Ф.	Физика. 7 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	7	1709.40000000000009
365	Кабардин О. Ф.	Физика. 7 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	7	1894.20000000000005
366	Кабардин О. Ф.	Физика. 7 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	7	1790.25
367	Кабардин О. Ф.	Физика. 8 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	8	1790.25
368	Кабардин О. Ф.	Физика. 8 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	8	1894.20000000000005
369	Кабардин О. Ф.	Физика. 8 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	8	1790.25
370	Кабардин О. Ф.	Физика. 9 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	9	2067.44999999999982
371	Кабардин О. Ф.	Физика. 9 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	9	2206.05000000000018
372	\N	\N	\N	\N
373	Пасечник В. В., Суматохин С. В., Калинова Г. С. и др. / Под ред. Пасечника В. В.	Биология. 5-6 классы. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	 5 - 6	1925
374	Пасечник В. В., Суматохин С. В., Калинова Г. С. и др. / Под ред. Пасечника В. В.	Биология. 5-6 классы. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	 5 - 6	1881
375	Пасечник В. В., Суматохин С. В., Калинова Г. С. / Под ред. Пасечника В. В.	Биология. 7 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	7	1573
376	Пасечник В. В., Суматохин С. В., Калинова Г. С. / Под ред. Пасечника В. В.	Биология. 7 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	7	1573
377	Пасечник В. В., Каменский А. А., Швецов Г. Г. / Под ред. Пасечника В. В.	Биология. 8 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	8	1801.79999999999995
378	Пасечник В. В., Каменский А. А., Швецов Г. Г. / Под ред. Пасечника В. В.	Биология. 8 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	8	1767.15000000000009
379	Пасечник В. В., Каменский А. А., Швецов Г. Г. / Под ред. Пасечника В. В.	Биология. 8 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	8	1801.79999999999995
380	Пасечник В. В., Каменский А. А., Швецов Г. Г. и др. / Под ред. Пасечника В. В.	Биология. 9 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	9	1882.65000000000009
381	Пасечник В. В., Каменский А. А., Швецов Г. Г. и др. / Под ред. Пасечника В. В.	Биология. 9 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	9	1882.65000000000009
382	\N	\N	\N	\N
383	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 8 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	8	2113.65000000000009
384	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 8 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	8	2113.65000000000009
385	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 9 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	9	2090.55000000000018
386	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 9 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	9	2159.84999999999991
387	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 8 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	8	1605.45000000000005
388	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 8 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	8	1605.45000000000005
389	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 9 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	9	1697.84999999999991
390	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 9 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	9	1513.04999999999995
391	\N	\N	\N	\N
392	\N	\N	\N	\N
393	Горяева Н. А., Островская О. В. / Под ред. Неменского Б. М.	Изобразительное искусство. 5 класс. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	5	1801.79999999999995
394	Горяева Н. А., Островская О. В. / Под ред. Неменского Б. М.	Изобразительное искусство. 5 класс. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	5	2148.30000000000018
395	Горяева Н. А., Островская О. В. / Под ред. Неменского Б. М.	Изобразительное искусство. 5 класс. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	5	1697.84999999999991
396	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 6 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	6	1755.59999999999991
397	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 6 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	6	1409.09999999999991
398	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 6 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	6	1801.79999999999995
399	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. 6 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	6	1801.79999999999995
400	Питерских А. С. / Под ред. Неменского Б. М.	Изобразительное искусство. 8 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	8	2517.90000000000009
401	Питерских А. С. / Под ред. Неменского Б. М.	Изобразительное искусство. 8 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	8	2229.15000000000009
402	Питерских А. С. / Под ред. Неменского Б. М.	Изобразительное искусство. 8 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	8	2113.65000000000009
403	Питерских А. С. / Под ред. Неменского Б. М.	Изобразительное искусство. 8 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	8	2113.65000000000009
404	\N	\N	\N	\N
405	Сергеева Г. П., Критская Е. Д.	Музыка. 5 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	5	1720.95000000000005
406	Сергеева Г. П., Критская Е. Д.	Музыка. 5 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	5	2159.84999999999991
407	Сергеева Г. П., Критская Е. Д.	Музыка. 6 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	6	2159.84999999999991
408	Сергеева Г. П., Критская Е. Д.	Музыка. 6 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	6	1848
409	\N	\N	\N	\N
410	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др./Под ред. Казакевича В.М.	Технология. 5 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	5	2055.90000000000009
411	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича B.M.	Технология. 5 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	5	2055.90000000000009
412	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др./Под ред. Казакевича В.М.	Технология. 6 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	6	2286.90000000000009
413	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича B.M.	Технология. 6 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	6	2286.90000000000009
414	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др./Под ред. Казакевича В.М.	Технология. 7 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	7	1975.04999999999995
415	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича B.M.	Технология. 7 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	7	1975.04999999999995
416	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др./Под ред. Казакевича В.М.	Технология. 8-9 классы. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	 8 - 9	2263.80000000000018
417	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича B.M.	Технология. 8-9 классы. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	 8 - 9	2148.30000000000018
418	\N	\N	\N	\N
419	\N	\N	\N	\N
420	Виленский М. Я., Туревский И. М., Торочкова Т. Ю. и др. / Под ред. Виленского М. Я.	Физическая культура. 5-7 классы. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	 5 - 7	1894.20000000000005
421	Виленский М. Я., Туревский И. М., Торочкова Т. Ю. и др. / Под ред. Виленского М. Я.	Физическая культура. 5-7 классы. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	 5 - 7	2032.79999999999995
422	Виленский М. Я., Туревский И. М., Торочкова Т. Ю. и др. / Под ред. Виленского М. Я.	Физическая культура. 5-7 классы. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	 5 - 7	1235.84999999999991
423	Матвеев А. П.	Физическая культура. 6-7 классы. В 2-х ч. Ч. 1 (для слабовидящих обучающихся)	 6 - 7	2159.84999999999991
424	Матвеев А. П.	Физическая культура. 6-7 классы. В 2-х ч. Ч. 2 (для слабовидящих обучающихся)	 6 - 7	2159.84999999999991
425	\N	\N	\N	\N
426	\N	\N	\N	\N
427	\N	\N	\N	\N
428	Рыбченкова Л. М., Александрова О. М., Нарушевич А. Г. и др.	Русский язык. 10-11 классы. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	 10 - 11	2310
429	Рыбченкова Л. М., Александрова О. М., Нарушевич А. Г. и др.	Русский язык. 10-11 классы. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	 10 - 11	2310
430	\N	\N	\N	\N
431	Лебедев Ю. В., Романова А. Н., Смирнова Л. Н.	Русский язык и литература. Литература. 10 класс. В 5-и ч. Ч.1. (для слабовидящих обучающихся)	10	2310
432	Лебедев Ю. В., Романова А. Н., Смирнова Л. Н.	Русский язык и литература. Литература. 10 класс. В 5-и ч. Ч.2. (для слабовидящих обучающихся)	10	2310
433	Лебедев Ю. В., Романова А. Н., Смирнова Л. Н.	Русский язык и литература. Литература. 10 класс. В 5-и ч. Ч.3. (для слабовидящих обучающихся)	10	2275.34999999999991
434	Лебедев Ю. В., Романова А. Н., Смирнова Л. Н.	Русский язык и литература. Литература. 10 класс. В 5-и ч. Ч.4. (для слабовидящих обучающихся)	10	2194.5
435	Лебедев Ю. В., Романова А. Н., Смирнова Л. Н.	Русский язык и литература. Литература. 10 класс. В 5-и ч. Ч.5. (для слабовидящих обучающихся)	10	2275.34999999999991
436	Михайлов О. Н., Шайтанов И. О., Чалмаев В. А. и др. / Под ред. Журавлева В. П.	Русский язык и литература. Литература. 11 кл.. В 5-и ч.. Ч.1. (для слабовидящих обучающихся)	11	2310
471	Гладкий Ю. Н., Николина В. В	География. 10 класс. Базовый и углублённый уровени. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	10	2044.34999999999991
437	Михайлов О. Н., Шайтанов И. О., Чалмаев В. А. и др. / Под ред. Журавлева В. П.	Русский язык и литература. Литература. 11 кл.. В 5-и ч.. Ч.2. (для слабовидящих обучающихся)	11	2310
438	Михайлов О. Н., Шайтанов И. О., Чалмаев В. А. и др. / Под ред. Журавлева В. П.	Русский язык и литература. Литература. 11 кл.. В 5-и ч.. Ч.3. (для слабовидящих обучающихся)	11	2194.5
439	Михайлов О. Н., Шайтанов И. О., Чалмаев В. А. и др. / Под ред. Журавлева В. П.	Русский язык и литература. Литература. 11 кл.. В 5-и ч.. Ч.4. (для слабовидящих обучающихся)	11	2194.5
440	Михайлов О. Н., Шайтанов И. О., Чалмаев В. А. и др. / Под ред. Журавлева В. П.	Русский язык и литература. Литература. 11 кл.. В 5-и ч.. Ч.5. (для слабовидящих обучающихся)	11	2194.5
441	\N	\N	\N	\N
442	\N	\N	\N	\N
443	\N	\N	\N	\N
444	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 10 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	10	2321.55000000000018
445	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 10 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	10	2321.55000000000018
446	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 10 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	10	2321.55000000000018
447	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 10 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	10	2321.55000000000018
448	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 11 класс. В 4-х частях. Ч. 1 (для слабовидящих обучающихся)	11	2321.55000000000018
449	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 11 класс. В 4-х частях. Ч. 2 (для слабовидящих обучающихся)	11	2321.55000000000018
450	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 11 класс. В 4-х частях. Ч. 3 (для слабовидящих обучающихся)	11	2321.55000000000018
451	Афанасьева О.В., Дули Д., Михеева И. В. и др.	Английский язык. 11 класс. В 4-х частях. Ч. 4 (для слабовидящих обучающихся)	11	2321.55000000000018
452	\N	\N	\N	\N
453	\N	\N	\N	\N
454	\N	\N	\N	\N
455	\N	\N	\N	\N
456	\N	\N	\N	\N
457	Горинов М. М., Данилов А.А., Моруков М. Ю. и др. / Под ред. Торкунова А. В.	История России. 10 класс. Базовый и углублённый уровни. В 6-и ч. Ч. 1 (для слабовидящих обучающихся)	10	1443.75
458	Горинов М. М., Данилов А.А., Моруков М. Ю. и др. / Под ред. Торкунова А. В.	История России. 10 класс. Базовый и углублённый уровни. В 6-и ч. Ч. 2 (для слабовидящих обучающихся)	10	1917.29999999999995
459	Горинов М. М., Данилов А.А., Моруков М. Ю. и др. / Под ред. Торкунова А. В.	История России. 10 класс. Базовый и углублённый уровни. В 6-и ч. Ч. 3 (для слабовидящих обучающихся)	10	1443.75
460	Горинов М. М., Данилов А.А., Моруков М. Ю. и др. / Под ред. Торкунова А. В.	История России. 10 класс. Базовый и углублённый уровни. В 6-и ч. Ч. 4 (для слабовидящих обучающихся)	10	1917.29999999999995
461	Горинов М. М., Данилов А.А., Моруков М. Ю. и др. / Под ред. Торкунова А. В.	История России. 10 класс. Базовый и углублённый уровни. В 6-и ч. Ч. 5 (для слабовидящих обучающихся)	10	1316.70000000000005
462	Горинов М. М., Данилов А.А., Моруков М. Ю. и др. / Под ред. Торкунова А. В.	История России. 10 класс. Базовый и углублённый уровни. В 6-и ч. Ч. 6 (для слабовидящих обучающихся)	10	1917.29999999999995
463	Уколова В.И., \nРевякин А. В./ \nПод ред. Чубарьяна А.О.	История. Всеобщая история. 10 класс. Базовый уровень. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	10	2240.69999999999982
464	Уколова В.И., \nРевякин А. В./ \nПод ред. Чубарьяна А.О.	История. Всеобщая история. 10 класс. Базовый уровень. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	10	2171.40000000000009
465	Уколова В.И., \nРевякин А. В./ \nПод ред. Чубарьяна А.О.	История. Всеобщая история. 10 класс. Базовый уровень. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	10	2171.40000000000009
466	Улунян А. А., Сергеев Е. Ю. /Под ред. Чубарьяна А.О.       	История. Всеобщая история. 11 класс. Базовый уровень. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	11	2171.40000000000009
467	Улунян А. А., Сергеев Е. Ю. /Под ред. Чубарьяна А.О.       	История. Всеобщая история. 11 класс. Базовый уровень.  В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	11	2240.69999999999982
468	Улунян А. А., Сергеев Е. Ю. /Под ред. Чубарьяна А.О.       	История. Всеобщая история. 11 класс. Базовый уровень. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	11	1917.29999999999995
469	\N	\N	\N	\N
470	Гладкий Ю. Н., Николина В. В	География. 10 класс. Базовый и углублённый уровени. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	10	2159.84999999999991
472	Гладкий Ю. Н., Николина В. В	География. 10 класс. Базовый и углублённый уровени. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	10	2390.84999999999991
473	Гладкий Ю. Н., Николина В. В.	География. 11 класс. Базовый и углублённый уровени. В 3-х ч. Ч.1 (для слабовидящих обучающихся)	11	1986.59999999999991
474	Гладкий Ю. Н., Николина В. В.	География. 11 класс. Базовый и углублённый уровени. В 3-х ч. Ч.2 (для слабовидящих обучающихся)	11	1801.79999999999995
475	Гладкий Ю. Н., Николина В. В.	География. 11 класс. Базовый и углублённый уровени. В 3-х ч. Ч.3 (для слабовидящих обучающихся)	11	1836.45000000000005
476	Максаковский В.П.	География. 10-11 классы. Базовый уровень. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	 10 - 11	2194.5
477	Максаковский В.П.	География. 10-11 классы. Базовый уровень. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	 10 - 11	2194.5
478	Максаковский В.П.	География. 10-11 классы. Базовый уровень. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	 10 - 11	2136.75
479	Максаковский В.П.	География. 10-11 классы. Базовый уровень. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	 10 - 11	2136.75
480	\N	\N	\N	\N
481	\N	\N	\N	\N
482	Боголюбов Л. Н., Лазебникова А. Ю., Матвеев А. И.и др. / Под ред. Боголюбова Л. Н., Лазебниковой А. Ю.	Обществознание. 10 класс. Базовый уровень. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	10	1836.45000000000005
483	Боголюбов Л. Н., Лазебникова А. Ю., Матвеев А. И.и др. / Под ред. Боголюбова Л. Н., Лазебниковой А. Ю.	Обществознание. 10 класс. Базовый уровень. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	10	1593.90000000000009
484	Боголюбов Л. Н., Лазебникова А. Ю., Матвеев А. И.и др. / Под ред. Боголюбова Л. Н., Лазебниковой А. Ю.	Обществознание. 10 класс. Базовый уровень. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	10	2240.69999999999982
485	Боголюбов Л. Н., Городецкая Н. И., Лазебникова А. Ю. и др. / Под ред. Боголюбова Л. Н., Лазебниковой А. Ю.	Обществознание. 11 класс. Базовый уровень. В 3-х ч. Ч. 1 (для слабовидящих обучающихся)	11	1951.95000000000005
486	Боголюбов Л. Н., Городецкая Н. И., Лазебникова А. Ю. и др. / Под ред. Боголюбова Л. Н., Лазебниковой А. Ю.	Обществознание. 11 класс. Базовый уровень. В 3-х ч. Ч. 2 (для слабовидящих обучающихся)	11	1720.95000000000005
487	Боголюбов Л. Н., Городецкая Н. И., Лазебникова А. Ю. и др. / Под ред. Боголюбова Л. Н., Лазебниковой А. Ю.	Обществознание. 11 класс. Базовый уровень. В 3-х ч. Ч. 3 (для слабовидящих обучающихся)	11	2240.69999999999982
488	\N	\N	\N	\N
489	\N	\N	\N	\N
490	Алимов Ш. А., Колягин Ю. М., Ткачева М. В. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10-11 классы. В 4-х ч. Ч.1  (для слабовидящих обучающихся)	 10 - 11	2113.65000000000009
491	Алимов Ш. А., Колягин Ю. М., Ткачева М. В. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10-11 классы. В 4-х ч. Ч.2  (для слабовидящих обучающихся)	 10 - 11	2113.65000000000009
492	Алимов Ш. А., Колягин Ю. М., Ткачева М. В. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10-11 классы. В 4-х ч. Ч.3  (для слабовидящих обучающихся)	 10 - 11	2113.65000000000009
493	Алимов Ш. А., Колягин Ю. М., Ткачева М. В. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10-11 классы. В 4-х ч. Ч.4  (для слабовидящих обучающихся)	 10 - 11	2113.65000000000009
494	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10-11 классы. \nВ 3-х ч. Ч.1 (для слабовидящих \nобучающихся)	 10 - 11	2113.65000000000009
495	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10-11 классы. \nВ 3-х ч. Ч.2 (для слабовидящих \nобучающихся)	 10 - 11	2113.65000000000009
496	Атанасян Л. С., Бутузов В. Ф., Кадомцев С. Б. и др.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10-11 классы. \nВ 3-х ч. Ч.3 (для слабовидящих \nобучающихся)	 10 - 11	2113.65000000000009
497	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10 класс. В 4-х частях. Часть 1. (для слабовидящих обучающихся)	10	1951.95000000000005
529	Беляев Д. ., Дымшиц Г. М., Кузнецова Л. Н. и др. / Под ред. Беляева Д. ., Дымшица Г. М.	Биология. 10 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	10	2090.55000000000018
498	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10 класс. В 4-х частях. Часть 2. (для слабовидящих обучающихся)	10	1951.95000000000005
499	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10 класс. В 4-х частях. Часть 3. (для слабовидящих обучающихся)	10	1951.95000000000005
500	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10 класс. В 4-х частях. Часть 4. (для слабовидящих обучающихся)	10	1951.95000000000005
501	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 11 класс. В 4-х частях. \nЧасть 1. (версия для слабовидящих)	11	1951.95000000000005
502	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 11 класс. В 4-х частях. \nЧасть 2. (версия для слабовидящих)	11	1951.95000000000005
503	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 11 класс. В 4-х частях. \nЧасть 3. (версия для слабовидящих)	11	1951.95000000000005
504	Никольский С. М., Потапов М. К., Решетников Н. Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 11 класс. В 4-х частях. \nЧасть 4. (версия для слабовидящих)	11	1951.95000000000005
505	\N	\N	\N	\N
506	\N	\N	\N	\N
507	Мякишев Г. Я., Буховцев Б. Б., Сотский Н. Н. / Под ред. Парфентьевой Н. А.	Физика. 10 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	10	2321.55000000000018
508	Мякишев Г. Я., Буховцев Б. Б., Сотский Н. Н. / Под ред. Парфентьевой Н. А.	Физика. 10 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	10	2067.44999999999982
509	Мякишев Г. Я., Буховцев Б. Б., Сотский Н. Н. / Под ред. Парфентьевой Н. А.	Физика. 10 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	10	2229.15000000000009
510	Мякишев Г. Я., Буховцев Б. Б., Сотский Н. Н. / Под ред. Парфентьевой Н. А.	Физика. 10 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	10	2148.30000000000018
511	Мякишев Г. Я., Буховцев Б. Б., Чаругин В. М. / Под ред. Парфентьевой Н. А.	Физика. 11 класс. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	11	2321.55000000000018
512	Мякишев Г. Я., Буховцев Б. Б., Чаругин В. М. / Под ред. Парфентьевой Н. А.	Физика. 11 класс. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	11	2148.30000000000018
513	Мякишев Г. Я., Буховцев Б. Б., Чаругин В. М. / Под ред. Парфентьевой Н. А.	Физика. 11 класс. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	11	2206.05000000000018
514	Мякишев Г. Я., Буховцев Б. Б., Чаругин В. М. / Под ред. Парфентьевой Н. А.	Физика. 11 класс. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	11	2148.30000000000018
515	\N	\N	\N	\N
516	Чаругин В.М.	Астрономия. 10 - 11 классы. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	 10 - 11	2055.90000000000009
517	Чаругин В.М.	Астрономия. 10 - 11 классы. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	 10 - 11	2055.90000000000009
518	\N	\N	\N	\N
519	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 10 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	10	2113.65000000000009
520	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 10 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	10	2113.65000000000009
521	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 11 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	11	2113.65000000000009
522	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 11 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	11	2113.65000000000009
523	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 10 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	10	1697.84999999999991
524	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 10 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	10	1697.84999999999991
525	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 11 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	11	1605.45000000000005
526	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 11 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	11	1697.84999999999991
527	\N	\N	\N	\N
528	Беляев Д. ., Дымшиц Г. М., Кузнецова Л. Н. и др. / Под ред. Беляева Д. ., Дымшица Г. М.	Биология. 10 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	10	2090.55000000000018
530	Беляев Д. ., Дымшиц Г. М., Бородин П. М. и др. / Под ред. Беляева Д. ., Дымшица Г. М.	Биология. 11 класс. В 2-х ч. Ч.1 (для слабовидящих обучающихся)	11	2055.90000000000009
531	Беляев Д. ., Дымшиц Г. М., Бородин П. М. и др. / Под ред. Беляева Д. ., Дымшица Г. М.	Биология. 11 класс. В 2-х ч. Ч.2 (для слабовидящих обучающихся)	11	2159.84999999999991
532	\N	\N	\N	\N
533	\N	\N	\N	\N
534	Лях В. И.	Физическая культура. 10-11 классы. В 2-х ч. Ч. 1 (для слабовидящих обучающихся)	 10 - 11	2437.05000000000018
535	Лях В. И.	Физическая культура. 10-11 классы. В 2-х ч. Ч. 2 (для слабовидящих обучающихся)	 10 - 11	2344.65000000000009
536	\N	\N	\N	\N
537	\N	\N	\N	\N
538	\N	\N	\N	\N
539	\N	\N	\N	\N
540	Сергеева Г. П., Кашекова И. Э., Критская Е. Д.	Искусство. 8-9 классы. В 4-х ч. Ч.1 (для слабовидящих обучающихся)	 8 - 9	1651.65000000000009
541	Сергеева Г. П., Кашекова И. Э., Критская Е. Д.	Искусство. 8-9 классы. В 4-х ч. Ч.2 (для слабовидящих обучающихся)	 8 - 9	1651.65000000000009
542	Сергеева Г. П., Кашекова И. Э., Критская Е. Д.	Искусство. 8-9 классы. В 4-х ч. Ч.3 (для слабовидящих обучающихся)	 8 - 9	1651.65000000000009
543	Сергеева Г. П., Кашекова И. Э., Критская Е. Д.	Искусство. 8-9 классы. В 4-х ч. Ч.4 (для слабовидящих обучающихся)	 8 - 9	1778.70000000000005
\.


--
-- Data for Name: book_prosvet_fp; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_prosvet_fp (id, author, name, grade, price) FROM stdin;
1	\N	\N	\N	\N
2	\N	\N	\N	\N
3	\N	\N	\N	\N
4	\N	\N	\N	\N
5	Горецкий В.Г., Кирюшкин В.А., Виноградская Л.А. и др.	Азбука. 1 класс. В двух частях. Часть 1	1	301.620000000000005
6	Горецкий В.Г., Кирюшкин В.А., Виноградская Л.А. и др.	Азбука. 1 класс. В двух частях. Часть 2	1	301.620000000000005
7	Канакина В.П., Горецкий В.Г.	Русский язык. 1 класс. 	1	374
8	Канакина В.П., Горецкий В.Г.	Русский язык. 2 класс. В двух частях. Часть 1	2	382.800000000000011
9	Канакина В.П., Горецкий В.Г.	Русский язык. 2 класс. В двух частях. Часть 2	2	382.800000000000011
10	Канакина В.П., Горецкий В.Г.	Русский язык. 3 класс. В двух частях. Часть 1	3	382.800000000000011
11	Канакина В.П., Горецкий В.Г.	Русский язык. 3 класс. В двух частях. Часть 2	3	382.800000000000011
12	Канакина В.П., Горецкий В.Г.	Русский язык. 4 класс. В двух частях. Часть 1	4	382.800000000000011
13	Канакина В.П., Горецкий В.Г.	Русский язык. 4 класс. В двух частях. Часть 2	4	382.800000000000011
14	Климанова Л.Ф., Макеева С.Г.	Азбука. 1 класс . В двух частях. Часть 1	1	301.620000000000005
15	Климанова Л.Ф., Макеева С.Г.	Азбука. 1 класс . В двух частях. Часть 2	1	301.620000000000005
16	Климанова Л.Ф., Макеева С.Г., Бабушкина Т.В.	Русский язык. 1 класс. 	1	374
17	Климанова Л.Ф.,  Бабушкина Т.В.	Русский язык. 2 класс. В двух частях. Часть 1	2	382.800000000000011
18	Климанова Л.Ф.,  Бабушкина Т.В.	Русский язык. 2 класс. В двух частях. Часть 2	2	382.800000000000011
19	Климанова Л.Ф.,  Бабушкина Т.В.	Русский язык. 3 класс. В двух частях. Часть 1	3	382.800000000000011
20	Климанова Л.Ф.,  Бабушкина Т.В.	Русский язык. 3 класс. В двух частях. Часть 2	3	382.800000000000011
21	Климанова Л.Ф.,  Бабушкина Т.В.	Русский язык. 4 класс. В двух частях. Часть 1	4	382.800000000000011
22	Климанова Л.Ф.,  Бабушкина Т.В.	Русский язык. 4 класс. В двух частях. Часть 2	4	382.800000000000011
23	\N	\N	\N	\N
24	Климанова Л.Ф., Горецкий В.Г., Виноградская Л.А.	Литературное чтение. 1 класс. В двух частях. Часть 1	1	281.70999999999998
25	Климанова Л.Ф., Горецкий В.Г., Виноградская Л.А. 	Литературное чтение. 1 класс. В двух частях. Часть 2	1	281.70999999999998
26	Климанова Л.Ф., Виноградская Л.А., Горецкий В.Г.	Литературное чтение. 2 класс. В двух частях. Часть 1	2	393.800000000000011
27	Климанова Л.Ф., Виноградская Л.А., Горецкий В.Г. 	Литературное чтение. 2 класс. В двух частях. Часть 2	2	393.800000000000011
28	Климанова Л.Ф., Виноградская Л.А., Горецкий В.Г.	Литературное чтение. 3 класс. В двух частях. Часть 1	3	393.800000000000011
29	Климанова Л.Ф., Виноградская Л.А., Горецкий В.Г. 	Литературное чтение. 3 класс. В двух частях. Часть 2	3	393.800000000000011
30	Климанова Л.Ф., Виноградская Л.А., Бойкина М.В.	Литературное чтение. 4 класс. В двух частях. Часть 1	4	393.800000000000011
31	Климанова Л.Ф., Виноградская Л.А., Бойкина М.В.	Литературное чтение. 4 класс. В двух частях. Часть 2	4	393.800000000000011
32	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 1 класс. В двух частях. Часть 1	1	247.169999999999987
33	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 1 класс. В двух частях. Часть 2	1	247.169999999999987
34	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 2 класс. В двух частях. Часть 1	2	393.800000000000011
35	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 2 класс. В двух частях. Часть 2	2	393.800000000000011
36	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 3 класс. В двух частях. Часть 1	3	393.800000000000011
37	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 3 класс. В двух частях. Часть 2	3	393.800000000000011
38	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 4 класс. В двух частях. Часть 1	4	393.800000000000011
39	Климанова Л. Ф., Горецкий В.Г., Голованова М.В. и др.	Литературное чтение. 4 класс. В двух частях. Часть 2	4	393.800000000000011
40	Новлянская З.Н.	Литературное чтение. 1 класс. В двух частях. Часть 1	1	321.310000000000002
41	Новлянская З.Н.	Литературное чтение. 1 класс. В двух частях. Часть 2	1	321.310000000000002
42	Новлянская З.Н.	Литературное чтение. 2 класс. В двух частях. Часть 1	2	333.189999999999998
43	Новлянская З.Н.	Литературное чтение. 2 класс. В двух частях. Часть 2	2	333.189999999999998
44	Новлянская З.Н.	Литературное чтение. 3 класс. В двух частях. Часть 1	3	333.189999999999998
45	Новлянская З.Н.	Литературное чтение. 3 класс. В двух частях. Часть 2	3	333.189999999999998
46	Новлянская З.Н.	Литературное чтение. 4 класс. В двух частях. Часть 1	4	333.189999999999998
232	\N	\N	\N	\N
233	\N	\N	\N	\N
234	\N	\N	\N	\N
47	Новлянская З.Н.	Литературное чтение. 4 класс. В двух частях. Часть 2	4	333.189999999999998
48	\N	\N	\N	\N
49	\N	\N	\N	\N
50	\N	\N	\N	\N
51	Алексеев А. А., Смирнова Е. Ю., Э. Хайн и др.	Английский язык. 2 класс	2	475.860000000000014
52	Алексеев А. А., Смирнова Е. Ю., Э. Хайн и др.	Английский язык. 3 класс	3	475.860000000000014
53	Алексеев А. А., Смирнова Е. Ю., Э. Хайн и др.	Английский язык. 4 класс	4	475.860000000000014
54	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 2 класс. В 2 частях. Часть 1	2	336.819999999999993
55	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 2 класс. В 2 частях. Часть 2	2	336.819999999999993
56	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 3 класс. В 2 частях. Часть 1	3	370.589999999999975
57	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 3 класс. В 2 частях. Часть 2	3	370.589999999999975
58	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 4 класс. В 2 частях. Часть 1	4	370.589999999999975
59	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 4 класс. В 2 частях. Часть 2	4	370.589999999999975
60	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 2 класс. В 2 частях. Часть 1	2	284.129999999999995
61	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 2 класс. В 2 частях. Часть 2	2	284.129999999999995
62	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 3 класс. В 2 частях. Часть 1	3	313.610000000000014
63	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 3 класс. В 2 частях. Часть 2	3	313.610000000000014
64	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 4 класс. В 2 частях. Часть 1	4	313.610000000000014
65	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. 4 класс. В 2 частях. Часть 2	4	313.610000000000014
66	Верещагина И. Н., Бондаренко К. А., Притыкина Т. А.	Английский язык. 2 класс. В 2 частях. Часть 1	2	391.70999999999998
67	Верещагина И. Н., Бондаренко К. А., Притыкина Т. А.	Английский язык. 2 класс. В 2 частях. Часть 2	2	391.70999999999998
68	Верещагина И. Н., Притыкина Т. А.	Английский язык. 3 класс. В 2 частях. Часть 1	3	391.70999999999998
69	Верещагина И. Н., Притыкина Т. А.	Английский язык. 3 класс. В 2 частях. Часть 2	3	391.70999999999998
70	Верещагина И. Н., Афанасьева О. В.	Английский язык. 4 класс. В 2 частях. Часть 1	4	391.70999999999998
71	Верещагина И. Н., Афанасьева О. В.	Английский язык. 4 класс. В 2 частях. Часть 2	4	391.70999999999998
72	\N	\N	\N	\N
73	Бим И. Л., Рыжова Л. И.	Немецкий язык. 2 класс. В 2 частях. Часть 1. 	2	332.089999999999975
74	Бим И. Л., Рыжова Л. И.	Немецкий язык. 2 класс. В 2 частях. Часть 2. 	2	332.089999999999975
75	Бим И.Л., Рыжова Л.И., Фомичева Л.М.	Немецкий язык. 3 класс. В 2 частях. Часть 1. 	3	332.089999999999975
76	Бим И.Л., Рыжова Л.И., Фомичева Л.М.	Немецкий язык. 3 класс. В 2 частях. Часть 2. 	3	332.089999999999975
77	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 2 частях. Часть 1. 	4	332.089999999999975
78	Бим И. Л., Рыжова Л. И.	Немецкий язык. 4 класс. В 2 частях. Часть 2. 	4	332.089999999999975
79	Захарова О.Л., Цойнер К.Р.	Немецкий язык. 2 класс. В 2 частях. Часть 1.	2	259.930000000000007
80	Захарова О.Л., Цойнер К.Р.	Немецкий язык. 2 класс. В 2 частях. Часть 2.	2	259.930000000000007
81	Захарова О.Л., Цойнер К.Р.	Немецкий язык. 3 класс. В 2 частях. Часть 1.	3	259.930000000000007
82	Захарова О.Л., Цойнер К.Р.	Немецкий язык. 3 класс. В 2 частях. Часть 2.	3	259.930000000000007
83	Захарова О.Л., Цойнер К.Р.	Немецкий язык. 4 класс. В 2 частях. Часть 1.	4	259.930000000000007
84	Захарова О.Л., Цойнер К.Р.	Немецкий язык. 4 класс. В 2 частях. Часть 2.	4	259.930000000000007
85	\N	\N	\N	\N
86	Касаткина Н.М., Белосельская Т.В.	Французский язык. 2 класс. В двух частях. Часть 1. 	2	366.850000000000023
87	Касаткина Н.М., Белосельская Т.В.	Французский язык. 2 класс. В двух частях. Часть 2. 	2	366.850000000000023
88	Касаткина Н.М., Гусева А.В.	Французский язык. 3 класс. В двух частях. Часть 1.	3	396.990000000000009
89	Касаткина Н.М., Гусева А.В.	Французский язык. 3 класс. В двух частях. Часть 2.	3	396.990000000000009
90	Береговская Э.М.	Французский язык. 4 класс. В двух частях. Часть 1.	4	396.990000000000009
91	Береговская Э.М.	Французский язык. 4 класс. В двух частях. Часть 2. 	4	396.990000000000009
92	Кулигина А.С., Кирьянова М.Г.	Французский язык. 2 класс.   	2	659.450000000000045
93	Кулигина А.С., Кирьянова М.Г.	Французский язык. 3 класс. В двух частях. Часть 1.	3	399.079999999999984
94	Кулигина А.С., Кирьянова М.Г.	Французский язык. 3 класс. В двух частях. Часть 2.	3	399.079999999999984
95	Кулигина А.С.	Французский язык. 4 класс. В двух частях. Часть 1.	4	399.079999999999984
96	Кулигина А.С.	Французский язык. 4 класс. В двух частях. Часть 2.	4	399.079999999999984
97	\N	\N	\N	\N
98	Воинова А.А., Бухарова Ю.А., Морено К.В.	Испанский язык. 2 класс. В двух частях. Часть 1. 	2	431.310000000000002
99	Воинова А.А., Бухарова Ю.А., Морено К.В.	Испанский язык. 2 класс. В двух частях. Часть 2. 	2	431.310000000000002
100	Воинова А.А., Бухарова Ю.А., Морено К.В.	Испанский язык. 3 класс. В двух частях. Часть 1. 	3	431.310000000000002
101	Воинова А.А., Бухарова Ю.А., Морено К.В.	Испанский язык. 3 класс. В двух частях. Часть 2. 	3	431.310000000000002
102	Воинова А.А., Бухарова Ю.А., Морено К.В.	Испанский язык. 4 класс. В двух частях. Часть 1. 	4	431.310000000000002
103	Воинова А.А., Бухарова Ю.А., Морено К.В.	Испанский язык. 4 класс. В двух частях. Часть 2. 	4	431.310000000000002
104	\N	\N	\N	\N
105	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 1 класс. В двух частях. Часть 1	1	345.29000000000002
106	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 1 класс. В двух частях. Часть 2	1	345.29000000000002
107	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 2 класс. В двух частях. Часть 1	2	379.720000000000027
108	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 2 класс. В двух частях. Часть 2	2	379.720000000000027
109	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 3 класс. В двух частях. Часть 1	3	379.720000000000027
110	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 3 класс. В двух частях. Часть 2	3	379.720000000000027
111	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 4 класс. В двух частях. Часть 1	4	379.720000000000027
112	Дорофеев Г.В., Миракова Т.Н., Бука Т.Б.	Математика. 4 класс. В двух частях. Часть 2	4	379.720000000000027
113	Миракова Т.Н., Пчелинцев С.В.	Математика. 1 класс. В двух частях. Часть 1	1	321.310000000000002
114	Миракова Т.Н., Пчелинцев С.В.	Математика. 1 класс. В двух частях. Часть 2	1	321.310000000000002
115	Миракова Т.Н., Пчелинцев С.В.	Математика. 2 класс. В двух частях. Часть 1	2	333.189999999999998
116	Миракова Т.Н., Пчелинцев С.В.	Математика. 2 класс. В двух частях. Часть 2	2	333.189999999999998
117	Миракова Т.Н., Пчелинцев С.В., Разумовский В.А. и др.	Математика. 3 класс. В двух частях. Часть 1	3	333.189999999999998
118	Миракова Т.Н., Пчелинцев С.В., Разумовский В.А. и др.	Математика. 3 класс. В двух частях. Часть 2	3	333.189999999999998
119	Миракова Т.Н., Пчелинцев С.В., Разумовский В.А. и др.	Математика. 4 класс. В двух частях. Часть 1	4	333.189999999999998
120	Миракова Т.Н., Пчелинцев С.В., Разумовский В.А. и др.	Математика. 4 класс. В двух частях. Часть 2	4	333.189999999999998
121	Моро М.И., Волкова С.И., Степанова С.В.	Математика. 1 класс. В двух частях. Часть 1	1	345.29000000000002
122	Моро М.И., Волкова С.И., Степанова С.В.	Математика. 1 класс. В двух частях. Часть 2	1	345.29000000000002
123	Моро М.И., Бантова М.А., Бельтюкова Г.В. и др.	Математика. 2 класс. В двух частях. Часть 1	2	372.45999999999998
124	Моро М.И., Бантова М.А., Бельтюкова Г.В. и др.	Математика. 2 класс. В двух частях. Часть 2	2	372.45999999999998
125	Моро М.И., Бантова М.А., Бельтюкова Г.В. и др.	Математика. 3 класс. В двух частях. Часть 1	3	372.45999999999998
126	Моро М.И., Бантова М.А., Бельтюкова Г.В. и др.	Математика. 3 класс. В двух частях. Часть 2	3	372.45999999999998
127	Моро М.И., Бантова М.А., Бельтюкова Г.В. и др.	Математика. 4 класс. В двух частях. Часть 1	4	372.45999999999998
128	Моро М.И., Бантова М.А., Бельтюкова Г.В. и др.	Математика. 4 класс. В двух частях. Часть 2	4	372.45999999999998
129	\N	\N	\N	\N
130	Плешаков А.А.	Окружающий мир. 1 класс. В двух частях. Часть 1	1	259.269999999999982
131	Плешаков А.А.	Окружающий мир. 1 класс. В двух частях. Часть 2	1	259.269999999999982
132	Плешаков А.А.	Окружающий мир. 2 класс. В двух частях. Часть 1	2	365.199999999999989
133	Плешаков А.А.	Окружающий мир. 2 класс. В двух частях. Часть 2	2	365.199999999999989
134	Плешаков А.А.	Окружающий мир. 3 класс. В двух частях. Часть 1	3	365.199999999999989
135	Плешаков А.А.	Окружающий мир. 3 класс. В двух частях. Часть 2	3	365.199999999999989
136	Плешаков А.А., Крючкова Е.А.	Окружающий мир. 4 класс. В двух частях. Часть 1	4	365.199999999999989
137	Плешаков А.А., Крючкова Е.А.	Окружающий мир. 4 класс. В двух частях. Часть 2	4	365.199999999999989
138	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 1 класс. В двух частях. Часть 1	1	281.70999999999998
139	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 1 класс. В двух частях. Часть 2	1	281.70999999999998
140	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 2 класс. В двух частях. Часть 1	2	365.199999999999989
141	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 2 класс. В двух частях. Часть 2	2	365.199999999999989
287	Кулигина А.С., Щепилова А.В.	Французский язык. 9 класс.    	9	755.809999999999945
142	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 3 класс. В двух частях. Часть 1	3	365.199999999999989
143	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 3 класс. В двух частях. Часть 2	3	365.199999999999989
144	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 4 класс. В двух частях. Часть 1	4	365.199999999999989
145	Плешаков А.А., Новицкая М.Ю.	Окружающий мир. 4 класс. В двух частях. Часть 2	4	365.199999999999989
146	\N	\N	\N	\N
147	Кураев А. В.	Основы религиозных культур и светской этики. Основы православной культуры. 4 класс	4	469.480000000000018
148	Латышина Д. И., Муртазин М. Ф.	Основы религиозных культур и светской этики. Основы исламской культуры. 4 класс	4	469.480000000000018
149	Членов М.А., Миндрина Г. А., Глоцер А.В.	Основы религиозных культур и светской этики. Основы иудейской культуры. 4 класс	4	469.480000000000018
150	Чимитдоржиев В. Л.	Основы религиозных культур и светской этики. Основы буддийской культуры. 4 класс	4	469.480000000000018
151	Беглов А. Л., Саплина Е. В., Токарева Е. С. и др.	Основы религиозных культур и светской этики. Основы мировых религиозных культур. 4 класс	4	469.480000000000018
152	Шемшурина А.И.	Основы религиозных культур и светской этики. Основы светской этики. 4 класс	4	469.480000000000018
153	\N	\N	\N	\N
154	\N	\N	\N	\N
155	Неменская Л.А. / Под ред. Неменского Б.М.	Изобразительное искусство. Ты изображаешь, украшаешь и строишь. 1 класс	1	345.069999999999993
156	Коротеева Е.И./ Под ред. Неменского Б.М.	Изобразительное искусство. Искусство и ты. 2 класс	2	400.839999999999975
157	Горяева Н.А., Неменская Л.А., Питерских А.С. и др. / Под ред. Неменского Б.М.	Изобразительное искусство. Искусство вокруг нас. 3 класс	3	400.839999999999975
158	Неменская Л.А. / Под ред. Неменского Б.М.	Изобразительное искусство. Каждый народ - художник. 4 класс	4	400.839999999999975
159	Шпикалова Т.Я., Ершова Л.В.	Изобразительное искусство. 1 класс	1	328.45999999999998
160	Шпикалова Т.Я., Ершова Л.В.	Изобразительное искусство. 2 класс	2	361.129999999999995
161	Шпикалова Т.Я., Ершова Л.В.	Изобразительное искусство. 3 класс	3	361.129999999999995
162	Шпикалова Т.Я., Ершова Л.В.	Изобразительное искусство. 4 класс	4	361.129999999999995
163	\N	\N	\N	\N
164	Критская Е.Д., Сергеева Г.П., Шмагина Т.С.	Музыка. 1 класс	1	366.519999999999982
165	Критская Е.Д., Сергеева Г.П., Шмагина Т.С.	Музыка. 2 класс	2	391.160000000000025
166	Критская Е.Д., Сергеева Г.П., Шмагина Т.С.	Музыка. 3 класс	3	391.160000000000025
167	Критская Е.Д., Сергеева Г.П., Шмагина Т.С.	Музыка. 4 класс	4	391.160000000000025
168	\N	\N	\N	\N
169	Лутцева Е.А., Зуева Т.П.	Технология. 1 класс	1	365.639999999999986
170	Лутцева Е.А., Зуева Т.П.	Технология. 2 класс	2	389.180000000000007
171	Лутцева Е.А., Зуева Т.П.	Технология. 3 класс	3	389.180000000000007
172	Лутцева Е.А., Зуева Т.П.	Технология. 4 класс	4	389.180000000000007
173	Роговцева Н.И., Богданова Н.В., Фрейтаг И.П.	Технология. 1 класс	1	388.519999999999982
174	Роговцева Н.И., Богданова Н.В., Шипилова Н.В.	Технология. 2 класс	2	395.779999999999973
175	Роговцева Н.И., Богданова Н.В., Шипилова Н.В. и др.	Технология. 3 класс	3	395.779999999999973
176	Роговцева Н.И., Богданова Н.В., Шипилова Н.В. и др.	Технология. 4 класс	4	395.779999999999973
177	\N	\N	\N	\N
178	Винер И.А., Горбулина Н.М., Цыганкова О.Д. / Под ред. Винер И.А.	Физическая культура. Гимнастика. В  2 частях. Часть 1	 1 - 4	362.670000000000016
179	Винер И.А., Горбулина Н.М., Цыганкова О.Д. / Под ред. Винер И.А.	Физическая культура. Гимнастика В  2 частях. Часть 2	 1 - 4	362.670000000000016
180	Лях В. И.	Физическая культура. 1-4 классы	 1 - 4	394.45999999999998
181	Матвеев А.П.	Физическая культура. 1 класс	1	303.160000000000025
182	Матвеев А.П.	Физическая культура. 2 класс	2	348.699999999999989
183	Матвеев А.П.	Физическая культура. 3 класс	3	348.699999999999989
184	Матвеев А.П.	Физическая культура. 4 класс	4	348.699999999999989
185	\N	\N	\N	\N
186	\N	\N	\N	\N
187	\N	\N	\N	\N
188	Чердаков Д.Н., Дунев А.И., Вербицкая Л.А. и др. / Под ред. Вербцкой Л.А.	Русский язык. 5 класс. В 2 частях. Часть 1.	5	285.449999999999989
189	Чердаков Д.Н., Дунев А.И., Вербицкая Л.А. и др. / Под ред. Вербцкой Л.А.	Русский язык. 5 класс. В 2 частях. Часть 2.	5	285.449999999999989
190	Чердаков Д.Н., Дунев А.И., Пугач В.Е. и др. / Под ред. Вербицкой Л.А.	Русский язык. 6 класс. В 2 частях. Часть 1. 	6	304.480000000000018
191	Чердаков Д.Н., Дунев А.И., Пугач В.Е. и др. / Под ред. Вербицкой Л.А.	Русский язык. 6 класс. В 2 частях. Часть 2.	6	304.480000000000018
192	Чердаков Д.Н., Дунев А.И., Пугач В.Е. и др. / Под ред. Вербицкой Л.А.	Русский язык. 7 класс.	7	427.79000000000002
288	\N	\N	\N	\N
193	Чердаков Д.Н., Дунев А.И., Вербицкая Л.А. и др. /Под ред. Вербицкой Л.А.	Русский язык. 8 класс. 	8	427.79000000000002
194	Чердаков Д.Н., Дунев А.И., Пугач В.Е. и др. / Под ред. Вербицкой Л.А.	Русский язык. 9 класс. 	9	427.79000000000002
195	Ладыженская Т.А., Баранов М. Т., Тростенцова Л.А. и др.	Русский язык. 5 класс. В 2 частях. Часть 1	5	305.800000000000011
196	Ладыженская Т.А., Баранов М. Т., Тростенцова Л.А. и др.	Русский язык. 5 класс. В 2 частях. Часть 2	5	305.800000000000011
197	Баранов М.Т., Ладыженская Т.А., Тростенцова Л.А. и др.	Русский язык. 6 класс. В 2 частях. Часть 1	6	322.300000000000011
198	Баранов М.Т., Ладыженская Т.А., Тростенцова Л.А. и др.	Русский язык. 6 класс. В 2 частях. Часть 2	6	322.300000000000011
199	Баранов М.Т., Ладыженская Т.А., Тростенцова Л.А. и др.	Русский язык. 7 класс. В 2 частях. Часть 1	7	330.879999999999995
200	Баранов М.Т., Ладыженская Т.А., Тростенцова Л.А. и др.	Русский язык. 7 класс. В 2 частях. Часть 2	7	330.879999999999995
201	Бархударов С.Г., Крючков С.Е., Максимов Л.Ю. и др.	Русский язык. 8 класс.	8	405.240000000000009
202	Бархударов С.Г., Крючков С.Е., Максимов Л.Ю. и др.	Русский язык. 9 класс.	9	405.240000000000009
203	Рыбченкова Л.М., Александрова О.М., Глазков А.В. и др.	Русский язык. 5 класс. В 2 частях. Часть 1	5	292.490000000000009
204	Рыбченкова Л.М., Александрова О.М., Глазков А.В. и др.	Русский язык. 5 класс. В 2 частях. Часть 2	5	292.490000000000009
205	Рыбченкова Л.М., Александрова О.М., Загоровская О.В. и др.	Русский язык. 6 класс. В 2 частях. Часть 1	6	292.490000000000009
206	Рыбченкова Л.М., Александрова О.М., Загоровская О.В. и др.	Русский язык. 6 класс. В 2 частях. Часть 2	6	292.490000000000009
207	Рыбченкова Л.М., Александрова О.М., Загоровская О.В. и др.	Русский язык. 7 класс. В 2 частях. Часть 1	7	293.149999999999977
208	Рыбченкова Л.М., Александрова О.М., Загоровская О.В. и др.	Русский язык. 7 класс. В 2 частях. Часть 2	7	293.149999999999977
209	Рыбченкова Л.М., Александрова О.М., Загоровская О.В. и др.	Русский язык. 8 класс.	8	430.20999999999998
210	Рыбченкова Л.М., Александрова О.М., Загоровская О.В. и др.	Русский язык. 9 класс.	9	430.20999999999998
211	\N	\N	\N	\N
212	Коровина В. Я., Журавлёв В.П., Коровин В.И.	Литература. 5 класс. В 2 частях. Часть 1	5	373.560000000000002
213	Коровина В. Я., Журавлёв В.П., Коровин В.И.	Литература. 5 класс. В 2 частях. Часть 2	5	373.560000000000002
214	Полухина В.П., Коровина В.Я., Журавлёв В. П. и др. / Под ред. Коровиной В.Я.	Литература. 6 класс. В 2 частях. Часть 1	6	395.670000000000016
215	Полухина В.П., Коровина В.Я., Журавлёв В. П. и др. / Под ред. Коровиной В.Я.	Литература. 6 класс. В 2 частях. Часть 2	6	395.670000000000016
216	Коровина В.Я., Журавлёв В.П., Коровин В.И.	Литература. 7 класс. В 2 частях. Часть 1	7	396.550000000000011
217	Коровина В.Я., Журавлёв В.П., Коровин В.И.	Литература. 7 класс. В 2 частях. Часть 2	7	396.550000000000011
218	Коровина В.Я., Журавлёв В.П., Коровин В.И.	Литература. 8 класс. В 2 частях. Часть 1	8	396.550000000000011
219	Коровина В.Я., Журавлёв В.П., Коровин В.И.	Литература. 8 класс. В 2 частях. Часть 2	8	396.550000000000011
220	Коровина В.Я., Журавлев В.П., Коровин В.И и др./ Под ред. Коровиной В .Я.	Литература. 9 класс. В 2 частях. Часть 1	9	396.550000000000011
221	Коровина В.Я., Журавлев В.П., Коровин В.И и др./ Под ред. Коровиной В .Я.	Литература. 9 класс. В 2 частях. Часть 2	9	396.550000000000011
222	Чертов В.Ф., Трубина Л.А., Ипполитова Н.А. и др. / Под ред. Чертова В.Ф.	Литература. 5 класс. В 2 частях. Часть 1	5	376.420000000000016
223	Чертов В.Ф., Трубина Л.А., Ипполитова Н.А. и др. / Под ред. Чертова В.Ф.	Литература. 5 класс. В 2 частях. Часть 2	5	376.420000000000016
224	Чертов В.Ф., Трубина Л.А., Ипполитова Н.А. и др. / Под ред. Чертова В.Ф.	Литература. 6 класс. В 2 частях. Часть 1	6	390.389999999999986
225	Чертов В.Ф., Трубина Л.А., Ипполитова Н.А. и др. / Под ред. Чертова В.Ф.	Литература. 6 класс. В 2 частях. Часть 2	6	390.389999999999986
226	Чертов В.Ф., Трубина Л.А., Ипполитова Н.А. и др. / Под ред. Чертова В.Ф.	Литература. 7 класс. В 2 частях. Часть 1	7	391.269999999999982
227	Чертов В.Ф., Трубина Л.А., Ипполитова Н.А. и др. / Под ред. Чертова В.Ф.	Литература. 7 класс. В 2 частях. Часть 2	7	391.269999999999982
228	Чертов В.Ф., Трубина Л.А., Антипова A.M. и др. / Под ред. Чертова В.Ф.	Литература. 8 класс. В 2 частях. Часть 1	8	391.269999999999982
229	Чертов В.Ф., Трубина Л.А., Антипова A.M. и др. / Под ред. Чертова В.Ф.	Литература. 8 класс. В 2 частях. Часть 2	8	391.269999999999982
230	Чертов В.Ф., Трубина Л.А., Антипова A.M. и др. / Под ред. Чертова В.Ф.	Литература. 9 класс. В 2 частях. Часть 1	9	391.269999999999982
231	Чертов В.Ф., Трубина Л.А., Антипова A.M. и др. / Под ред. Чертова В.Ф.	Литература. 9 класс. В 2 частях. Часть 2	9	391.269999999999982
235	Алексеев А.А., Смирнова Е.Ю., Б. Дерков-Диссельбек и др.	Английский язык. 5 класс	5	499.730000000000018
236	Алексеев А.А., Смирнова Е.Ю., Б. Дерков-Диссельбек и др.	Английский язык. 6 класс	6	499.730000000000018
237	Алексеев А.А., Смирнова Е.Ю., Б. Дерков-Диссельбек и др.	Английский язык. 7 класс	7	500.829999999999984
238	Алексеев А.А., Смирнова Е.Ю., Б. Дерков-Диссельбек и др.	Английский язык. 8 класс	8	500.829999999999984
239	Алексеев А.А., Смирнова Е.Ю., Б. Дерков-Диссельбек и др.	Английский язык. 9 класс	9	500.829999999999984
240	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 5 класс	5	594.769999999999982
241	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 6 класс	6	659.340000000000032
242	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 7 класс	7	660.769999999999982
243	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 8 класс	8	660.769999999999982
244	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. 9 класс	9	660.769999999999982
245	Ваулина Ю.Е., Дули Д., Подоляко О.Е. и др.	Английский язык. 5 класс	5	592.57000000000005
246	Ваулина Ю.Е., Дули Д., Подоляко О.Е. и др.	Английский язык. 6 класс	6	592.57000000000005
247	Ваулина Ю.Е., Дули Д., Подоляко О.Е. и др.	Английский язык. 7 класс	7	593.889999999999986
248	Ваулина Ю.Е., Дули Д., Подоляко О.Е. и др.	Английский язык. 8 класс	8	593.889999999999986
249	Ваулина Ю.Е., Дули Д., Подоляко О.Е. и др.	Английский язык. 9 класс	9	593.889999999999986
250	Верещагина И. Н., Афанасьева О. В.	Английский язык. 5 класс. В 2 частях. Часть 1	5	377.189999999999998
251	Верещагина И. Н., Афанасьева О. В.	Английский язык. 5 класс. В 2 частях. Часть 2	5	377.189999999999998
252	Афанасьева О.В., Михеева И.В.	Английский язык. 6 класс. В 2 частях. Часть 1	6	377.189999999999998
253	Афанасьева О.В., Михеева И.В.	Английский язык. 6 класс. В 2 частях. Часть 2	6	377.189999999999998
254	Афанасьева О.В., Михеева И.В.	Английский язык. 7 класс	7	660.879999999999995
255	Афанасьева О.В., Михеева И.В.	Английский язык. 8 класс	8	660.879999999999995
256	Афанасьева О.В., Михеева И.В.	Английский язык. 9 класс	9	660.879999999999995
257	Кузовлев В.П., Лапа Н.М., Костина И.Н. и др.	Английский язык. 5 класс	5	571.009999999999991
258	Кузовлев В.П., Лапа Н.М., Перегудова Э.Ш. и др.	Английский язык. 6 класс	6	582.009999999999991
259	Кузовлев В.П., Лапа Н.М., Перегудова Э.Ш. и др.	Английский язык. 7 класс	7	583.330000000000041
260	Кузовлев В.П., Лапа Н.М., Перегудова Э.Ш. и др.	Английский язык. 8 класс	8	583.330000000000041
261	Кузовлев В.П., Лапа Н.М., Перегудова Э.Ш. и др.	Английский язык. 9 класс	9	583.330000000000041
262	\N	\N	\N	\N
263	Бим И.Л., Рыжова Л.И.	Немецкий язык. 5 класс.	5	578.92999999999995
264	Бим И.Л., Садомова Л.В., Санникова Л.М.	Немецкий язык. 6 класс. В 2 частях. Часть 1.	6	342.759999999999991
265	Бим И.Л., Садомова Л.В., Санникова Л.М.	Немецкий язык. 6 класс. В 2 частях. Часть 2.	6	342.759999999999991
266	Бим И.Л., Садомова Л.В.	Немецкий язык. 7 класс.	7	637.559999999999945
267	Бим И.Л., Садомова Л.В., Крылова Ж.Я. и др.	Немецкий язык. 8 класс.	8	637.559999999999945
268	Бим И.Л., Садомова Л.В.	Немецкий язык. 9 класс.	9	637.559999999999945
269	Яковлева Л.Н.	Немецкий язык. 5 класс.	5	485.100000000000023
270	Радченко О.А., Конго И.Ф., Зайферт К. и др.	Немецкий язык. 6 класс.	6	485.100000000000023
271	Радченко О.А., Конго И.Ф., Хебелер Г. И др.	Немецкий язык. 7 класс.	7	486.199999999999989
272	Радченко О.А., Конго И.Ф., Гертнер У. и др.	Немецкий язык. 8 класс.	8	486.199999999999989
273	Радченко О.А., Цойнер К.Р., Билер К.Х. и др.	Немецкий язык. 9 класс.	9	486.199999999999989
274	\N	\N	\N	\N
275	Кулигина А.С.	Французский язык. 5 класс. В двух частях. Часть 1. 	5	376.199999999999989
276	Кулигина А.С.	Французский язык. 5 класс. В двух частях. Часть 2. 	5	376.199999999999989
277	Кулигина А.С.	Французский язык. 6 класс.	6	765.049999999999955
278	Кулигина А.С., Иохим О.В.	Французский язык. 7 класс.	7	821.919999999999959
279	Григорьева Е.Я., Горбачева Е.Ю.	Французский язык. 8 класс.	8	821.919999999999959
280	Григорьева Е.Я., Горбачева Е.Ю.	Французский язык. 9 класс.	9	821.919999999999959
281	Кулигина А.С.	Французский язык. 5 класс. В двух частях. Часть 1.	5	376.420000000000016
282	Кулигина А.С.	Французский язык. 5 класс. В двух частях. Часть 2.	5	376.420000000000016
283	Кулигина А.С., Щепилова А.В.	Французский язык. 6 класс.    	6	754.159999999999968
284	Кулигина А.С., Щепилова А.В.	Французский язык. 7 класс. В двух частях. Часть 1.	7	378.069999999999993
285	Кулигина А.С., Щепилова А.В.	Французский язык. 7 класс. В двух частях. Часть 2.	7	378.069999999999993
286	Кулигина А.С., Щепилова А.В.	Французский язык. 8 класс.    	8	755.809999999999945
482	\N	\N	\N	\N
483	\N	\N	\N	\N
484	\N	\N	\N	\N
289	Липова О.Е., Шорохова Е.Е.	Испанский язык. 5 класс. В двух частях. Часть 1. 	5	487.95999999999998
290	Липова О.Е., Шорохова Е.Е.	Испанский язык. 5 класс. В двух частях. Часть 2. 	5	487.95999999999998
291	Анурова И.В., Соловцова Э.И.	Испанский язык. 6 класс. 	6	975.480000000000018
292	Кондрашова Н.А.	Испанский язык. 7 класс. В двух частях. Часть 1. 	7	556.269999999999982
293	Кондрашова Н.А.	Испанский язык. 7 класс. В двух частях. Часть 2. 	7	556.269999999999982
294	Кондрашова Н.А., Костылева С.В.	Испанский язык. 8 класс. 	8	1112.21000000000004
295	Кондрашова Н.А., Костылева С.В.	Испанский язык. 9 класс. В двух частях. Часть 1. 	9	556.269999999999982
296	Кондрашова Н.А., Костылева С.В.	Испанский язык. 9 класс. В двух частях. Часть 2. 	9	556.269999999999982
297	\N	\N	\N	\N
298	\N	\N	\N	\N
299	Маневич Е. Г., Полякова А. А., Дули Д. и др.	Английский язык. Второй иностранный язык. 5 класс	5	430.319999999999993
300	Маневич Е. Г., Полякова А. А., Дули Д. и др.	Английский язык. Второй иностранный язык. 6 класс	6	430.319999999999993
301	Маневич Е. Г., Полякова А. А., Дули Д. и др.	Английский язык. Второй иностранный язык. 7 класс	7	431.199999999999989
302	Маневич Е. Г., Полякова А. А., Дули Д. и др.	Английский язык. Второй иностранный язык. 8 класс	8	441.649999999999977
303	Маневич Е. Г., Полякова А. А., Дули Д. и др.	Английский язык. Второй иностранный язык. 9 класс	9	441.649999999999977
304	\N	\N	\N	\N
305	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 5 класс.	5	437.470000000000027
306	Аверин М.М., Джин Ф., Рорман Л.	Немецкий язык. Второй иностранный язык. 6 класс.	6	437.470000000000027
307	Аверин М.М., Джин Ф., Рорман Л. 	Немецкий язык. Второй иностранный язык. 7 класс.	7	438.45999999999998
308	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 8 класс.	8	438.45999999999998
309	Аверин М.М., Джин Ф., Рорман Л. и др.	Немецкий язык. Второй иностранный язык. 9 класс.	9	438.45999999999998
310	\N	\N	\N	\N
311	Береговская Э.М., Белосельская Т.В.	Французский язык. Второй иностранный язык. 5 класс. В двух частях. Часть 1	5	320.870000000000005
312	Береговская Э.М., Белосельская Т.В.	Французский язык. Второй иностранный язык. 5 класс. В двух частях. Часть 2	5	320.870000000000005
313	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 6 класс. В двух частях. Часть 1	6	334.069999999999993
314	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 6 класс. В двух частях. Часть 2	6	334.069999999999993
315	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 7 класс.	7	335.720000000000027
316	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 8 класс.	8	335.720000000000027
317	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 9 класс.	9	606.210000000000036
318	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 7 класс. Первый год обучения.	7	573.100000000000023
319	Селиванова Н.А., Шашурина А.Ю.	Французский язык. Второй иностранный язык. 8-9 классы. Второй и третий годы обучения.	 8 - 9	625.460000000000036
320	\N	\N	\N	\N
321	Костылева С.В., Сараф О.В., Морено К.В. и др.	Испанский язык. Второй иностранный язык. 5-6 классы.	 5 - 6	898.259999999999991
322	Костылева С.В., Морено К.В., Лопес Барбера И. и др.	Испанский язык. Второй иностранный язык. 7-8 классы.	 7 - 8	898.259999999999991
323	Костылева С.В., Морено К.В., Лопес Барбера И. и др.	Испанский язык. Второй иностранный язык. 9 класс.	9	672.32000000000005
324	\N	\N	\N	\N
325	Сизова А.А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 5 класс.	5	479.379999999999995
326	Сизова А.А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 6 класс.	6	479.379999999999995
327	Сизова А.А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 7 класс.	7	480.480000000000018
328	Сизова А.А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 8 класс.	8	480.480000000000018
329	Сизова А.А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 9 класс.	9	480.480000000000018
330	\N	\N	\N	\N
331	\N	\N	\N	\N
332	Арсентьев Н.М., Данилов А.А., Стефанович П.С. и др./ Под ред. Торкунова А.В.	История России. 6 класс.  В двух частях. Часть 1	6	194.150000000000006
333	Арсентьев Н.М., Данилов А.А., Стефанович П.С. и др./ Под ред. Торкунова А.В.	История России. 6 класс.  В двух частях. Часть 2	6	194.150000000000006
334	Арсентьев Н.М., Данилов А.А., Курукин И.В. и др./ Под ред. Торкунова А.В.	История России. 7 класс.  В двух частях. Часть 1	7	198.330000000000013
335	Арсентьев Н.М., Данилов А.А., Курукин И.В. и др./ Под ред. Торкунова А.В.	История России. 7 класс.  В двух частях. Часть 2	7	198.330000000000013
336	Арсентьев Н.М., Данилов А.А., Курукин И.В. и др./ Под ред. Торкунова А.В.	История России. 8 класс.  В двух частях. Часть 1	8	198.330000000000013
337	Арсентьев Н.М., Данилов А.А., Курукин И.В. и др./ Под ред. Торкунова А.В.	История России. 8 класс.  В двух частях. Часть 2	8	198.330000000000013
338	Арсентьев Н.М., Данилов А.А., Левандовский А.А. и др./ Под ред. Торкунова А.В.	История России. 9 класс.  В двух частях. Часть 1	9	198.330000000000013
339	Арсентьев Н.М., Данилов А.А., Левандовский А.А. и др./ Под ред. Торкунова А.В.	История России. 9 класс.  В двух частях. Часть 2	9	198.330000000000013
340	\N	\N	\N	\N
341	Вигасин А.А., Годер Г.И., Свенцицкая И.С. /Под ред. Искендерова А.А.	Всеобщая история. История Древнего мира. 5 класс.	5	455.509999999999991
342	Агибалова Е.В., Донской Г.М./Под ред. Доктора исторических наук Сванидзе А.А.	Всеобщая история. История Средних веков. 6 класс.	6	463.870000000000005
343	Юдовская А.Я., Баранов П.А., Ванюшкина Л.М./Под ред. Искендерова А.А.	Всеобщая история. История Нового времени. 7 класс.	7	464.970000000000027
344	Юдовская А.Я., Баранов П.А., Ванюшкина Л.М. и др./Под ред. Искендерова А.А.	Всеобщая история. История Нового времени. 8 класс.	8	464.970000000000027
345	Юдовская А.Я., Баранов П.А., Ванюшкина Л.М. и др./Под ред. Искендерова А.А.	Всеобщая история. История Нового времени. 9 класс.  	9	464.970000000000027
346	Уколова В.И.	Всеобщая история. Древний мир. 5 класс.	5	464.310000000000002
347	Ведюшкин В. А., Уколова В.И.	Всеобщая история. Средние века. 6 класс.	6	464.310000000000002
348	Ведюшкин В.А., Бовыкин Д.Ю.	Всеобщая история. Новое время. 7 класс.	7	465.410000000000025
349	Бовыкин Д.Ю., Ведюшкин В.А.	Всеобщая история. Новое время. 8 класс.	8	465.410000000000025
350	Медяков А.С., Бовыкин Д.Ю.	Всеобщая история. Новое время. 9 класс.	9	465.410000000000025
351	\N	\N	\N	\N
352	Боголюбов Л.Н., Виноградова Н.Ф., Городецкая Н.И. и др.	Обществознание. 6 класс.  	6	456.060000000000002
353	Боголюбов Л.Н., Иванова Л.Ф., Городецкая Н.И. и др.	Обществознание. 7 класс.  	7	465.95999999999998
354	Боголюбов Л.Н., Лазебникова А.Ю., Городецкая Н.И. и др.	Обществознание. 8 класс.  	8	465.95999999999998
355	Боголюбов Л.Н., Лазебникова А.Ю., Матвеев А.И. и др.	Обществознание. 9 класс.  	9	465.95999999999998
356	Котова О.А., Лискова Т.Е.	Обществознание. 6 класс.	6	254.759999999999991
357	Котова О.А., Лискова Т.Е.	Обществознание. 7 класс.	7	255.310000000000002
358	Котова О.А., Лискова Т.Е.	Обществознание. 8 класс.	8	255.310000000000002
359	Котова О.А., Лискова Т.Е.	Обществознание. 9 класс.	9	255.310000000000002
360	\N	\N	\N	\N
361	Алексеев А.И., Николина В.В., Липкина Е.К. и др.	География. 5-6 класс.	 5 - 6	494.339999999999975
362	Алексеев А.И., Николина В.В., Липкина Е.К. и др.	География. 7 класс.	7	464.75
363	Алексеев А.И., Николина В.В., Липкина Е.К. и др.	География. 8 класс.	8	465.410000000000025
364	Алексеев А.И., Николина В.В., Липкина Е.К. и др.	География. 9 класс.	9	465.410000000000025
365	\N	\N	\N	\N
366	\N	\N	\N	\N
367	Бунимович Е.А., Дорофеев Г.В., Суворова С.Б. и др.	Математика. Арифметика. Геометрия. 5 класс.	5	464.310000000000002
368	Бунимович Е.А., Кузнецова Л.B., Минаева С.С. и др.	Математика. Арифметика. Геометрия. 6 класс.	6	464.310000000000002
369	Дорофеев Г.В., Шарыгин И.Ф., Суворова С.Б. и др.	Математика. 5 класс	5	390.389999999999986
370	Дорофеев Г.В., Шарыгин И.Ф., Суворова С.Б. и др.	Математика. 6 класс	6	390.389999999999986
371	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Математика. 5 класс	5	453.310000000000002
372	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Математика. 6 класс	6	453.310000000000002
373	Ткачёва М. В.	Математика 5 класс	5	356.949999999999989
374	Ткачёва М. В.	Математика 6 класс	6	356.949999999999989
375	\N	\N	\N	\N
376	Бунимович Е.А., Кузнецова Л.B., Минаева С.С. и др.	Алгебра. 7 класс.	7	427.79000000000002
377	Бунимович Е.А., Кузнецова Л.В., Минаева С.С. и др.	Алгебра. 8 класс.	8	427.79000000000002
378	Бунимович Е.А., Кузнецова Л.B., Минаева С.С. и др.	Алгебра. 9 класс.	9	427.79000000000002
379	Дорофеев Г.В., Суворова С.Б., Бунимович Е.А. и др.	Алгебра. 7 класс	7	413.490000000000009
380	Дорофеев Г.В., Суворова С.Б., Бунимович Е.А. и др.	Алгебра. 8 класс	8	413.490000000000009
381	Дорофеев Г.В., Суворова С.Б., Бунимович Е.А. и др.	Алгебра. 9 класс	9	413.490000000000009
382	Колягин Ю. М., Ткачёва М. В., Фёдорова Н .Е. и др.	Алгебра 7 класс	7	381.259999999999991
383	Колягин Ю. М., Ткачёва М. В., Фёдорова Н .Е. и др.	Алгебра 8 класс	8	381.259999999999991
384	Колягин Ю. М., Ткачёва М. В., Фёдорова Н .Е. и др.	Алгебра 9 класс	9	381.259999999999991
385	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра 7 класс 	7	467.389999999999986
386	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра 8 класс 	8	467.389999999999986
387	Макарычев Ю. Н., Миндюк Н. Г., Нешков К. И. и др.	Алгебра 9 класс 	9	467.389999999999986
388	Макарычев Ю.Н., Миндюк Н.Г., Нешков К.И. и др.	Алгебра. 7 класс. Углублённый уровень	7	410.95999999999998
389	Макарычев Ю.Н., Миндюк Н.Г., Нешков К.И. и др.	Алгебра. 8 класс. Углублённый уровень	8	410.95999999999998
390	Макарычев Ю.Н., Миндюк Н.Г., Нешков К.И. и др.	Алгебра. 9 класс. Углублённый уровень	9	410.95999999999998
391	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Алгебра. 7 класс	7	429.769999999999982
392	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Алгебра. 8 класс	8	429.769999999999982
393	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Алгебра. 9 класс	9	429.769999999999982
394	\N	\N	\N	\N
395	Атанасян Л.С., Бутузов В.Ф., Кадомцев С.Б. и др.	Геометрия. 7-9 классы	 7 - 9	480.699999999999989
396	Берсенев А. А., Сафонова Н.В.	Геометрия. 7 класс.	7	393.470000000000027
397	Берсенев А. А., Сафонова Н.В.	Геометрия. 8 класс.	8	393.470000000000027
398	Берсенев А. А., Сафонова Н.В.	Геометрия. 9 класс.	9	393.470000000000027
399	Бутузов В.Ф., Кадомцев С.Б., Прасолов В.В. / Под ред. Садовничего В.А.	Геометрия. 7 класс	7	342.54000000000002
400	Бутузов В.Ф., Кадомцев С.Б., Прасолов В.В. / Под ред. Садовничего В.А.	Геометрия. 8 класс	8	376.529999999999973
401	Бутузов В.Ф., Кадомцев С.Б., Прасолов В.В. / Под ред. Садовничего В.А.	Геометрия. 9 класс	9	376.529999999999973
402	Погорелов А.В.	Геометрия. 7-9 классы	 7 - 9	447.370000000000005
403	\N	\N	\N	\N
404	\N	\N	\N	\N
405	Белага В.В., Ломаченков И.А., Панебратцев Ю.А.	Физика. 7 класс.	7	465.410000000000025
406	Белага В.В., Ломаченков И.А., Панебратцев Ю.А.	Физика. 8 класс.	8	465.410000000000025
407	Белага В.В., Ломаченков И.А., Панебратцев Ю.А.	Физика. 9 класс.	9	465.410000000000025
408	Громов С.В., Родина Н.А, Белага В.В. и др./Под ред. Ю.А. Панебратцева	Физика. 7 класс.	7	405.45999999999998
409	Громов С.В., Родина Н.А., Белага В.В. и др./Под ред. Ю.А. Панебратцева	Физика. 8 класс.	8	405.45999999999998
410	Громов С.В., Родина Н.А., Белага В.В. и др./Под ред. Ю.А. Панебратцева	Физика. 9 класс.	9	405.45999999999998
411	Кабардин О.Ф.	Физика. 7 класс.	7	454.95999999999998
412	Кабардин О.Ф.	Физика. 8 класс.	8	454.95999999999998
413	Кабардин О.Ф.	Физика. 9 класс.	9	454.95999999999998
414	\N	\N	\N	\N
415	Пасечник В.В., Суматохин С.В., Калинова Г.С. и др. / Под ред. Пасечника В.В.	Биология. 5-6 классы.	 5 - 6	438.019999999999982
416	Пасечник В.В., Суматохин С.В., Калинова Г.С.  / Под ред. Пасечника В.В.	Биология. 7 класс.	7	444.069999999999993
417	Пасечник В.В., Каменский А.А., Швецов Г.Г. / Под ред. Пасечника В.В.	Биология. 8 класс.	8	444.069999999999993
418	Пасечник В.В., Каменский А.А., Швецов Г.Г.  И др. / Под ред. Пасечника В.В.	Биология. 9 класс.	9	444.069999999999993
419	Сивоглазов В.И., Плешаков А.А.	Биология. 5 класс.	5	404.579999999999984
420	Сивоглазов В.И., Плешаков А.А.	Биология. 6 класс.	6	404.579999999999984
421	Сивоглазов В.И., Сарычева Н.Ю., Каменский А.А.	Биология. 7 класс.	7	405.45999999999998
422	Сивоглазов В.И., Каменский А.А., Сарычева Н.Ю.	Биология. 8 класс. 	8	405.45999999999998
423	Сивоглазов В.И., Каменский А.А., Касперская Е.К. и др.	Биология. 9 класс.	9	405.45999999999998
424	\N	\N	\N	\N
425	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 8 класс. 	8	399.519999999999982
426	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 9 класс.  	9	399.519999999999982
427	Журин А.А.	Химия. 8 класс.	8	465.410000000000025
428	Журин А.А.	Химия. 9 класс.	9	465.410000000000025
429	Рудзитис Г.Е., Фельдман Ф.Г.	Химия. 8 класс. 	8	458.810000000000002
430	Рудзитис Г.Е., Фельдман Ф.Г.	Химия. 9 класс.  	9	458.810000000000002
431	\N	\N	\N	\N
432	\N	\N	\N	\N
433	Горяева Н.А., Островская О.В. / Под ред. Неменского Б.М.	Изобразительное искусство. Декоративно-прикладное искусство в жизни человека. 5 класс	5	429.879999999999995
434	Неменская Л.А. / Под ред. Неменского Б.М.	Изобразительное искусство. Искусство в жизни человека. 6 класс	6	446.160000000000025
435	Питерских А.С., Гуров Г.Е. / Под ред. Неменского Б.М.	Изобразительное искусство. Дизайн и архитектура в жизни человека. 7 класс	7	447.04000000000002
436	Питерских А.С. / Под ред. Неменского Б.М.	Изобразительное искусство. Изобразительное искусство в театре, кино, на телевидении. 8 класс	8	447.04000000000002
437	Шпикалова Т.Я., Ершова Л.В., Поровская Г.А. и др./Под ред. Шпикаловой Т.Я.	Изобразительное искусство. 5 класс	5	376.310000000000002
438	Шпикалова Т.Я., Ершова Л.В., Поровская Г.А. и др./Под ред. Шпикаловой Т.Я.	Изобразительное искусство. 6 класс	6	397.759999999999991
439	Шпикалова Т.Я., Ершова Л.В., Поровская Г.А. и др./Под ред. Шпикаловой Т.Я.	Изобразительное искусство. 7 класс	7	398.639999999999986
440	Шпикалова Т.Я., Ершова Л.В., Поровская Г.А. и др./Под ред. Шпикаловой Т.Я.	Изобразительное искусство. 8 класс	8	398.639999999999986
441	\N	\N	\N	\N
442	Сергеева Г.П., Критская Е.Д.	Музыка. 5 класс	5	398.860000000000014
443	Сергеева Г.П., Критская Е.Д.	Музыка. 6 класс	6	438.569999999999993
444	Сергеева Г.П., Критская Е.Д.	Музыка. 7 класс	7	439.560000000000002
445	Сергеева Г.П., Критская Е.Д.	Музыка. 8 класс	8	439.889999999999986
446	\N	\N	\N	\N
447	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др./Под ред. Казакевича В.М.	Технология. 5 класс	5	356.949999999999989
448	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича B.M.	Технология. 6 класс	6	356.949999999999989
449	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича В.М.	Технология. 7 класс	7	357.720000000000027
450	Казакевич В.М., Пичугина Г.В., Семёнова Г.Ю. и др. /Под ред. Казакевича В.М.	Технология. 8-9 классы	 8 - 9	375.649999999999977
451	\N	\N	\N	\N
452	\N	\N	\N	\N
453	Виленский М.Я., Туревский И.М., Торочкова Т.Ю. и др. / Под ред. Виленского М.Я.	Физическая культура. 5-7 классы	 5 - 7	414.589999999999975
454	Лях В. И.	Физическая культура. 8-9 классы	 8 - 9	415.470000000000027
455	Матвеев А.П.	Физическая культура. 5 класс	5	283.800000000000011
456	Матвеев А.П.	Физическая культура. 6-7 классы	 6 - 7	404.910000000000025
457	Матвеев А.П.	Физическая культура. 8-9 классы	 8 - 9	404.910000000000025
458	\N	\N	\N	\N
459	\N	\N	\N	\N
460	\N	\N	\N	\N
461	Рыбченкова Л.М., Александрова О.М., Нарушевич А.Г. и др.	Русский язык. 10-11 классы.  Базовый уровень	 10 - 11	427.350000000000023
462	Чердаков Д.Н., Дунев А.И., Вербицкая Л.А. и др. / Под общей редакцией Вербицкой Л.А.	Русский язык. 10 класс.  Базовый уровень. 	10	426.800000000000011
463	Чердаков Д.Н., Дунев А.И., Вербицкая Л.А. и др. / Под общей редакцией Вербицкой Л.А.	Русский язык. 11 класс.  Базовый уровень. 	11	426.800000000000011
464	\N	\N	\N	\N
465	Лебедев Ю.В.	Литература. 10 класс.   Базовый уровень. В 2 частях. Часть 1	10	376.199999999999989
466	Лебедев Ю.В.	Литература. 10 класс.   Базовый уровень. В 2 частях. Часть 2	10	376.199999999999989
467	Михайлов О.Н., Шайтанов И.О., Чалмаев В.А. и др. / Под ред. Журавлёва В.П.	Литература. 11 класс.   Базовый уровень. В 2 частях. Часть 1. 	11	376.199999999999989
468	Михайлов О.Н., Шайтанов И.О., Чалмаев В.А. и др. / Под ред. Журавлёва В.П.	Литература. 11 класс.   Базовый уровень. В 2 частях. Часть 2. 	11	376.199999999999989
469	Свирина Н.М., Фёдоров С.В., Обухова М.Ю. и др. / Под общей редакцией  Вербицкой Л.А.	Литература. 10 класс.  Базовый уровень. В 2 частях. Часть 1. 	10	368.829999999999984
470	Фёдоров С.В., Ачкасова Г.Л., Гордиенко Л. Л. и др. / Под общей редакцией  Вербицкой Л.А.	Литература. 10 класс.  Базовый уровень. В 2 частях. Часть 2. 	10	368.829999999999984
471	Абелюк Е.С., Поливанов К.М./ Под общей редакцией Вербицкой Л.А.	Литература. 11 класс.  Базовый уровень. В 2 частях. Часть 1. 	11	368.829999999999984
472	Абелюк Е.С., Поливанов К.М./ Под общей редакцией Вербицкой Л.А.	Литература. 11 класс.  Базовый уровень. В 2 частях. Часть 2. 	11	368.829999999999984
473	Чертов В.Ф., Трубина Л.А., Антипова A.M. и др./Под ред. В.Ф. Чертова	Литература. 10 класс.  Базовый и углублённый уровни. В 2 частях. Часть 1.	10	464.529999999999973
474	Чертов В.Ф., Трубина Л.А., Антипова A.M. и др./Под ред. В.Ф. Чертова	Литература. 10 класс.  Базовый и углублённый уровни. В 2 частях. Часть 2.	10	464.529999999999973
475	Чертов В.Ф., Трубина Л.A., Антипова А.М.и др./Под ред. В.Ф. Чертова	Литература. 11 класс.  Базовый и углублённый уровни. В 2 частях. Часть 1.	11	464.529999999999973
476	Чертов В.Ф., Трубина Л.A., Антипова А.М.и др./Под ред. В.Ф. Чертова	Литература. 11 класс.  Базовый и углублённый уровни. В 2 частях. Часть 2.	11	464.529999999999973
477	\N	\N	\N	\N
478	Коровин В.И., Вершинина Н.Л., Капитанова Л.А. и др. /Под ред. Коровина В.И.	Литература. 10 класс. Углублённый уровень. В 2 частях. Часть 1. 	10	428.339999999999975
479	Коровин В.И., Вершинина Н.Л., Капитанова Л.А. и др. /Под ред. Коровина В.И.	Литература. 10 класс. Углублённый уровень. В 2 частях. Часть 2. 	10	428.339999999999975
480	Коровин В.И., Вершинина Н.Л., Гальцова Е.Д. и др./Под ред. Коровина В.И.	Литература. 11 класс. Углублённый уровень. В 2 частях. Часть 1. 	11	440.220000000000027
481	Коровин В.И., Вершинина Н.Л., Гальцова Е.Д. и др./Под ред. Коровина В.И.	Литература. 11 класс. Углублённый уровень. В 2 частях. Часть 2. 	11	440.220000000000027
485	Алексеев А.А., Смирнова Е.Ю., С. Абби и др.	Английский язык. 10 класс (базовый уровень)	10	490.160000000000025
486	Алексеев А.А., Смирнова Е.Ю., Б. Дерков-Диссельбек и др.	Английский язык. 11 класс (базовый уровень)	11	490.160000000000025
487	Афанасьева О.В., Дули Д., Михеева И.В. и др.	Английский язык. 10 класс (базовый уровень)	10	624.799999999999955
488	Афанасьева О.В., Дули Д., Михеева И.В. и др.	Английский язык. 11 класс (базовый уровень)	11	624.799999999999955
489	\N	\N	\N	\N
490	Радченко О.А., Лытаева М.А., Гутброд О.В.	Немецкий язык. 10 класс. Базовый и углубленный уровни	10	669.899999999999977
491	Радченко О.А., Лытаева М.А., Гутброд О.В.	Немецкий язык. 11 класс. Базовый и углубленный уровни	11	669.899999999999977
492	\N	\N	\N	\N
493	Григорьева Е.Я., Горбачева Е.Ю., Лисенко М.Р.	Французский язык. 10-11 классы.  (базовый уровень)	 10 - 11	696.629999999999995
494	\N	\N	\N	\N
495	\N	\N	\N	\N
496	Афанасьева О.В., Михеева И.В.	Английский язык. 10 класс (углублённый уровень)	10	673.309999999999945
497	Афанасьева О.В., Михеева И.В.	Английский язык. 11 класс (углублённый уровень)	11	673.309999999999945
498	Баранова К.М., Дули Д., Копылова В.В. и др.	Английский язык. 10 класс (углублённый уровень)	10	638.440000000000055
499	Баранова К.М., Дули Д., Копылова В.В. и др.	Английский язык. 11 класс (углублённый уровень)	11	638.440000000000055
500	\N	\N	\N	\N
501	Бубнова Г.И., Тарасова А.Н., Лонэ Э.	Французский язык. 10 класс. (углубленный уровень)	10	557.259999999999991
502	Бубнова Г.И., Тарасова А.Н.	Французский язык. 11 класс. (углубленный уровень)	11	607.419999999999959
503	\N	\N	\N	\N
504	Кондрашова Н.А., Костылева С.В.	Испанский язык. 10 класс. (углубленный уровень)	10	1057.43000000000006
505	Кондрашова Н.А., Костылева С.В., Гонсалес Сальгадо A.M.	Испанский язык. 11 класс. (углубленный уровень)	11	1057.43000000000006
506	\N	\N	\N	\N
507	\N	\N	\N	\N
508	Маневич Е.Г., Полякова А.А., Дули Д. и др.	Английский язык. Второй иностранный язык. 10 класс (базовый уровень)	10	508.199999999999989
509	Маневич Е.Г., Полякова А.А., Дули Д. и др.	Английский язык. Второй иностранный язык. 11 класс (базовый уровень)	11	508.199999999999989
510	\N	\N	\N	\N
511	Аверин М.М., Бажанов А.Е., Фурманова C.Л. и др.	Немецкий язык. Второй иностранный язык. 10 класс.  Базовый и углубленный уровни	10	612.149999999999977
512	Аверин М.М., Бажанов А.Е., Фурманова C.Л. и др.	Немецкий язык. Второй иностранный язык. 11 класс.  Базовый и углубленный уровни	11	612.149999999999977
513	\N	\N	\N	\N
514	Григорьева Е.Я., Горбачева Е.Ю., Лисенко М.Р.	Французский язык. Второй  иностранный язык.10 класс (базовый уровень)	10	587.289999999999964
515	Григорьева Е.Я., Горбачева Е.Ю., Лисенко М.Р.	Французский язык. Второй иностранный язык. 11 класс (базовый уровень)	11	587.289999999999964
516	\N	\N	\N	\N
517	Костылева С.В., Кондрашова Н.А., Лопес Барбера И. и др.	Испанский язык. Второй иностранный язык. 10-11 классы (базовый уровень)	 10 - 11	924.549999999999955
518	\N	\N	\N	\N
519	\N	\N	\N	\N
520	Белоусов Л.С., Смирнов В.П., Мейер М.С.	Всеобщая история. Новейшее время. 10 класс. Базовый уровень	10	456.939999999999998
521	Горинов М.М., Данилов А.А., Моруков М.Ю. и др./ Под ред. Торкунова А.В.	История. История России. 10 класс.  Базовый и углублённый уровни. В трёх частях. Часть 1	10	186.120000000000005
522	Горинов М.М., Данилов А.А., Моруков М.Ю. и др./ Под ред. Торкунова А.В.	История. История России. 10 класс.  Базовый и углублённый уровни. В трёх частях. Часть 2	10	186.120000000000005
523	Горинов М.М., Данилов А.А., Моруков М.Ю. и др./ Под ред. Торкунова А.В.	История. История России. 10 класс.  Базовый и углублённый уровни. В трёх частях. Часть 3	10	186.120000000000005
524	Сороко-Цюпа О.С., Сороко-Цюпа А.О./ Под ред. Искендерова А.А.	История. Всеобщая история. Новейшая история. 10 класс.  Базовый и углублённый уровни. 	10	464.75
525	Уколова В. И., Ревякин А. В. / Под ред. Чубарьяна А. О.	История. Всеобщая история. 10 класс. Базовый уровень.	10	468.490000000000009
526	Улунян А. А., Сергеев Е. Ю. / Под ред. Чубарьяна А. О.	История. Всеобщая история. 11 класс. Базовый уровень.	11	468.490000000000009
527	\N	\N	\N	\N
528	Гладкий Ю.Н., Николина В.В.	География. 10 класс. Базовый и углублённый уровени.	10	410.189999999999998
529	Гладкий Ю.Н., Николина В.В.	География.11 класс. Базовый и углублённый уровени.	11	451.110000000000014
530	Лопатников Д.Л.	География. 10-11 классы. Базовый уровень.	 10 - 11	448.139999999999986
531	Максаковский В. П.	География. 10-11 классы. Базовый уровень.	 10 - 11	530.419999999999959
532	\N	\N	\N	\N
533	Боголюбов Л.Н., Лукашева Е.А., Матвеев А.И. и др. /Под ред. Лазебниковой А.Ю., Лукашевой Е.А., Матвеева А.И.	Право. 10 класс.  Углублённый уровень	10	437.360000000000014
534	Боголюбов Л.Н., Абова Т.Е., Матвеев А.И. и др./ Под ред. Лазебниковой А.Ю., Абовой Т.Е., Матвеева А.И.	Право. 11 класс.  Углублённый уровень	11	437.360000000000014
535	\N	\N	\N	\N
536	Боголюбов Л.Н., Лазебникова А.Ю., Матвеев А.И.и др. / Под ред. Боголюбова Л.Н., Лазебниковой А.Ю.	Обществознание. 10 класс.  Базовый уровень. 	10	443.189999999999998
537	Боголюбов Л.Н., Городецкая Н.И., Лазебникова А.Ю. и др. / Под ред. Боголюбова Л.Н., Лазебниковой А.Ю.	Обществознание. 11 класс.  Базовый уровень. 	11	443.189999999999998
538	Котова О.А., Лискова Т.Е.	Обществознание. 10 класс. Базовый уровень.	10	254.759999999999991
539	Котова О.А., Лискова Т.Е.	Обществознание. 11 класс. Базовый уровень.	11	254.759999999999991
540	\N	\N	\N	\N
541	\N	\N	\N	\N
542	Алимов Ш. А., Колягин Ю. М., Ткачёва М. В. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа 10-11 классы Базовый и углублённый уровни	 10 - 11	487.079999999999984
543	Атанасян Л.С., Бутузов В.Ф., Кадомцев С.Б. и др.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10-11 классы. Базовый и углублённый уровни	 10 - 11	450.889999999999986
544	Бутузов В.Ф., Прасолов В.В. / Под ред. Садовничего В.А.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10 - 11 классы. Базовый и углубленный уровни	 10 - 11	400.839999999999975
545	Вернер А. Л., Карп А. П.	Математика: Алгебра и начала математического анализа, геометрия 10 класс Базовый уровень	10	453.529999999999973
546	Вернер А. Л., Карп А. П.	Математика: Алгебра и начала математического анализа, геометрия 11 класс Базовый уровень	11	453.529999999999973
547	Колягин Ю. М., Ткачёва М. В., Фёдорова Н. Е. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа 10 класс Базовый и углублённый уровни	10	426.470000000000027
548	Колягин Ю. М., Ткачёва М. В., Фёдорова Н. Е. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа 11 класс Базовый и углублённый уровни	11	482.45999999999998
549	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10 класс. Базовый и углублённый уровни	10	486.199999999999989
550	Никольский С.М., Потапов М.К., Решетников Н.Н. и др.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 11 класс. Базовый и углублённый уровни	11	530.090000000000032
551	Погорелов А.В.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10-11 классы	 10 - 11	374.879999999999995
552	\N	\N	\N	\N
553	Александров А.Д., Вернер А.Л., Рыжик В.И.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 10 класс. Углублённый уровень	10	462.769999999999982
554	Александров А.Д., Вернер А.Л., Рыжик В.И.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. 11 класс. Углублённый уровень	11	508.639999999999986
555	Пратусевич М.Я., Столбов К.М., Головин А.Н.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 10 класс. Углублённый уровень	10	517.879999999999995
556	Пратусевич М.Я., Столбов К.М., Головин А.Н.	Математика: алгебра и начала математического анализа, геометрия. Алгебра и начала математического анализа. 11 класс. Углублённый уровень	11	569.690000000000055
557	\N	\N	\N	\N
558	Гейн А. Г., Юнерман Н. А.	Информатика. 10 класс. Базовый уровень.	10	448.139999999999986
559	 Гейн А. Г., Гейн А. А.	Информатика. 11 класс. Базовый уровень.	11	448.139999999999986
560	Гейн А. Г., Ливчак А. Б., Сенокосов А. И. и др.	Информатика. 10 класс. Базовый и углублённый уровни.	10	410.519999999999982
561	Гейн А. Г., Сенокосов А. И. и др.	Информатика. 11 класс. Базовый и углубленный уровни.	11	410.519999999999982
562	\N	\N	\N	\N
563	\N	\N	\N	\N
564	Белага В.В., Ломаченков И.А., Панебратцев Ю.А.	Физика. 10 класс. Базовый уровень.	10	435.160000000000025
565	Белага В.В., Ломаченков И.А., Панебратцев Ю.А.	Физика. 11 класс. Базовый уровень.	11	435.160000000000025
566	Мякишев Г.Я., Буховцев Б.Б., Сотский Н.Н. / Под ред. Парфентьевой Н.А.	Физика. 10 класс. Базовый и углублённый уровни.	10	498.300000000000011
567	Мякишев Г.Я., Буховцев Б.Б., Чаругин В.М. / Под ред. Парфентьевой Н.А.	Физика. 11 класс. Базовый и углублённый уровни.	11	505.779999999999973
568	\N	\N	\N	\N
569	Кабардин О.Ф., Орлов В.А., Эвенчик Э.Е. и др. / Под ред. Пинского А.А., Кабардина О.Ф.	Физика. 10 класс. Углублённый уровень.	10	522.610000000000014
570	Кабардин О.Ф., Глазунов А.Т., Орлов В.А. и др. / Под ред. Пинского А. А., Кабардина О.Ф.	Физика. 11 класс. Углублённый уровень.	11	574.639999999999986
571	\N	\N	\N	\N
572	Левитан Е.П.	Астрономия. 11 класс. Базовый уровень.	11	428.339999999999975
573	Чаругин В.М.	Астрономия. 10-11 классы. Базовый уровень.	 10 - 11	442.639999999999986
574	\N	\N	\N	\N
575	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 10 класс. 	10	404.579999999999984
576	Габриелян О.С., Остроумов И.Г., Сладков С.А.	Химия. 11 класс.  	11	404.579999999999984
577	Журин А.А.	Химия. 10-11 классы. Базовый уровень.	 10 - 11	435.160000000000025
578	Рудзитис Г.Е., Фельдман Ф.Г.	Химия. 10 класс. Базовый уровень	10	478.720000000000027
579	Рудзитис Г.Е., Фельдман Ф.Г.	Химия. 11 класс. Базовый уровень	11	478.720000000000027
580	\N	\N	\N	\N
581	Пузаков С.А., Машнина Н.В., Попков В.А.	Химия. 10 класс. Углублённый уровень	10	463.980000000000018
582	Пузаков С.А., Машнина Н.В., Попков В.А.	Химия. 11 класс. Углублённый уровень	11	463.980000000000018
583	\N	\N	\N	\N
584	Беляев Д.К., Дымшиц Г.М., Кузнецова Л.Н. и др. / Под ред. Беляева Д.К., Дымшица Г.М.	Биология. 10 класс. Базовый уровень	10	447.920000000000016
585	Беляев Д.К., Дымшиц Г.М., Бородин П.М. и др. / Под ред. Беляева Д.К., Дымшица Г.М.	Биология. 11 класс. Базовый уровень	11	447.920000000000016
586	Каменский А. А., Касперская Е. К., Сивоглазов В. И.	Биология 10 класс. Базовый уровень	10	440.220000000000027
587	Каменский А. А., Касперская Е. К., Сивоглазов В. И.	Биология. 11 класс. Базовый уровень	11	440.220000000000027
588	Пасечник В.В., Каменский А.А., Рубцов A.M. и др. /Под ред. Пасечника В.В.	Биология. 10 класс. Базовый уровень	10	422.399999999999977
589	Пасечник В.В., Каменский А.А., Рубцов A.M. и др. /Под ред. Пасечника В.В.	Биология. 11 класс. Базовый уровень	11	422.399999999999977
590	Сухорукова Л.Н., Кучменко B.C., Иванова Т.В.	Биология. 10 класс. Базовый уровень	10	381.149999999999977
591	Сухорукова Л.Н., Кучменко B.C.	Биология. 11 класс. Базовый уровень	11	381.149999999999977
592	\N	\N	\N	\N
593	Высоцкая Л.В., Дымшиц Г.М., Рувинский А.О. и др./ Под ред. Шумного В.К., Дымшица Г.М.	Биология 10 класс. Углублённый уровень	10	478.170000000000016
594	Бородин П.М., Дымшиц Г.М., Саблина О.В. и др./Под ред. Шумного В.К., Дымшица Г.М.	Биология. 11 класс. Углублённый уровень	11	478.170000000000016
595	Пасечник В.В., Каменский А.А., Рубцов A.M. и др. /Под ред. Пасечника В.В.	Биология 10 класс. Углублённый уровень	10	463.980000000000018
596	Пасечник В.В., Каменский А.А., Рубцов A.M. и др. /Под ред. Пасечника В.В.	Биология. 11 класс. Углублённыйуровень	11	463.980000000000018
597	\N	\N	\N	\N
598	Алексашина И.Ю., Галактионов К.В., Дмитриев И.С. и др. / Под ред. Алексашиной И.Ю.	Естествознание 10 класс.  Базовый уровень	10	628.210000000000036
599	Алексашина И.Ю., Галактионов К.В., Ляпцев А.В., Шаталов М.А. и др./Под ред. Алексашиной И.Ю.	Естестовзнание. 11 класс.  Базовый уровень	11	628.210000000000036
600	\N	\N	\N	\N
601	\N	\N	\N	\N
602	Лях В. И.	Физическая культура. 10-11 классы. Базовый уровень	 10 - 11	423.060000000000002
603	Матвеев А.П.	Физическая культура. 10-11 классы. Базовый уровень	 10 - 11	369.600000000000023
604	\N	\N	\N	\N
605	Аргунова М.В., Моргун Д.В., Плюснина Т.А.	Экология. 10-11 классы. Базовый уровень. 	 10 - 11	383.79000000000002
606	\N	\N	\N	\N
607	\N	\N	\N	\N
608	\N	\N	\N	\N
609	\N	\N	\N	\N
610	\N	\N	\N	\N
611	Аксёнова А. К., Комарова С. В., Шишкова М. И.	Букварь. 1 класс. В 2 частях. Часть 1 (для обучающихся с интеллектуальными нарушениями). 	1	264.439999999999998
612	Аксёнова А. К., Комарова С. В., Шишкова М. И.	Букварь. 1 класс. В 2 частях. Часть 2  (для обучающихся с интеллектуальными нарушениями). 	1	264.439999999999998
613	Зикеев А. Г. 	Русский язык. Развитие речи. 1 дополнительный класс. В 2 частях. Часть 1 (для слабослышащих и позднооглохших обучающихся).	1 доп.	1041.80999999999995
614	Зикеев А. Г. 	Русский язык. Развитие речи. 1 дополнительный класс. В 2 частях. Часть 2 (для слабослышащих и позднооглохших обучающихся).	1 доп.	1041.80999999999995
615	Зыкова Т. С., \nЗыкова М. А.	Русский язык. Развитие речи.1 дополнительный класс (для глухих обучающихся).	1 доп.	711.039999999999964
616	Зыкова Т. С.,\nКузьмичёва Е. П.,\nЗыкова М. А.	Русский язык. Развитие речи. 1 класс. В 2 частях. Часть 1 (для глухих обучающихся).	1	518.980000000000018
617	Зыкова Т. С.,\nКузьмичёва Е. П.,\nЗыкова М. А.	Русский язык. Развитие речи. 1 класс. В 2 частях. Часть 2 (для глухих обучающихся).	1	518.980000000000018
618	Зыкова Т. С., \nКац З. Г., \nРуленкова Л. И.	Русский язык. Развитие речи. 2 класс. В 2 частях. Часть 1 (для глухих обучающихся).	2	618.309999999999945
619	Зыкова Т. С., \nКац З. Г., \nРуленкова Л. И.	Русский язык. Развитие речи. 2 класс. В 2 частях. Часть 2 (для глухих обучающихся).	2	618.309999999999945
620	Зыкова Т. С.,\nЗыкова М. А.	Русский язык. Развитие речи. 3 класс. В 2 частях. Часть 1 (для глухих обучающихся).	3	642.950000000000045
621	Зыкова Т. С.,\nЗыкова М. А.	Русский язык. Развитие речи. 3 класс. В 2 частях. Часть 2 (для глухих обучающихся).	3	642.950000000000045
622	Комарова С. В.	Речевая практика. 1 класс (для обучающихся с интеллектуальными нарушениями). 	1	428.230000000000018
623	Комарова С. В.	Речевая практика. 2 класс (для обучающихся с интеллектуальными нарушениями). 	2	428.230000000000018
624	Комарова С. В.	Речевая практика. 3 класс (для обучающихся с интеллектуальными нарушениями). 	3	428.230000000000018
625	Комарова С. В.	Речевая практика. 4 класс (для обучающихся с интеллектуальными нарушениями). 	4	339.569999999999993
626	Пфафенродт А. Н.,\nКочанова М. Е.	Произношение. 1 дополнительный класс. В 2 частях. Часть 1 (для слабослышащих и позднооглохших обучающихся)	1 доп.	694.539999999999964
627	Пфафенродт А. Н.,\nКочанова М. Е.	Произношение. 1 дополнительный класс. В 2 частях. Часть 2 (для слабослышащих и позднооглохших обучающихся)	1 доп.	694.539999999999964
628	Пфафенродт А. Н.,\nКочанова М. Е.	Произношение. 1 класс. В 2 частях. Часть 1 (для слабослышащих и позднооглохших обучающихся)	1	694.539999999999964
629	Пфафенродт А. Н.,\nКочанова М. Е.	Произношение. 1 класс. В 2 частях. Часть 2 (для слабослышащих и позднооглохших обучающихся)	1	694.539999999999964
630	Пфафенродт А. Н.,\nКочанова М. Е.	Произношение. 2 класс. В 2 частях. Часть 1 (для слабослышащих и позднооглохших обучающихся)	2	694.539999999999964
631	Пфафенродт А. Н.,\nКочанова М. Е.	Произношение. 2 класс. В 2 частях. Часть 2 (для слабослышащих и позднооглохших обучающихся)	2	694.539999999999964
632	Пфафенродт А. Н.	Произношение. 3 класс. В 2 частях. Часть 1 (для слабослышащих и позднооглохших обучающихся)	3	694.539999999999964
633	Пфафенродт А. Н.	Произношение. 3 класс. В 2 частях. Часть 2 (для слабослышащих и позднооглохших обучающихся)	3	694.539999999999964
634	Пфафенродт А. Н.	Произношение. 4 класс. В 2 частях. Часть 1 (для слабослышащих и позднооглохших обучающихся)	4	694.539999999999964
635	Пфафенродт А. Н.	Произношение. 4 класс. В 2 частях. Часть 2 (для слабослышащих и позднооглохших обучающихся)	4	694.539999999999964
636	Рау Ф. Ф., \nКац З. Г., \nМорева Н. А., \nСлезина Н. Ф.	Букварь. 1 дополнительный класс. В 2 частях. Часть1 (для глухих обучающихся)	1 доп.	1041.80999999999995
637	Рау Ф. Ф., \nКац З. Г., \nМорева Н. А., \nСлезина Н. Ф.	Букварь. 1 дополнительный класс.В 2 частях. Часть 2 (для глухих обучающихся)	1 доп.	1041.80999999999995
638	Якубовская Э. В., Коршунова Я. В.	Русский язык. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	2	389.29000000000002
639	Якубовская Э. В., Коршунова Я. В.	Русский язык. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	2	389.29000000000002
640	Якубовская Э. В., Коршунова Я. В.	Русский язык. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	3	389.29000000000002
641	Якубовская Э. В., Коршунова Я. В.	Русский язык. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	3	389.29000000000002
642	Якубовская Э. В., Коршунова Я. В.	Русский язык. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	4	389.29000000000002
643	Якубовская Э. В., Коршунова Я. В.	Русский язык. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	4	389.29000000000002
644	\N	\N	\N	\N
645	Азнабаева Ф.Ф., Артеменко О.И., Скороспелкина Г.C. и др.	Азбука. 1 класс. Учебник для детей мигрантов и переселенцев	1	442.310000000000002
646	Азнабаева Ф.Ф., Турова Г. А., Артеменко О.И. / Под ред. Г.С.Скороспелкиной	Русский язык. 1 класс. Учебник для детей мигрантов и переселенцев	1	369.930000000000007
647	Азнабаева Ф.Ф., Артеменко О.И., Турова Г.А. / Под ред. Никольской Г.Н.	Русский язык. 2 класс. Учебник для детей мигрантов и переселенцев	2	431.529999999999973
648	Азнабаева Ф.Ф., Артеменко О.И. / Под ред. Давлетбаевой Р.Г.	Русский язык. 3 класс. Учебник для детей мигрантов и переселенцев	3	431.529999999999973
649	Азнабаева Ф.Ф., Артеменко О.И. / Под ред. Давлетбаевой Р.Г.	Русский язык. 4 класс. Учебник для детей мигрантов и переселенцев	4	431.529999999999973
650	Хамраева Е.А., Оселедец А.М.	Русский язык. Устный курс. 1 класс. Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке	1	485.100000000000023
651	Хамраева Е.А., Саматова Л.М.	Русский язык. Азбука. 1 класс. Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке	1	485.100000000000023
652	Хамраева Е.А., Анащенкова С.В., Песняева Н.А.	Русский язык. 2 класс.  Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке. В 2 частях. Часть 1	2	445.170000000000016
653	Хамраева Е.А., Анащенкова С.В., Песняева Н.А.	Русский язык. 2 класс.  Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке. В 2 частях. Часть 2	2	445.170000000000016
654	Хамраева Е.А., Ветрова Н.В.	Русский язык. 3 класс.  Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке. В 2 частях. Часть 1	3	445.170000000000016
655	Хамраева Е.А., Ветрова Н.В.	Русский язык. 3 класс.  Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке. В 2 частях. Часть 2	3	445.170000000000016
656	Хамраева Е.А., Гасанова О.Э.	Русский язык. 4 класс.  Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке. В 2 частях. Часть 1	4	445.170000000000016
657	Хамраева Е.А., Гасанова О.Э.	Русский язык. 4 класс.  Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке. В 2 частях. Часть 2	4	445.170000000000016
658	\N	\N	\N	\N
659	\N	\N	\N	\N
660	Зыкова Т.С., Морева Н.А.	Чтение. 1 класс (для глухих обучающихся).  В 2 частях. Часть1	1	648.669999999999959
661	Зыкова Т.С., Морева Н.А.	Чтение. 1 класс (для глухих обучающихся).  В 2 частях. Часть2	1	648.669999999999959
662	Ильина С.Ю., Аксенова А.К., Головкина Т.М. и др.	Чтение. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1 	2	389.29000000000002
663	Ильина С.Ю., Аксенова А.К., Головкина Т.М. и др.	Чтение. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	2	389.29000000000002
664	Ильина С. Ю., Богданова А. А.	Чтение. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	3	389.29000000000002
665	Ильина С. Ю., Богданова А. А.	Чтение. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	3	389.29000000000002
666	Ильина С. Ю.	Чтение. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	4	389.29000000000002
667	Ильина С. Ю.	Чтение. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	4	389.29000000000002
668	\N	\N	\N	\N
669	Сахипова З.Г.	Литературное чтение. 1 класс. Учебник для детей мигрантов и переселенцев	1	392.699999999999989
670	Сахипова З.Г., Орлова Т.Н., Бабурин А.В.	Литературное чтение. 2 класс. Учебник для детей мигрантов и переселенцев	2	431.529999999999973
671	Сахипова З.Г., Орлова Т.Н., Бабурин А.В.	Литературное чтение. 3 класс. Учебник для детей мигрантов и переселенцев	3	431.529999999999973
672	Сахипова З.Г., Орлова Т.Н., Бабурин А.В.	Литературное чтение. 4 класс. Учебник для детей мигрантов и переселенцев	4	431.529999999999973
673	Черкезова М.В., Хайруллин Р.З., Стефаненко Н.А. и др./Под ред. Черкезовой М.В.	Литературное чтение. 1 класс. Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке	1	572.220000000000027
674	Черкезова М.В., Хайруллин Р.З., Стефаненко Н.А. и др./Под ред. Черкезовой М.В.	Литературное чтение. 2 класс. Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке	2	572.220000000000027
675	Черкезова М.В., Хайруллин Р.З., Фаттахова С.В. и др./Под ред. Черкезовой М.В.	Литературное чтение. 3 класс. Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке	3	572.220000000000027
676	Черкезова М.В., Хайруллин Р.З., Верхоломова Е.В. и др./Под ред. Черкезовой М.В.	Литературное чтение. 4 класс. Учебник для образовательных организаций с обучением на родном (нерусском) и русском (неродном) языке	4	572.220000000000027
677	\N	\N	\N	\N
678	\N	\N	\N	\N
679	\N	\N	\N	\N
721	Кузнецова Л. А.	Технология. Ручной труд. 2 класс (для обучающихся с интеллектуальными нарушениями)	2	454.079999999999984
680	Алышева Т. В.	Математика. 1 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1\n	1	389.29000000000002
681	Алышева Т. В.	Математика. 1 класс (для обучающихся с интеллектуальными нарушениями).  В 2 частях. Часть 2\n	1	389.29000000000002
682	Алышева Т. В.	Математика. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1\n	2	407.439999999999998
683	Алышева Т. В.	Математика. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2\n	2	407.439999999999998
684	Алышева Т. В.	Математика. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1\n	3	407.439999999999998
685	Алышева Т. В.	Математика. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2\n	3	407.439999999999998
686	Алышева Т. В.,\nЯковлева И. М.	Математика. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1\n	4	407.439999999999998
687	Алышева Т. В.,\nЯковлева И. М.	Математика. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2\n	4	407.439999999999998
688	\N	\N	\N	\N
689	\N	\N	\N	\N
690	Рудченко Т.А., Семёнов А.Л. /Под ред. Семёнова А.Л.	Информатика. 1 класс	1	354.529999999999973
691	Рудченко Т.А., Семёнов А.Л. /Под ред. Семёнова А.Л.	Информатика. 2 класс	2	397.319999999999993
692	Рудченко Т.А., Семёнов А.Л. /Под ред. Семёнова А.Л.	Информатика. 3 класс	3	397.319999999999993
693	Рудченко Т.А., Семёнов А.Л. /Под ред. Семёнова А.Л.	Информатика. 4 класс	4	397.319999999999993
694	 \nСеменов А. Л., Рудченко Т. А.	Информатика. 3-4 классы. Часть 1.	3	296.339999999999975
695	 \nСеменов А. Л., Рудченко Т. А.	Информатика. 3-4 классы. Часть 2.	 3 - 4	296.339999999999975
696	 \nСеменов А. Л., Рудченко Т. А.	Информатика. 3-4 классы. Часть 3.	4	296.339999999999975
697	\N	\N	\N	\N
698	\N	\N	\N	\N
699	Зыкова Т. С., \nЗыкова М. А.	Ознакомление с окружающим миром. 1 дополнительный класс (для глухих и слабослышащих обучающихся)	1 доп.	660.769999999999982
700	Зыкова Т. С., \nЗыкова М. А.	Ознакомление с окружающим миром. 1 класс (для глухих и слабослышащих обучающихся)	1	660.769999999999982
701	Зыкова Т. С., \nЗыкова М. А.	Ознакомление с окружающим миром. 2 класс (для глухих и слабослышащих обучающихся)	2	660.769999999999982
702	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 1 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	1	237.930000000000007
703	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 1 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	1	237.930000000000007
704	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	2	330.439999999999998
705	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 2 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	2	330.439999999999998
706	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	3	330.439999999999998
707	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 3 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	3	330.439999999999998
708	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 1	4	330.439999999999998
709	Матвеева Н.Б., Ярочкина И.А., Попова М.А. и др.	Мир природы и человека. 4 класс (для обучающихся с интеллектуальными нарушениями). В 2 частях. Часть 2	4	330.439999999999998
710	\N	\N	\N	\N
711	\N	\N	\N	\N
712	\N	\N	\N	\N
713	Рау М. Ю., \nЗыкова М. А.	Изобразительное искусство. 1 класс (для обучающихся с интеллектуальными нарушениями)	1	389.29000000000002
714	Рау М. Ю., \nЗыкова М. А.	Изобразительное искусство. 2 класс (для обучающихся с интеллектуальными нарушениями)	2	356.949999999999989
715	Рау М. Ю., \nЗыкова М. А.	Изобразительное искусство. 3 класс (для обучающихся с интеллектуальными нарушениями)	3	396.660000000000025
716	Рау М. Ю., \nЗыкова М. А.	Изобразительное искусство. 4 класс (для обучающихся с интеллектуальными нарушениями)	4	396.660000000000025
717	Рау М. Ю., Зыкова М. А., Суринов И. В.	Изобразительное искусство. 1 класс (для глухих и слабослышащих обучающихся)	1	879.779999999999973
718	\N	\N	\N	\N
719	\N	\N	\N	\N
720	Кузнецова Л. А.	Технология. Ручной труд. 1 класс (для обучающихся с интеллектуальными нарушениями)	1	454.079999999999984
722	Кузнецова Л. А.	Технология. Ручной труд. 3 класс (для обучающихся с интеллектуальными нарушениями)	3	454.079999999999984
723	Кузнецова Л. А., \nСимукова Я. С.	Технология. Ручной труд. 4 класс (для обучающихся с интеллектуальными нарушениями)	4	454.079999999999984
724	\N	\N	\N	\N
725	Уманская Э.Э., Волкова Е.И., Прудникова Е.А.	Шахматы в школе. 1 класс	1	356.620000000000005
726	Прудникова Е.А., Волкова Е.И.	Шахматы в школе. 2 класс	2	356.620000000000005
727	Прудникова Е.А., Волкова Е.И.	Шахматы в школе. 3 класс	3	356.620000000000005
728	Прудникова Е.А., Волкова Е.И.	Шахматы в школе. 4 класс	4	356.620000000000005
729	\N	\N	\N	\N
730	\N	\N	\N	\N
731	\N	\N	\N	\N
732	\N	\N	\N	\N
733	Якубовская Э. В., Галунчикова Н. Г.	Русский язык. 5 класс (для обучающихся с интеллектуальными нарушениями)	5	567.049999999999955
734	Якубовская Э. В., Галунчикова Н. Г.	Русский язык. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	567.049999999999955
735	Якубовская Э. В., Галунчикова Н. Г.	Русский язык. 7 класс (для обучающихся с интеллектуальными нарушениями)	7	568.259999999999991
736	Якубовская Э. В., Галунчикова Н. Г.	Русский язык. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	568.259999999999991
737	Якубовская Э. В., Галунчикова Н. Г.	Русский язык. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	568.259999999999991
738	\N	\N	\N	\N
739	\N	\N	\N	\N
740	Малышева З.Ф.	Чтение. 5 класс (для обучающихся с интеллектуальными нарушениями)	5	572.769999999999982
741	Бгажнокова И.М., Погостина Е.С.	Чтение. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	572.769999999999982
742	Аксёнова А. К.	Чтение. 7 класс (для обучающихся с интеллектуальными нарушениями)	7	574.090000000000032
743	Малышева З.Ф.	Чтение. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	574.090000000000032
744	Аксёнова А. К., Шишкова М. И.	Чтение. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	574.090000000000032
745	\N	\N	\N	\N
746	\N	\N	\N	\N
747	\N	\N	\N	\N
748	Бгажнокова И. М., Смирнова Л. В.	Мир истории. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	527.559999999999945
749	Бгажнокова И. М., Смирнова Л. В.	История Отечества. 7 класс (для обучающихся с интеллектуальными нарушениями)	7	583.769999999999982
750	Бгажнокова И. М., Смирнова Л. В.	История Отечества. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	741.950000000000045
751	Бгажнокова И. М., Смирнова Л. В.	История Отечества. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	741.950000000000045
752	\N	\N	\N	\N
753	\N	\N	\N	\N
754	Лифанова Т. М., Соломина Е. Н.	География. 6 класс. (для обучающихся с интеллектуальными нарушениями)	6	608.850000000000023
755	Лифанова Т. М., Соломина Е. Н.	География. 7 класс. (для обучающихся с интеллектуальными нарушениями)	7	610.169999999999959
756	Лифанова Т. М., Соломина Е. Н.	География. 8 класс. (для обучающихся с интеллектуальными нарушениями)	8	610.169999999999959
757	Лифанова Т. М., Соломина Е. Н.	География. 9 класс. (для обучающихся с интеллектуальными нарушениями)	9	610.169999999999959
758	\N	\N	\N	\N
759	\N	\N	\N	\N
760	Чумаченко В.В., Горяев А.П.	Основы финансовой грамотности. 8-9 классы.	8 - 9	382.029999999999973
761	\N	\N	\N	\N
762	\N	\N	\N	\N
763	\N	\N	\N	\N
764	Перова М.Н., Капустина Г.М.	Математика. 5 класс (для обучающихся с интеллектуальными нарушениями)	5	584.100000000000023
765	Капустина Г.М., Перова М.Н.	Математика. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	584.100000000000023
766	Алышева Т.В.	Математика. 7 класс (для обучающихся с интеллектуальными нарушениями)	7	585.419999999999959
767	Эк В.В.	Математика. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	585.419999999999959
768	Антропов А.П., Ходот А.Ю., Ходот Т.Г.	Математика. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	585.419999999999959
769	\N	\N	\N	\N
770	Панчищина В. А., Гельфман Э. Г., Ксенева В. Н. и др	Математика. Наглядная геометрия. 5- 6 классы	5 - 6	362.120000000000005
771	Ходот Т.Г., Ходот А.Ю., Велиховская В. Л.	Математика. Наглядная геометрия. 5 класс	5	280.279999999999973
772	Ходот Т.Г., Ходот А.Ю.	Математика. Наглядная геометрия. 6 класс	6	280.279999999999973
773	\N	\N	\N	\N
774	\N	\N	\N	\N
775	Семёнов А.Л., Рудченко Т. А.	Информатика. 5 класс.	5	415.800000000000011
776	Семёнов А.Л., Рудченко Т.А.	Информатика. 6 класс	6	415.800000000000011
777	\N	\N	\N	\N
778	\N	\N	\N	\N
779	Лифанова Т. М., Соломина Е. Н.	Природоведение. 5 класс (для обучающихся с интеллектуальными нарушениями)	5	586.299999999999955
780	Лифанова Т. М., Соломина Е. Н.	Природоведение. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	586.299999999999955
781	Клепинина З. А.	Биология. Растения. Бактерии. Грибы. 7 класс (для обучающихся с интеллектуальными нарушениями)\n	7	592.019999999999982
782	Никишов А. И, Теремов А. В.	Биология. Животные. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	592.019999999999982
783	Соломина Е. Н, Шевырева Т. В.	Биология. Человек. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	592.019999999999982
784	\N	\N	\N	\N
785	\N	\N	\N	\N
786	Сергеева Г.П., Кашекова И.Э., Критская Е.Д.	Искусство. 8-9 классы	 8 - 9	462.220000000000027
787	\N	\N	\N	\N
788	\N	\N	\N	\N
789	\N	\N	\N	\N
790	Картушина Г.Б., Мозговая Г.Г.	Технология. Швейное дело. 5 класс (для обучающихся с интеллектуальными нарушениями)	5	557.039999999999964
791	Картушина Г.Б., Мозговая Г.Г.	Технология. Швейное дело. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	557.039999999999964
792	Мозговая Г. Г., Картушина Г.Б.	Технология. Швейное дело. 7 класс(для обучающихся с интеллектуальными нарушениями)	7	558.25
793	Мозговая Г.Г., Картушина Г.Б.	Технология. Швейное дело. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	558.25
794	Картушина Г.Б., Мозговая Г.Г.	Технология. Швейное дело. 9 класс (для обучающихся с интеллектуальными нарушениями)\n	9	558.25
795	Ковалёва Е. А.	Технология. Сельскохозяйственный труд. 5 класс (для обучающихся с интеллектуальными нарушениями)	5	556.600000000000023
796	Ковалёва Е. А.	Технология. Сельскохозяйственный труд. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	556.600000000000023
797	Ковалёва Е. А.	Технология. Сельскохозяйственный труд. 7 класс (для обучающихся с интеллектуальными нарушениями)	7	557.919999999999959
798	Ковалёва Е. А.	Технология. Сельскохозяйственный труд. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	557.919999999999959
799	Ковалёва Е. А.	Технология. Сельскохозяйственный труд. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	557.919999999999959
800	\N	\N	\N	\N
801	\N	\N	\N	\N
802	Бабурин В.Л., Даньшин А.И., Елховская Л.И. и др.	Российское порубежье: мы и наши соседи. 10-11 классы.	10 - 11	773.850000000000023
803	Гуров Г.Е.	Дизайн. 10-11 классы	10 - 11	423.610000000000014
804	Солодовников Ю.А.	Мировая художественная культура. 10 класс	10	521.509999999999991
805	Солодовников Ю.А.	Мировая художественная культура. 11 класс	11	521.509999999999991
806	\N	\N	3. Учебники, обеспечивающие учет региональных и этнокультурных особенностей субъектов Российской Федерации, реализацию прав граждан на получение образования на родном языке из числа языков народов Российской Федерации, изучение родного языка из числа языков народов Российской Федерации и литературы народов России на родном языке	\N
807	\N	\N	\N	\N
808	\N	\N	\N	\N
809	\N	\N	\N	\N
810	Александрова О.М., Вербицкая Л.А., Богданов С.И., Казакова Е.И., Кузнецова М.И., Петленко Л.В., Романова В.Ю.	Русский родной язык. 1 класс	1	442.199999999999989
811	Александрова О. М., Вербицкая Л. А., Богданов С. И., Казакова Е. И., Кузнецова М. И., Петленко Л. В., Романова В. Ю., Рябинина Л. А., Соколова О. В.	Русский родной язык. 2 класс	2	442.199999999999989
812	Александрова О. М., Вербицкая Л. А., Богданов С. И., Казакова Е. И., Кузнецова М. И., Петленко Л. В., Романова В. Ю., Рябинина Л. А., Соколова О. В.	Русский родной язык. 3 класс	3	442.199999999999989
813	Александрова О. М., Вербицкая Л. А., Богданов С. И., Казакова Е. И., Кузнецова М. И., Петленко Л. В., Романова В. Ю., Рябинина Л. А., Соколова О. В.	Русский родной язык. 4 класс	4	442.199999999999989
814	\N	\N	\N	\N
815	\N	\N	\N	\N
816	\N	\N	\N	\N
817	Александрова О.М., Загоровская О. В., Богданов С.И., Вербицкая Л.А., Гостева Ю.Н., Добротина И.Н., Нарушевич А.Г., Казакова Е.И., Васильевых И.П.	Русский родной язык. 5 класс	5	443.300000000000011
818	Александрова О.М., Загоровская О. В., Богданов С.И., Вербицкая Л.А., Гостева Ю.Н., Добротина И.Н., Нарушевич А.Г., Казакова Е.И., Васильевых И.П.	Русский родной язык. 6 класс	6	443.300000000000011
819	Александрова О.М., Загоровская О. В., Богданов С.И., Вербицкая Л.А., Гостева Ю.Н., Добротина И.Н., Нарушевич А.Г., Казакова Е.И., Васильевых И.П.	Русский родной язык. 7 класс	7	443.300000000000011
820	Александрова О.М., Загоровская О. В., Богданов С.И., Вербицкая Л.А., Гостева Ю.Н., Добротина И.Н., Нарушевич А.Г., Казакова Е.И., Васильевых И.П.	Русский родной язык. 8 класс	8	443.300000000000011
821	Александрова О.М., Загоровская О. В., Богданов С.И., Вербицкая Л.А., Гостева Ю.Н., Добротина И.Н., Нарушевич А.Г., Казакова Е.И., Васильевых И.П.	Русский родной язык. 9 класс	9	443.300000000000011
\.


--
-- Data for Name: book_prosvet_me; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_prosvet_me (id, author, name, grade, price) FROM stdin;
1	\N	\N	\N	\N
2	\N	\N	\N	\N
3	\N	\N	\N	\N
4	\N	\N	\N	\N
5	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 2 класс. В 2-х частях. Ч. 1. Учебное пособие.	2	468.600000000000023
6	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 2 класс. В 2-х частях. Ч. 2. Учебное пособие.	2	468.600000000000023
7	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 3 класс. В 2-х частях. Ч.1. Учебное пособие.	3	465.300000000000011
8	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 3 класс. В 2-х частях. Ч.2. Учебное пособие.	3	465.300000000000011
9	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 4 класс. В 2-х частях. Ч.1. Учебное пособие.	4	465.300000000000011
10	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 4 класс. В 2-х частях. Ч.2. Учебное пособие.	4	465.300000000000011
11	\N	\N	\N	\N
12	Масловец О.А.	Китайский язык. 2 класс. В двух частях. Часть 1. Учебное пособие	2	495
13	Масловец О.А.	Китайский язык. 2 класс. В двух частях. Часть 2. Учебное пособие	2	495
14	Масловец О.А.	Китайский язык. 3 класс. В 2 частях. Часть 1. Учебное пособие	3	495
15	Масловец О.А.	Китайский язык. 3 класс. В 2 частях. Часть 2. Учебное пособие	3	495
16	Масловец О. А., Малых О. А.	Китайский язык. 4 класс. Часть 1. Учебное пособие	4	550
17	Масловец О. А., Малых О. А.	Китайский язык. 4 класс. Часть 2. Учебное пособие	4	550
18	\N	\N	\N	\N
19	\N	\N	\N	\N
20	Ловцова И. В., Корнеев И. И.	Рисунок. 1 класс	1	346.5
21	Ловцова И. В., Горчаков С. А.	Живопись. 1 год обучения	1	346.5
22	\N	\N	\N	\N
23	\N	\N	\N	\N
24	\N	\N	\N	\N
25	\N	\N	\N	\N
26	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 5 класс. Учебное пособие.	5	755.700000000000045
27	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 6 класс. Учебное пособие	6	754.600000000000023
28	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 7 класс. Учебное пособие	7	754.600000000000023
29	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 8 класс. Учебное пособие	8	754.600000000000023
30	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 9 класс. Учебное пособие	9	754.600000000000023
31	\N	\N	\N	\N
32	\N	\N	\N	\N
33	Угринович Н. Д.	Информатика. 7 класс. Учебное пособие	7	338.139999999999986
34	Угринович Н. Д.	Информатика. 8 класс. Учебное пособие	8	338.139999999999986
35	Угринович Н. Д.	Информатика. 9 класс. Учебное пособие	9	338.139999999999986
36	\N	\N	\N	\N
37	\N	\N	\N	\N
38	Габриелян О. С., Остроумов И. Г., Сладков С. А.	Химия. 7 класс. Учебное пособие.	7	372.569999999999993
39	Габриелян О. С., Аксенова И.В., Остроумов И.Г.	Химия. Тетрадь для лабораторных опытов и практических работ. 7 класс	7	133.099999999999994
40	Габриелян О. С., Сладков С. А., Остроумов И. Г.	Химия. Рабочая тетрадь. 7 класс.	7	149.050000000000011
41	\N	\N	\N	\N
42	Шахнович М. М., Чумакова Т. В.	Основы духовно-нравственной культуры народов России. 5 класс. Учебное пособие.	5	327.470000000000027
43	\N	\N	\N	\N
44	\N	\N	\N	\N
45	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. 5 класс	5	339.569999999999993
46	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Методическое пособие. 5 класс	5	95.7000000000000028
47	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Тесты и контрольные работы. 5 класс	5	94.0499999999999972
48	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Задачник. 5 класс	5	118.799999999999997
49	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. 6 класс	6	339.569999999999993
50	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Тесты и контрольные работы. 6 класс	6	89.6500000000000057
51	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Задачник. 6 класс	6	113.299999999999997
52	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. 7 класс	7	340.339999999999975
53	\N	\N	\N	\N
54	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 5 класс. Учебное пособие.	5	503.800000000000011
55	Смирнов А. Т., Хренников Б. О., Маслов М. В.	Основы безопасности жизнедеятельности. Рабочая тетрадь. 5 класс	5	134.199999999999989
56	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 6 класс.Учебное пособие.	6	513.700000000000045
57	Смирнов А. Т., Хренников Б. О., Маслов М. В.	Основы безопасности жизнедеятельности. Рабочая тетрадь. 6 класс	6	134.199999999999989
58	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 7 класс.Учебное пособие.	7	513.700000000000045
59	Смирнов А. Т., Хренников Б. О., Маслов М. В.	Основы безопасности жизнедеятельности. Рабочая тетрадь. 7 класс	7	134.199999999999989
60	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 8 класс. Учебное пособие.	8	513.700000000000045
61	Смирнов А. Т., Хренников Б. О., Маслов М. В.	Основы безопасности жизнедеятельности. Рабочая тетрадь. 8 класс	8	134.199999999999989
62	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 9 класс. Учебное пособие.	9	513.700000000000045
63	Смирнов А. Т., Хренников Б. О., Маслов М. В.	Основы безопасности жизнедеятельности. Рабочая тетрадь. 9 класс	9	134.199999999999989
64	\N	\N	\N	\N
65	\N	\N	\N	\N
66	\N	\N	\N	\N
67	Греков В. Ф., Крючков С., Чешко Л. А.	Русский язык. 10-11 классы. Учебное пособие	 10 - 11	408.870000000000005
68	\N	\N	\N	\N
69	\N	\N	\N	\N
70	\N	\N	\N	\N
71	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык. 10 класс. Учебное пособие.	10	599.720000000000027
72	Кузовлев В. П. и др.	Английский язык. Рабочая тетрадь. 10 класс	10	250.25
73	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык.  11 класс. Учебное пособие.	11	599.720000000000027
74	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 10 класс. Учебное пособие	10	748
75	Мильруд Р. П., Дули Д., Эванс В. и др.	Английский язык. 11 класс. Учебное пособие	11	748
76	\N	\N	\N	\N
77	Кулигина А. С., Щепилова А. В.	Французский язык. 10 класс. Учебное пособие (базовый уровень)	10	687.169999999999959
78	Кулигина А. С., Щепилова А. В.	Французский язык. Рабочая тетрадь.10 класс (базовый уровень)	10	320.649999999999977
79	Кулигина А. С., Щепилова А. В.	Французский язык. 11 класс. Учебное пособие (базовый уровень)	11	687.169999999999959
80	Кулигина А. С., Щепилова А. В.	Французский язык.  Рабочая тетрадь. 11 класс	11	320.649999999999977
81	\N	\N	\N	\N
82	\N	\N	\N	\N
83	Сизова А. А., Чень Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 10 класс. Учебное пособие. Базовый и углубленный уровни	10	577.5
84	Сизова А. А., Чень Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. 11 класс.  Учебное пособие. Базовый и углубленный уровни	11	577.5
85	\N	\N	\N	\N
86	\N	\N	\N	\N
87	Под ред. Торкунова А. В.	История России. 10 кл. Базовый уровень. В 2-х ч.. Ч.1	10	311.850000000000023
88	Под ред. Торкунова А. В.	История России. 10 кл.. Базовый уровень. В 2-х ч.. Ч.2	10	311.850000000000023
89	Под ред. Торкунова А. В.	История России. 11 кл. Базовый уровень. В 2-х ч.. Ч.1	11	311.850000000000023
90	Под ред. Торкунова А. В.	История России. 11 кл. Базовый уровень. В 2-х ч.. Ч.2	11	311.850000000000023
91	Борисов Н. С., Левандовский А. А. / Под ред. Карпова С. П.	История. 11 класс. Учебное пособие. Углублённый уровень. В 2-х частях. Ч. 1	11	374.879999999999995
92	Борисов Н. С., Левандовский А. А. / Под ред. Карпова С. П.	История. 11 класс. Учебное пособие. Углублённый уровень. В 2-х частях. Ч. 2	11	374.879999999999995
93	Сороко-Цюпа О. С. и др.	История. Всеобщая история. Новейшая история. 10 кл. Базовый уровень	10	358.050000000000011
94	Сороко-Цюпа А. О. 	История. Всеобщая история. Новейшая история. 11 кл. Базовый уровень	11	358.050000000000011
95	\N	\N	\N	\N
96	Левицкий М. Л., Шейнин Э. Я., Виленский В. М.	Экономика. 10 класс. Учебное пособие	10	373.670000000000016
97	Левицкий М. Л., Шейнин Э. Я., Виленский В. М.	Экономика. 11 класс. Учебное пособие	11	373.670000000000016
98	\N	\N	\N	\N
99	Кашанина Т. В.	Право. 10-11 кл. В 2-х ч. Ч. 1. Базовый уровень. Учебное пособие	 10 - 11	356.949999999999989
100	Кашанина Т. В.	Право. 10-11 кл. В 2-х ч. Ч. 2. Базовый уровень. Учебное пособие	 10 - 11	356.949999999999989
101	\N	\N	\N	\N
102	Боголюбов Л. Н., Лазебникова А. Ю., Смирнова Н. М. и др. / Под ред. Боголюбова Л. Н., Лазебниковой А	Обществознание. 10 класс. Профильный уровень. Учебное пособие	10	728.419999999999959
103	Боголюбов Л. Н., Лазебникова А. Ю., Кинкулькин А. Т. и др. / Под ред. Боголюбова Л. Н., Лазебниковой	Обществознание. 11 класс. Профильный уровень. Учебное пособие	11	728.419999999999959
104	\N	\N	\N	\N
105	Данилов А. А., Косулина Л. Г., Брандт М. Ю. и др.	Россия в мире. 10-11 кл.. В 2-х ч.. Ч.1. Учебное пособие	 10 - 11	404.25
106	Данилов А. А., Косулина Л. Г., Брандт М. Ю. и др.	Россия в мире. 10-11 кл.. В 2-х ч.. Ч.2. Учебное пособие	 10 - 11	404.25
107	\N	\N	\N	\N
108	\N	\N	\N	\N
109	Колмогоров А. Н., Абрамов А. М., Дудницын Ю. П. и др. / Под ред. Колмогорова А. Н.	Алгебра и начала математического анализа. 10-11 классы. Учебное пособие.	 10 - 11	313.389999999999986
110	Шабунин М. И., Прокофьев А. А.	Математика: Алгебра и начала  математического анализа, геометрия. Алгебра и начала математического анализа. 10 кл.Учебное пособие.	10	440.220000000000027
111	Шабунин М. И., Прокофьев А. А.	Математика: Алгебра и начала  математического анализа, геометрия. Алгебра и начала математического анализа. 11 кл.Учебное пособие.	11	440.220000000000027
112	\N	\N	\N	\N
113	\N	\N	\N	\N
114	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 10 кл.Углублённый уровень. Учебное пособие.	10	436.810000000000002
115	Рудзитис Г. Е., Фельдман Ф. Г.	Химия. 11 кл.Углублённый уровень. Учебное пособие.	11	436.810000000000002
116	Габриелян О. С., Остроумов И. Г., Сладков С. А.	Химия. 10 класс. Углублённый уровень. Учебное пособие.	10	462
117	Габриелян О. С., Остроумов И. Г., Лёвкин А.Н., Сладков С. А.	Химия. 11 класс. Углублённый уровень. Учебное пособие.	11	462
118	\N	\N	\N	\N
119	\N	\N	\N	\N
120	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 10 класс. Базовый уровнь. Учебное пособие.	10	420.199999999999989
121	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. 11 класс. Базовый уровнь. Учебное пособие.	11	462
122	Смирнов А. Т., Хренников Б. О.	Основы безопасности жизнедеятельности. Основы медицинских знаний и здорового образа жизни. 10-11 классы. Учебное пособие.	 10 - 11	463.100000000000023
123	\N	\N	\N	\N
124	\N	\N	\N	\N
125	\N	\N	\N	\N
126	\N	\N	\N	\N
127	Федянина А. Ю. и др.	Чтение. 2  класс. В 2 частях. Часть 1 (для глухих обучающихся). Учебное пособие	2	1126.83999999999992
128	Федянина А. Ю. и др.	Чтение. 2  класс. В 2 частях. Часть 2 (для глухих обучающихся). Учебное пособие	2	1126.83999999999992
129	\N	\N	\N	\N
130	\N	\N	\N	\N
131	Евтушенко И.В.	Музыка. 1 класс (для обучающихся с интеллектуальными нарушениями). Учебное пособие	1	578.82000000000005
132	Евтушенко И.В.	Музыка. 2 класс (для обучающихся с интеллектуальными нарушениями). Учебное пособие	2	578.82000000000005
133	\N	\N	\N	\N
134	Рау М. Ю., Зыкова М. А., Суринов И. В.	Изобразительное искусство. 2 класс (для глухих и слабослышащих обучающихся). Учебное пособие	2	833.470000000000027
135	\N	\N	\N	\N
136	\N	\N	\N	\N
137	\N	\N	\N	\N
138	\N	\N	\N	\N
139	Рау М. Ю., Зыкова М. А.	Изобразительное искусство. 5 класс (для обучающихся с интеллектуальными нарушениями). Учебное пособие	5	519.75
140	\N	\N	\N	\N
141	\N	\N	\N	\N
142	\N	\N	\N	\N
143	Карман Н. М., Ковалева Е. А., Зак Г. Г.	Технология. Цветоводство и декоративное садоводство. 5 класс (для обучающихся с интеллектуальными нарушениями). Учебное пособие	5	635.25
144	Карман Н. М., Ковалева Е. А., Зак Г. Г.	Технология. Цветоводство и декоративное садоводство. 6 класс (для обучающихся с интеллектуальными нарушениями). Учебное пособие	6	577.5
\.


--
-- Data for Name: book_prosvet_sh; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_prosvet_sh (id, author, name, grade, price) FROM stdin;
1	\N	\N	\N	\N
2	\N	\N	\N	\N
3	Логинова О. Б., Яковлева С. Г. / Под ред. Логиновой О. Б.	Мои достижения. Итоговые комплексные работы. 1 класс.	1	270.600000000000023
4	Логинова О. Б., Яковлева С. Г. / Под ред. Логиновой О. Б.	Мои достижения. Итоговые комплексные работы. 2 класс.	2	324.5
5	Логинова О. Б., Яковлева С. Г. / Под ред. Логиновой О. Б.	Мои достижения. Итоговые комплексные работы. 3 класс.	3	438.899999999999977
6	Логинова О. Б., Яковлева С. Г. / Под ред. Логиновой О. Б.	Мои достижения. Итоговые комплексные работы. 4 класс	4	117.700000000000003
7	Иванов А. В.	Мой портфолио. 1 класс.	1	136.400000000000006
8	Логинова А. А., Данилюк А. Я.	Духовно-нравственное развитие и воспитание учащихся. Мониторинг результатов. Книга моих размышлений. 1 класс	1	114.400000000000006
9	Иванов А. В.	Мой портфолио. 2 класс.	2	136.400000000000006
10	Логинова А. А., Данилюк А. Я.	Духовно-нравственное развитие и воспитание учащихся. Мониторинг результатов. Книга моих размышлений. 2 класс	2	147.400000000000006
11	Иванов А. В.	Мой портфолио. 3 класс	3	136.400000000000006
12	Логинова А. А., Данилюк А. Я.	Духовно-нравственное развитие и воспитание учащихся. Мониторинг результатов. Книга моих размышлений. 3 класс	3	147.400000000000006
13	Иванов А. В.	Мой портфолио. 4 класс	4	136.400000000000006
14	Галеева Н.Л. и др.	Сборник метапредметных заданий для начальной школы. 2 класс. Часть 1.	2	235.400000000000006
15	Галеева Н.Л. и др.	Сборник метапредметных заданий для начальной школы. 2 класс. Часть 2.	2	235.400000000000006
16	Галеева Н. Л., Кононова Е,Ю., Трафлялина А.А. и др.	Сборник метапредметных заданий для начальной школы. 3 класс. Часть 1.	3	235.400000000000006
17	Галеева Н. Л., Евдокимова Г.Ю., Замулина Н.В. и др.	Сборник метапредметных заданий для начальной школы. 3 класс. Часть 2.	3	235.400000000000006
18	Галеева Н. Л., Кононова Е,Ю., Трафлялина А.А. и др.	Сборник метапредметных заданий для начальной школы. 4 класс. Часть 1.	4	235.400000000000006
19	Галеева Н. Л., Евдокимова Г.Ю., Замулина Н.В. и др.	Сборник метапредметных заданий для начальной школы. 4 класс. Часть 2.	4	235.400000000000006
20	Фомин О.В.	Детям о Великой Отечественной войне	1 - 4	253
21	\N	\N	\N	\N
22	\N	\N	\N	\N
23	Абрамов А. В., Самойлова М. И.	Читалочка. Дидактическое пособие. 1 класс	1	147.400000000000006
24	Илюхина В. А.	Чудо-пропись 1. 1 класс	1	89.0999999999999943
25	Илюхина В. А.	Чудо-пропись 2. 1 класс	1	89.0999999999999943
26	Илюхина В. А.	Чудо-пропись 3. 1 класс	1	89.0999999999999943
27	Илюхина В. А.	Чудо-пропись 4. 1 класс	1	89.0999999999999943
28	Горецкий В. Г., Федосова Н. А.	Прописи. 1 класс. В 4-х ч. Ч. 1	1	75.9000000000000057
29	Горецкий В. Г., Федосова Н. А.	Прописи. 1 класс. В 4-х ч. Ч.2	1	75.9000000000000057
30	Горецкий В. Г., Федосова Н. А.	Прописи. 1 класс. В 4-х ч. Ч. 3	1	75.9000000000000057
31	Горецкий В. Г., Федосова Н. А.	Прописи. 1 класс. В 4-х ч. Ч. 4	1	75.9000000000000057
32	Игнатьева Т. В.	Обучение грамоте. Тесты. 1 класс	1	88.5499999999999972
33	Канакина В. П.	Русский язык. Рабочая тетрадь. 1 класс	1	107.25
34	Канакина В. П.	Русский язык. Проверочные работы. 1 класс	1	107.799999999999997
35	Канакина В. П.	Русский язык. Тетрадь учебных достижений. 1 класс	1	123.75
36	Канакина В. П., Щёголева Г. С.	Русский язык. Сборник диктантов и творческих работ. 1-2 классы	1 - 2	122.099999999999994
37	Канакина В. П.	Русский язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	120.450000000000003
38	Канакина В. П.	Русский язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	120.450000000000003
39	Канакина В. П.	Русский язык. Тетрадь учебных достижений. 2 класс	2	142.449999999999989
40	Канакина В. П., Щёголева Г. С.	Русский язык. Проверочные работы. 2 класс	2	131.449999999999989
41	Канакина В. П.	Русский язык. Раздаточный материал. 2 класс	2	134.199999999999989
42	Канакина В. П.	Русский язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	120.450000000000003
43	Канакина В. П.	Русский язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	120.450000000000003
44	Канакина В. П.	Русский язык. Тетрадь учебных достижений. 3 класс	3	142.449999999999989
45	Канакина В. П., Щеголева Г. С.	Русский язык. Проверочные работы. 3 класс	3	130.349999999999994
46	Канакина В. П.	Русский язык. Раздаточный материал. 3 класс	3	140.800000000000011
47	Канакина В. П., Щёголева Г. С.	Русский язык. Сборник диктантов и творческих работ. 3-4 классы	3 - 4	178.75
48	Канакина В. П.	Русский язык. Рабочая тетрадь. 4 класс. В 2-х ч.  Ч. 1	4	120.450000000000003
49	Канакина В. П.	Русский язык. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 2	4	120.450000000000003
50	Канакина В. П.	Русский язык. Проверочные работы. 4 класс	4	130.349999999999994
51	Канакина В. П.	Русский язык. Тетрадь учебных достижений. 4 класс	4	139.699999999999989
52	Канакина В. П.	Русский язык. Раздаточный материал. 4 класс	4	121
53	Климанова Л. Ф., Абрамов А. В., Борейко Л. Н.	Рисуй, думай, рассказывай. Рабочая тетрадь. 1 класс	1	103.950000000000003
54	Климанова Л. Ф., Абрамов А. В.	Пиши красиво. Рабочая тетрадь. 1 класс	1	103.950000000000003
55	Климанова Л. Ф., Абрамов А. В., Пудикова Н. А.	Мой алфавит. Прописи. 1 класс. В 2-х ч. Ч. 1	1	106.700000000000003
56	Климанова Л. Ф., Абрамов А. В., Пудикова Н. А.	Мой алфавит. Прописи. 1 класс. В 2-х ч. Ч. 2	1	106.700000000000003
57	Климанова Л. Ф.	Читалочка. Дидактическое пособие. 1 класс	1	175.449999999999989
58	Михайлова С. Ю.	Русский язык. Проверочные работы. 1 класс	1	106.700000000000003
59	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 1 класс	1	132.550000000000011
60	Бондаренко А. А.	Рабочий словарик. 1 класс	1	120.450000000000003
61	Михайлова С. Ю.	Русский язык. Тетрадь учебных достижений. 1 класс	1	129.25
62	Михайлова С. Ю.	Русский язык. Тесты. 1 класс	1	96.25
63	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	132.550000000000011
64	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	132.550000000000011
65	Бондаренко А. А.	Рабочий словарик. 2 класс	2	120.450000000000003
66	Михайлова С. Ю.	Русский язык. Проверочные работы. 2 класс	2	134.199999999999989
67	Михайлова С. Ю.	Русский язык. Тетрадь учебных достижений. 2 класс	2	139.150000000000006
68	Михайлова С. Ю.	Русский язык. Тесты. 2 класс	2	106.700000000000003
69	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	132.550000000000011
70	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	132.550000000000011
71	Бондаренко А. А.	Рабочий словарик. 3 класс	3	133.099999999999994
72	Михайлова С. Ю.	Русский язык. Проверочные работы. 3 класс	3	134.199999999999989
73	Михайлова С. Ю.	Русский язык. Тетрадь учебных достижений. 3 класс	3	139.150000000000006
74	Михайлова С. Ю.	Русский язык. Тесты. 3 класс	3	121
75	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 1.	4	132.550000000000011
76	Климанова Л. Ф., Бабушкина Т. В.	Русский язык. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 2	4	132.550000000000011
77	Бондаренко А. А.	Рабочий словарик. 4 класс	4	119.900000000000006
78	Михайлова С. Ю.	Русский язык. Тесты. 4 класс	4	121
79	Михайлова С. Ю.	Русский язык. Проверочные работы. 4 класс	4	134.199999999999989
80	Михайлова С. Ю.	Русский язык. Тетрадь учебных достижений. 4 класс	4	130.900000000000006
81	Михайлова С. Ю.	Русский язык. Тетрадь летних заданий. 1 класс	1	88
82	Михайлова С. Ю.	Русский язык. Тетрадь летних заданий. 2 класс	2	88
83	Михайлова С. Ю.	Русский язык. Тетрадь летних заданий. 3 класс	3	88
84	Михайлова С. Ю.	Русский язык. Тетрадь летних заданий. 4 класс	4	88
85	Бондаренко А. А.	Русский язык. Проверочные работы. 1 класс                          	1	77.5499999999999972
86	Бондаренко А. А.	Русский язык. Проверочные работы. 2 класс                          	2	77.5499999999999972
87	Бондаренко А. А.	Русский язык. Проверочные работы. 3 класс                          	3	77.5499999999999972
88	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык. 2-4 классы. 	2 - 4	302.5
89	\N	Алфавит (печатные и рукописные буквы русского алфавита). Дем. табл. для нач. школы. Учебное пособие.	1 - 4	88.5499999999999972
90	Бондаренко А. А., Гуркова И. В.	Пишу правильно. Орфографический  словарь	1 - 4	132
91	Юрий Ясень	Дневник младшего школьника. Планируй и успевай!	1 - 4	106.150000000000006
92	\N	\N	\N	\N
93	Климанова Л. Ф., Коти Т. Ю.	Волшебная сила слов. Рабочая тетрадь по развитию речи. 1 класс.	1	135.849999999999994
94	Климанова Л. Ф., Коти Т. Ю.	Литературное чтение. Творческая тетрадь. 1 класс	1	154
95	Бойкина М. В.	Литературное чтение. Тетрадь учебных достижений. 1 класс	1	125.400000000000006
96	Коти Т.Ю.	Литературное чтение. Творческая тетрадь. 2 класс	2	154
97	Климанова Л. Ф., Коти Т.Ю., Абрамов А. В. и др.	Волшебная сила слов. Рабочая тетрадь по развитию речи. 2 класс	2	135.849999999999994
98	Бойкина М. В.	Литературное чтение. Тетрадь учебных достижений. 2 класс	2	125.400000000000006
99	Коти Т. Ю.	Литературное чтение. Творческая тетрадь. 3 класс	3	154
100	Климанова Л. Ф., Коти Т. Ю.	Волшебная сила слов. Рабочая тетрадь по развитию речи. 3 класс	3	135.849999999999994
101	Бойкина М. В.	Литературное чтение. Тетрадь учебных достижений. 3 класс	3	125.400000000000006
102	Коти Т.Ю.	Литературное чтение. Творческая тетрадь. 4 класс	4	154
103	Климанова Л. Ф., Коти Т.Ю.	Волшебная сила слов. Рабочая тетрадь по развитию речи. 4 класс	4	135.849999999999994
104	Бойкина М. В.	Литературное чтение. Тетрадь учебных достижений. 4 класс	4	125.400000000000006
105	Бойкина М. В., Виноградская Л. А.	Литературное чтение. Рабочая тетрадь. 1 класс	1	162.800000000000011
106	Стефаненко Н. А.	Литературное чтение. Тетрадь учебных достижений. 1 класс	1	139.699999999999989
107	Бойкина М. В., Виноградская Л. А.	Литературное чтение. Рабочая тетрадь. 2 класс	2	162.800000000000011
108	Стефаненко Н. А.	Литературное чтение. Тетрадь учебных достижений. 2 класс	2	139.699999999999989
109	Бойкина М. В., Виноградская Л. А.	Литературное чтение. Рабочая тетрадь. 3 класс	3	162.800000000000011
110	Стефаненко Н. А.	Литературное чтение. Тетрадь учебных достижений. 3 класс	3	139.699999999999989
111	Бойкина М. В., Виноградская Л. А.	Литературное чтение. Рабочая тетрадь. 4 класс	4	162.800000000000011
112	Стефаненко Н. А.	Литературное чтение. Тетрадь учебных достижений. 4  класс	4	139.699999999999989
113	Фомин О. В.	Литературное чтение. Читаем летом. 1 класс	1	164.449999999999989
114	Фомин О. В.	Литературное чтение. Читаем летом. 2 класс	2	163.900000000000006
115	Фомин О. В.	Литературное чтение. Читаем летом. 3 класс	3	162.25
116	Фомин О. В.	Литературное чтение. Читаем летом. 4 класс	4	162.25
117	Ульяхина Л. Г.	Смысловое чтение. Читаю, понимаю, узнаю. 1 класс	1	69.2999999999999972
118	Ульяхина Л. Г.	Смысловое чтение. Читаю, понимаю, узнаю. 2 класс	2	69.2999999999999972
119	\N	\N	\N	\N
120	\N	\N	\N	\N
121	\N	\N	\N	\N
122	Смирнова Е. Ю., Хайн Э.	Английский язык. Тетрадь-тренажер. 2 класс	2	161.699999999999989
123	Смирнов А. В.	Английский язык. Тетрадь-экзаменатор. 2 класс	2	148.5
124	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Учебное пособие для начинающих.	1	396.550000000000011
125	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Рабочая тетрадь к учебному пособию для начинающих.	1	255.199999999999989
126	Мильруд Р. П., Суворова Ж. А.	Английский язык. Сборник примерных рабочих программ. Предметная линия учебников "Звездный английский" 2-11 кл.	2 - 11	187.550000000000011
127	Баранова К. М., Дули Д., Эванс В.	Английский язык. Изучаем английский алфавит.	2	259.050000000000011
128	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	227.150000000000006
129	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	227.150000000000006
130	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Контрольные задания. 2 класс	2	133.650000000000006
131	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Языковой портфель. 2 класс	2	106.700000000000003
132	Сахаров Е. В., Бахтина М. Л., Романова К. К.	Английский язык. Сборник упражнений. 2 класс	2	141.349999999999994
133	Рязанцева С. Б.	Английский язык. Сборник грамматических упражнений. 2 класс	2	106.700000000000003
134	Мильруд Р. П., Суханова О. Н.	Английский язык. Книга для родителей. 2 класс	2	132.550000000000011
135	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	231.550000000000011
136	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	231.550000000000011
137	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Контрольные задания. 3 класс	3	146.300000000000011
138	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Языковой портфель. 3 класс	3	106.700000000000003
139	Сахаров Е. В., Бахтина М. Л., Романова К. К. и др.	Английский язык. Сборник упражнений. 3 класс	3	141.349999999999994
140	Рязанцева С. Б.	Английский язык. Сборник грамматических упражнений. 3 класс	3	112.75
141	Мильруд Р. П., Суханова О. Н.	Английский язык. Книга для родителей. 3-4 классы	3 - 4	164.449999999999989
142	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 1	4	231.550000000000011
143	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 4 класс  В 2-х ч. Ч. 2	4	231.550000000000011
144	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Контрольные задания. 4 класс	4	146.300000000000011
145	Сахаров Е. В., Бахтина М. Л., Романова К. К.	Английский язык. Сборник упражнений. 4 класс	4	141.349999999999994
146	Рязанцева С. Б.	Английский язык. Сборник грамматических упражнений. 4 класс	4	112.75
147	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. Учебное пособие для начинающих.	1	370.699999999999989
148	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Рабочая тетрадь к учебному пособию для начинающих	1	282.699999999999989
149	Быкова Н. И., Поспелова М. Д., Апальков В. Г.	Английский язык. Сборник примерных рабочих программ. Предметная линия учебников "Английский в фокусе" 2-11 классы	2 - 11	187.550000000000011
150	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Языковой портфель. 2 класс.	2	61.0499999999999972
151	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Рабочая тетрадь. 2 класс	2	279.949999999999989
152	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. Контрольные задания. 2 класс.	2	61.6000000000000014
153	Быкова Н. И., Поспелова М. Д.	Английский язык. Сборник упражнений. 2 класс	2	147.400000000000006
154	Юшина Д. Г.	Английский язык. Грамматический тренажер. 2 класс	2	106.700000000000003
155	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Рабочая тетрадь. 3 класс	3	279.949999999999989
156	Быкова Н. И., Дули Д., Поспелова М. Д. и др.	Английский язык. Языковой портфель. 3 класс	3	87.230000000000004
157	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Контрольные задания. 3 класс.	3	114.400000000000006
158	Быкова Н. И., Поспелова М. Д.	Английский язык. Сборник упражнений. 3 класс	3	147.400000000000006
159	Юшина Д. Г.	Английский язык. Грамматический тренажер. 3 класс	3	106.700000000000003
160	Быкова Н. И., Поспелова М. Д.	Английский язык. Книга для родителей. 3 класс	3	119.900000000000006
161	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Рабочая тетрадь. 4 класс.	4	279.949999999999989
162	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Языковой портфель. 4 класс	4	87.1200000000000045
163	Быкова Н. И., Дули Д. ., Поспелова М. Д. и др.	Английский язык. Контрольные задания. 4 класс	4	114.400000000000006
164	Быкова Н. И., Поспелова М. Д.	Английский язык. Сборник упражнений. 4 класс	4	147.400000000000006
165	Юшина Д. Г.	Английский язык. Грамматический тренажер. 4 класс	4	106.700000000000003
166	Быкова Н. И., Поспелова М. Д.	Английский язык. Книга для родителей. 4 класс	4	119.900000000000006
167	Верещагина И. Н., Бондаренко К. А., Притыкина Т. А.	Английский язык. Рабочая тетрадь. 2 класс.	2	179.300000000000011
168	Комиссаров К. В.	Английский язык. Контрольные и проверочные работы. 2 класс	2	106.700000000000003
169	Автор-сост. Верещагина И. Н., Бондаренко К. А.	Английский  язык. Книга для чтения. 2 класс	2	156.199999999999989
170	Коти Т.	Английский язык. Книга для чтения летом. 2 класс	2	130.900000000000006
171	Верещагина И. Н., Притыкина Т. А.	Английский язык. Рабочая тетрадь. 3 класс	3	179.300000000000011
172	Комиссаров К. В.	Английский язык. Контрольные и проверочные работы. 3 класс	3	106.700000000000003
173	Автор-сост. Верещагина И. Н., Притыкина Т. А.	Английский язык. Книга для чтения. 3 класс.	3	185.349999999999994
174	Верещагина И. Н., Афанасьева О. В.	Английский язык. Рабочая тетрадь. 4 класс.	4	179.300000000000011
175	Комиссаров К. В.	Английский язык. Контрольные и проверочные работы. 4 класс	4	106.700000000000003
176	Автор-сост. Верещагина И. Н., Афанасьева О. В.	Английский язык. Книга для чтения. 4 класс	4	185.349999999999994
177	Дули Д., Эванс В.	Английский язык. Время грамматики. 2-4 классы.	2 - 4	266.199999999999989
178	\N	\N	\N	\N
179	Бим И. Л., Рыжова Л. И., Садомова Л. В., Лытаева М. А.	Немецкий язык. Сборник примерных рабочих программ. Предметная линия учебников И. Л. Бим. 2–11 классы	2 - 11	237.599999999999994
180	Бим И. Л., Рыжова Л. И.	Немецкий язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. А.	2	136.949999999999989
181	Бим И. Л., Рыжова Л. И.	Немецкий язык. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. Б.	2	136.949999999999989
182	Каплина О. В., Бакирова И. Б.	Немецкий язык. Контрольные задания. 2 класс	2	98.4500000000000028
183	Шубина В. П.	Немецкий язык. Словарная тетрадь. 2 класса	2	56.6499999999999986
184	Бим И. Л., Рыжова Л. И., Фомичева Л. М.	Немецкий язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. А	3	136.949999999999989
185	Бим И. Л., Рыжова Л. И., Фомичева Л. М.	Немецкий язык. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. Б	3	136.949999999999989
186	Каплина О. В., Бакирова И. Б.	Немецкий язык. Контрольные задания. 3 кл.	3	99
187	Шубина В. П.	Немецкий язык. Словарная тетрадь. 3 класс	3	56.1000000000000014
188	Бим И. Л., Рыжова Л. И.	Немецкий язык. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. А	4	136.949999999999989
189	Бим И. Л., Рыжова Л. И.	Немецкий язык. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. Б	4	136.949999999999989
190	Каплина О. В., Бакирова И. Б.	Немецкий язык. Контрольные задания. 4 кл.	4	98.4500000000000028
191	Шубина В. П.	Немецкий язык. Словарная тетрадь. 4 класс	4	56.1000000000000014
192	Захарова О. Л.	Немецкий язык. Прописи. 2 класс	2	96.25
193	Захарова О. Л.	Немецкий язык. Рабочая тетрадь. 2 класс В 2-х ч.  Ч. 1	2	172.150000000000006
194	Захарова О. Л.	Немецкий язык. Рабочая тетрадь. 2 класс В 2-х ч. Ч. 2	2	172.150000000000006
195	Захарова О. Л.	Немецкий язык. Рабочая тетрадь. 3 класс В 2-х ч. Ч. 1	3	172.150000000000006
196	Захарова О. Л.	Немецкий язык. Рабочая тетрадь. 3 класс В 2-х ч. Ч. 2	3	172.150000000000006
197	Захарова О. Л.	Немецкий язык. Рабочая тетрадь. 4 класс В 2-х. Ч. 1	4	172.150000000000006
198	Захарова О. Л.	Немецкий язык. Рабочая тетрадь. 4 класс В 2-х ч. Ч. 2	4	172.150000000000006
199	Бакирова И. Б.	Немецкий язык. Грамматический тренажер. 2 класс	2	103.950000000000003
200	Бакирова И. Б.	Немецкий язык. Грамматический тренажер. 3 класс	3	103.950000000000003
201	Бакирова И. Б.	Немецкий язык. Грамматический тренажер. 4 класс	4	103.950000000000003
202	\N	\N	\N	\N
203	Гусева А. В.	Французский язык. Рабочая тетрадь. 2 класс.	2	196.349999999999994
204	Гусева А. В.	Французский язык. Рабочая тетрадь. 3 класс. Углубленное изучение.	3	196.349999999999994
205	Гусева А. В.	Французский язык. Рабочая тетрадь. 4 класс.	4	243.650000000000006
206	Кулигина А. С., Корчагина Т. В.	Французский язык. Рабочая тетрадь. 2 класс. 	2	165.550000000000011
207	Кирьянова М. Г.	Французский язык. Прописи. 2 класс.	2	106.700000000000003
208	Кулигина А. С., Корчагина Т. В.	Французский язык. Рабочая тетрадь. 3 класс. 	3	177.099999999999994
209	Кулигина А. С.	Французский язык. Рабочая тетрадь. 4 класс.	4	256.850000000000023
210	Кулигина А. С.	Французский язык. Тестовые и контрольные задания. 2-4 классы	2 - 4	250.25
211	\N	\N	\N	\N
212	Воинова А. А., Бухарова Ю. А.	Испанский язык. Рабочая тетрадь. 2 класс. Углубленное изучение.	2	284.899999999999977
213	Воинова А. А., Бухарова Ю. А.	Испанский язык. Рабочая тетрадь. 3 класс. Углубленное изучение.	3	284.899999999999977
214	Воинова А. А., Бухарова Ю. А.	Испанский язык. Рабочая тетрадь. 4 класс. Углубленное изучение.	4	284.899999999999977
215	Бухарова Ю. А., Колобова В. В.	Испанский язык. Тестовые и контрольные задания. 2-4 классы	2 - 4	284.899999999999977
216	\N	\N	\N	\N
217	Бука Т. Б.	Математика. Тесты. 1 класс	1	91.2999999999999972
218	Бука Т. Б.	Математика.  Проверочные работы. 1 класс	1	118.799999999999997
219	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 1	1	148.5
220	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 2	1	148.5
221	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	148.5
222	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	148.5
223	Миракова Т. Н., Никифорова Г. В.	Математика. Проверочные работы. 2 класс	2	117.700000000000003
224	Миракова Т. Н.	Математика. Тесты. 2 класс	2	107.25
225	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	148.5
226	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	148.5
227	Миракова Т. Н., Никифорова Г. В.	Математика. Проверочные работы. 3 класс	3	117.700000000000003
228	Миракова Т. Н.	Математика. Тесты. 3 класс	3	107.25
229	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 1	4	148.5
230	Дорофеев Г. В., Миракова Т. Н., Бука Т. Б.	Математика. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 2.	4	148.5
231	Никифорова Г. В.	Математика. Проверочные работы. 4 класс	4	116.599999999999994
232	Миракова Т. Н.	Математика. Тесты. 4 класс	4	100.099999999999994
233	Волкова С. И.	Математика. Контрольные работы. 1-4 классы	1 - 4	111.650000000000006
234	Моро М. И., Волкова С. И.	Математика. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 1	1	96.7999999999999972
235	Моро М. И., Волкова С. И.	Математика. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 2	1	96.7999999999999972
236	Волкова С. И.	Математика. Устные упражнения. 1 класс	1	118.25
237	Волкова С. И.	Математика. Проверочные работы. 1 класс	1	107.25
238	Волкова С. И.	Математика. Тесты. 1 класс	1	104.5
239	Волкова С. И.	Математика. Тетрадь учебных достижений. 1 класс	1	122.650000000000006
240	Моро М. И., Волкова С. И.	Для тех, кто любит математику. 1 класс.	1	112.200000000000003
241	Волкова С. И.	Математика и конструирование. 1 класс	1	125.950000000000003
242	Моро М. И., Волкова С. И.	Математика. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	112.75
243	Моро М. И., Волкова С. И.	Математика. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	112.75
244	Волкова С. И.	Математика. Тесты. 2 класс	2	103.400000000000006
245	Волкова С. И.	Математика. Тетрадь учебных достижений. 2 класс	2	112.75
246	Волкова С. И.	Математика. Устные упражнения.  2 класс	2	118.25
247	Волкова С. И.	Математика. Проверочные работы. 2 класс	2	112.75
248	Моро М. И., Волкова С. И.	Для тех, кто любит математику. 2 класс	2	137.5
249	Волкова С. И.	Математика и конструирование. 2 класс	2	125.400000000000006
250	Моро М. И., Волкова С. И.	Математика. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	112.75
251	Моро М. И., Волкова С. И.	Математика. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	112.75
252	Волкова С. И.	Математика. Тесты. 3 класс	3	104.5
253	Волкова С. И.	Математика. Тетрадь учебных достижений.  3 класс	3	112.75
254	Волкова С. И.	Математика. Устные упражнения. 3 класс	3	118.25
255	Волкова С. И.	Математика. Проверочные работы. 3 класс	3	112.75
256	Моро М. И., Волкова С. И.	Для тех, кто любит математику. 3 класс.	3	137.5
257	Волкова С. И.	Математика и конструирование. 3 класс	3	125.400000000000006
258	Волкова С. И.	Математика. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 1	4	112.75
259	Волкова С. И.	Математика. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 2	4	112.75
260	Волкова С. И.	Математика. Тесты. 4 класс	4	104.5
261	Волкова С. И.	Математика. Тетрадь учебных достижений. 4 класс	4	112.75
262	Волкова С. И.	Математика. Устные упражнения. 4 класс	4	118.25
263	Волкова С. И.	Математика. Проверочные работы.  4 класс	4	112.75
264	Моро М. И., Волкова С. И.	Для тех, кто любит математику. 4 класс	4	137.5
265	Волкова С. И.	Математика и конструирование. 4 класс	4	125.400000000000006
266	Селькина Л. В., Худякова М. А.	Математика. Тетрадь летних заданий. 1 класс	1	88.5499999999999972
267	Федоскина О. В.	Математика. Тетрадь летних заданий. 3 класс	3	88
268	Федоскина О. В.	Математика. Тетрадь летних заданий. 4 класс	4	88
269	Рыдзе О. А.	Математика. 100 задач с решениями и ответами. 1 класс	1	69.2999999999999972
270	Федоскина О. В.	Математика. Сложение  и вычитание в пределах 10. 1 класс	1	49.5
271	Рыдзе О. А.	Математика. 100 задач с решениями и ответами. 2 класс	2	69.2999999999999972
272	Рыдзе О. А.	100 задач по математике с решениями и ответами. 3 класс	3	69.2999999999999972
273	Никифорова Г. В.        	Сложение и вычитание в пределах 20. 1-2 класс	1 - 2	49.5
274	Никифорова Г. В.        	Сложение и вычитание в пределах 100. 2-3 класс	2 - 3	49.5
275	Никифорова Г. В.     	Табличное умножение и деление. 2-3 класс	2 - 3	49.5
276	Никифорова Г. В.        	Внетабличное умножение и деление. 3–4 класс 	3 - 4	49.5
277	Глаголева Ю. И.	Математика. Тесты. 1 кл.	1	69.2999999999999972
278	Глаголева Ю. И.	Математика. Тесты. 2 класс	2	69.2999999999999972
279	Глаголева Ю. И.	Математика. Тесты. 3 класс	3	69.2999999999999972
280	Глаголева Ю. И.	Математика. Тесты. 4 класс	4	69.2999999999999972
281	Глаголева Ю. И.	Математика. Проверочные работы. 1 класс	1	77.4399999999999977
282	Глаголева Ю. И.	Математика. Проверочные работы. 2 класс	2	77.4399999999999977
283	Глаголева Ю. И.	Математика. Проверочные работы. 3 класс	3	77.5499999999999972
284	Глаголева Ю. И.	Математика. Проверочные работы. 4 класс	4	77.5499999999999972
285	\N	\N	\N	\N
286	Плешаков А. А.	От земли до неба. Атлас-определитель. 1-4 класс	1 - 4	308.550000000000011
287	Плешаков А. А., Румянцев А. А.	Великан на поляне, или Первые уроки экологической этики.	1 - 4	308.550000000000011
288	Плешаков А. А.	Зелёные страницы.	2 - 3	308.550000000000011
289	Плешаков А. А., Плешаков С. А.	Энциклопедия путешествий. Страны мира. Книга для учащихся начальных классов	1 - 4	312.949999999999989
290	Плешаков А. А.	Окружающий мир. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 1	1	139.699999999999989
291	Плешаков А. А.	Окружающий мир. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 2	1	139.699999999999989
292	Плешаков А. А., Гара Н. Н., Назарова З. Д.	Окружающий мир. Тесты. 1 класс	1	148.5
293	Плешаков А. А., Плешаков С. А.	Окружающий мир. Проверочные работы. 1 класс	1	125.950000000000003
294	Плешаков А. А., Назарова З. Д.	Окружающий мир. Основы безопасности жизнедеятельности. Рабочая тетрадь. 1 класс	1	146.300000000000011
295	Плешаков А.А. и др.	Окружающий мир. Тетрадь учебных достижений. 1 класс	1	137.610000000000014
296	Плешаков А. А.	Окружающий мир. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	139.699999999999989
297	Плешаков А. А.	Окружающий мир. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	139.699999999999989
298	Плешаков А. А., Гара Н. Н., Назарова З. Д.	Окружающий мир. Тесты. 2 класс	2	148.5
299	Плешаков А. А., Плешаков С. А.	Окружающий мир. Проверочные работы. 2 класс	2	140.800000000000011
300	Плешаков А. А.	Окружающий мир. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	139.699999999999989
301	Плешаков А. А.	Окружающий мир. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	139.699999999999989
302	Плешаков А. А., Гара Н. Н., Назарова З. Д.	Окружающий мир. Тесты. 3 класс	3	148.5
303	Плешаков А.А.	Окружающий мир. Проверочные работы. 3 класс	3	132.550000000000011
304	Плешаков А. А., Крючкова Е. А.	Окружающий мир. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 1	4	139.699999999999989
305	Плешаков А. А., Крючкова Е. А.	Окружающий мир. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 2	4	139.699999999999989
306	Плешаков А. А., Гара Н. Н., Назарова З. Д.	Окружающий мир. Тесты. 4 класс	4	148.5
307	Плешаков А.А.	Окружающий мир. Проверочные работы. 4 класс	4	125.400000000000006
308	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 1	1	143
309	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 1 класс. В 2-х ч. Ч. 2	1	143
310	Плешаков А. А., Новицкая М. Ю., Назарова З. Д.	Окружающий мир. Тесты. 1 класс	1	140.25
311	Анастасова Л. П., Ижевский П. В., Иванова Н. В. / Под ред. Плешакова А. А.	Окружающий мир. Основы безопасности жизнедеятельности. Рабочая тетрадь. 1 класс	1	143.550000000000011
312	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 1	2	143
313	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 2 класс. В 2-х ч. Ч. 2	2	143
314	Плешаков А. А., Новицкая М. Ю., Назарова З. Д.	Окружающий мир. Тесты. 2 класс	2	140.25
315	Анастасова Л. П., Ижевский П. В., Иванова Н. В. / Под ред. Плешакова А. А.	Окружающий мир. Основы безопасности жизнедеятельности. Рабочая тетрадь. 2 класс	2	143.550000000000011
316	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 1	3	143
317	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 3 класс. В 2-х ч. Ч. 2	3	143
318	Ижевский П. В. / Под ред. Плешакова А. А.	Окружающий мир. Основы безопасности жизнедеятельности. Рабочая тетрадь. 3 класс.	3	143.550000000000011
319	Плешаков А. А., Новицкая М. Ю., Назарова З. Д.	Окружающий мир. Тесты. 3 класс	3	140.25
320	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 1	4	143
321	Плешаков А. А., Новицкая М. Ю.	Окружающий мир. Рабочая тетрадь. 4 класс. В 2-х ч. Ч. 2	4	143
322	Ижевский П. В. / Под ред. Плешакова А. А.	Окружающий мир. Основы безопасности жизнедеятельности. Рабочая тетрадь. 4 класс	4	143.550000000000011
323	\N	\N	\N	\N
324	Данилюк А. Я., Емельянова Т. В., Марченко О. Н. и др.	Сборник примерных рабочих программ. Основы религиозных культур и светской этики. 4 класс	4	162.800000000000011
325	Обернихина Г. А.	Основы религиозных культур и светской этики. Основы православной культуры. Рабочая тетрадь. 4 класс	4	170.5
326	Емельянова Т. В. / Под ред. Обернихиной Г. А.	Основы религиозных культур и светской этики. Основы буддийской культуры. Рабочая тетрадь. 4 класс	4	170.5
327	Мацыяка Е. В. / Под ред. Обернихиной Г. А.	Основы религиозных культур и светской этики. Основы мировых религиозных культур. Рабочая тетрадь. 4 класс	4	170.5
328	Шемшурина А. И.	Основы религиозных культур и светской этики. Основы светской этики. Рабочая тетрадь. 4 класс	4	170.5
329	\N	\N	\N	\N
330	\N	\N	\N	\N
331	Неменский Б. М., Неменская Л. А., Горяева Н. А. и др.	Изобразительное искусство. Сборник примерных рабочих программ. Предметная линия учебников под ред Б. М. Неменского. 1-4 классы. 5-8 классы	1 - 8	187.550000000000011
332	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 1 класс	1	150.699999999999989
333	Горяева Н. А., Неменская Л. А., Питерских А. С. и др. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 2 класс	2	150.699999999999989
334	Горяева Н. А., Неменская Л. А., Питерских А. С. и др. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 3 класс.	3	150.699999999999989
335	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 4 класс	4	150.699999999999989
336	Шпикалова Т. Я., Ершова Л. В., Поровская Г. А. и др.	Изобразительное искусство. Сборник примерных рабочих программ. Предметная линия учебников Т. Я. Шпикаловой. 1-4 классы. 5-8 классы	1 - 8	275
337	Шпикалова Т. Я., Ершова Л. В.	Уроки изобразительного  искусства. Поурочные разработки. 1-4 классы	1- 4	184.800000000000011
338	Шпикалова Т. Я., Ершова Л. В., Макарова Н. Р. и др.	Изобразительное искусство. Творческая тетрадь. 1 класс. 	1	156.75
339	Шпикалова Т. Я., Ершова Л. В., Щирова А. Н. и др.	Изобразительное искусство. Творческая тетрадь. 2 класс.	2	156.75
340	Шпикалова Т. Я., Ершова Л. В., Щирова А. Н. и др.	Изобразительное искусство. Творческая тетрадь. 3 класс. 	3	156.75
341	Шпикалова Т. Я., Ершова Л. В., Макарова Н. Р. и др.	Изобразительное искусство. Творческая тетрадь. 4 класс. 	4	156.75
342	\N	\N	\N	\N
343	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. Рабочая тетрадь. 1 класс. 	1	133.099999999999994
344	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. Рабочая тетрадь. 2 класс. 	2	133.099999999999994
345	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. Рабочая тетрадь. 3 класс.	3	133.099999999999994
346	Критская Е. Д., Сергеева Г. П., Шмагина Т. С.	Музыка. Рабочая тетрадь. 4 класс. 	4	133.099999999999994
347	\N	\N	\N	\N
348	Лутцева Е. А., Зуева Т. П.	Технология. Рабочая тетрадь. 1 класс + вкладка	1	158.400000000000006
349	Лутцева Е. А., Корнева Т. А., Корнев О. А.	Технология. Мастерская творческих проектов. 1 класс	1	101.200000000000003
350	Лутцева Е. А., Зуева Т. П.	Технология. Рабочая тетрадь. 2 класс+вкладка	2	158.400000000000006
351	Лутцева Е. А., Корнева Т.А., Корнев О.А.	Технология. Мастерская творческих проектов. 2 класс	2	101.200000000000003
352	Лутцева Е. А., Зуева Т. П.	Технология. Рабочая тетрадь. 3 класс	3	178.75
353	Лутцева Е. А., Корнева Т. А., Корнев О. А.	Технология. Мастерская творческих проектов. 3 класс	3	100.099999999999994
354	Лутцева Е. А., Зуева Т. П.	Технология. Рабочая тетрадь. 4 класс	4	178.75
355	Лутцева Е. А., Корнева Т.А., Корнев О. А.	Технология. Мастерская творческих проектов. 4 класс	4	100.099999999999994
356	Роговцева Н. И., Богданова Н. В., Фрейтаг И. П.	Технология. Рабочая тетрадь. 1 класс	1	140.25
357	Роговцева Н. И., Шипилова Н. В., Анащенкова С. В.	Технология. Тетрадь проектов. 1 класс	1	149.050000000000011
358	Роговцева Н. И., Богданова Н. В., Шипилова Н. Д.	Технология. Рабочая тетрадь. 2 класс	2	140.25
359	Роговцева Н. И., Шипилова Н. В., Анащенкова С. В.	Технология. Тетрадь проектов. 2 класс	2	149.050000000000011
360	Роговцева Н. И., Богданова Н. В., Шипилова Н. В.	Технология.  Рабочая тетрадь. 3 класс	3	140.25
361	Роговцева Н.И., Шипилова Н.В., Анащенкова С.В.	Технология. Тетрадь проектов. 3 класс	3	149.050000000000011
362	Роговцева Н. И., Анащенкова С. В.	Технология. Рабочая тетрадь. 4 класс	4	140.25
363	Роговцева Н.И., Шипилова Н.В., Анащенкова С.В.	Технология. Тетрадь проектов. 4 класс.	4	149.050000000000011
364	\N	\N	\N	\N
365	Лях В. И.	Физическая культура. Рабочие программы. Предметная линия учебников В. И. Ляха. 1-4 классы.	 1 - 4	107.25
366	Лях В. И.	Физическая культура. Методические рекомендации. 1-4 классы	 1 - 4	133.650000000000006
367	Матвеев А. П.	Физическая культура. Рабочие программы. Предметная линия учебников А. П. Матвеева. 1-4 классы.	 1 - 4	119.349999999999994
368	Кузнецов В. С., Колодницкий Г. А.	Внеурочная деятельность. Подготовка к сдаче комплекса ГТО	1 - 11	163.349999999999994
369	\N	\N	\N	\N
370	Кривопаленко Е. И. Кучегура Л. А. Рыбченко Е. И. Васильева Н. В.	Дневник здоровья. 1 класс	1	83.3799999999999955
371	Кривопаленко Е. И. Кучегура Л. А. Рыбченко Е. И. Васильева Н. В.	Дневник здоровья. 2 класс	2	95.2600000000000051
372	\N	\N	\N	\N
373	Ковалева Г. С., Кузнецова М. И., Краснянская К. А. Рыдзе О.А. Демидова М.Ю.        	Готовимся к Всероссийской проверочной работе. Русский язык. Математика. Окружающий мир. Методические рекомендации. 4 класс	4	125.400000000000006
374	Ковалева Г. С., Кузнецова М. И.	Готовимся к Всероссийской проверочной работе. Русский язык. Рабочая тетрадь. 4 класс	4	119.349999999999994
412	Ладыженская Т.А., Тростенцова Л.А. 	Русский язык. Дидактические материалы. 7 класс.	7	182.050000000000011
375	Ковалева Г. С., Краснянская К. А., Рыдзе О. А.	Готовимся к Всероссийской проверочной работе. Математика. Рабочая тетрадь. 4 класс	4	113.849999999999994
376	Демидова М. Ю. / Под ред. Ковалевой Г. С.	Готовимся к Всероссийской проверочной работе. Окружающий мир. Рабочая тетрадь. 4 класс	4	161.699999999999989
377	Комиссарова Л. Ю.	Всероссийские проверочные работы. Русский язык. Рабочая тетрадь. 4 класс	4	141.900000000000006
378	Сопрунова Н. А., Шноль Д. Э., Сорочан Е. М. и др.	Всероссийские проверочные работы. Математика. Рабочая тетрадь. 4 класс. В 2-х ч. Ч.1	4	113.849999999999994
379	Сопрунова Н. А., Шноль Д. Э., Сорочан Е. М. и др.	Всероссийские проверочные работы. Математика. Рабочая тетрадь. 4 класс. В 2-х ч. Ч.2	4	113.849999999999994
380	Мишняева Е. Ю., Рохлов В. С., Котова О. А. и др.	Всероссийские проверочные работы. Окружающий мир. Рабочая тетрадь. 4 класс. В 2-х ч. Ч.1	4	102.299999999999997
381	Мишняева Е. Ю., Рохлов В. С., Котова О. А. и др.	Всероссийские проверочные работы. Окружающий мир. Рабочая тетрадь. 4 класс. В 2-х ч. Ч.2	4	102.299999999999997
382	\N	\N	\N	\N
383	Ковалева Г. С., Демидова М. Ю., Иванова Л. Ф. и др.	Метапредметные результаты. Стандартизированные материалы для промежуточной аттестации. 7 класс. Варианты 1-4	7	215.050000000000011
384	Ковалева Г. С., Демидова М. Ю., Иванова Л. Ф. и др.	Метапредметные результаты. Стандартизированные материалы для промежуточной аттестации. 7 класс. Пособие для учителя	7	293.699999999999989
385	Ковалёва Г.С., Амбарцумова Э. М., Богданова Н. Н. и др.	Метапредметные результаты. Стандартизированные материалы для промежуточной аттестации. 8 класс. Варианты 1-4	8	202.400000000000006
386	Ковалева Г. С., Амбарцумова Э. М., Богданова Н. Н. и др.	Метапредметные результаты. Стандартизированные материалы для оценки читательской грамотности. 9 класс. Варианты 1-4	9	202.400000000000006
387	Ковалева Г. С., Барабанов В. В., Богданова Н. Н. и др.	Метапредметные результаты. Стандартизированные материалы для оценки читательской грамотности. 9 класс. Пособие для учителя	9	250.25
388	Логинова А. А., Данилюк А. Я.	Духовно-нравственное развитие и воспитание учащихся. Книга моих размышлений. 5 класс	5	145.860000000000014
389	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др. / Под ред. Ковалёвой Г.С., Логиновой О. Б.	Планируемые результаты. Система заданий. Математика. 5 - 6  классы. Алгебра. 7 - 9  классы	5 - 9	109.450000000000003
390	\N	\N	\N	\N
391	\N	\N	\N	\N
392	Лекант П. А.	Школьный орфоэпический словарь русского языка	5 - 11	264
393	Баранов М. Т.	Школьный орфографический словарь русского языка. 5-11 классы.	5 - 11	267.300000000000011
394	Богданова Г. А.	Сборник диктантов по русскому языку. 5-9 классы	5 - 9	150.370000000000005
395	Янченко В. Д., Латфуллина Л. Г., Михайлова С. Ю.	Скорая помощь по русскому языку. Рабочая тетрадь. 5 класс. В 2-х ч. Ч.1	5	90.75
396	Янченко В. Д., Латфуллина Л. Г., Михайлова С. Ю.	Cкорая помощь по русскому языку. Рабочая тетрадь. 5 класс. В 2-х ч. Ч.2	5	90.75
397	Ефремова Е. А.	Русский язык. Рабочая тетрадь. 5 класс	5	112.090000000000003
398	Соловьёва Н.Н.	Русский язык. Диктанты и изложения. 5 класс	5	153.22999999999999
399	Каськова И. А.	Русский язык. Тематические тесты. 5 класс	5	106.700000000000003
400	Егорова Н. В.	Русский язык. Проверочные работы. 5 класс	5	100.099999999999994
401	Соловьева Н. Н.	Русский язык. Диагностические работы. 5 класс	5	134.199999999999989
402	Курцева З. И.	Русский язык. Развиваем устную речь. 5 класс	5	95.7000000000000028
403	Янченко В. Д., Латфуллина Л. Г., Скугаревская А. А.	Скорая помощь по русскому языку. Рабочая тетрадь. 6 класс. В 2-х ч. Ч.1	6	90.75
404	Янченко В. Д., Латфуллина Л. Г., Скугаревская А. А.	Скорая помощь по русскому языку. Рабочая тетрадь.  6 класс. В 2-х ч. Ч.2	6	90.75
405	Ефремова Е. А.	Русский язык. Рабочая тетрадь. 6 класс	6	112.090000000000003
406	Каськова И. А.	Русский язык. Тематические тесты. 6 класс	6	106.700000000000003
407	Егорова Н. В.	Русский язык. Проверочные работы. 6 класс	6	100.099999999999994
408	Соловьёва Н.Н.	Русский язык. Диагностические работы. 6 класс	6	134.199999999999989
409	Янченко В. Д., Латфуллина Л. Г., Михайлова С. В.	Скорая помощь по русскому языку. Рабочая тетрадь. 7 класс. В 2-х ч. Ч. 1.	7	90.75
410	Янченко В. Д., Латфуллина Л. Г., Михайлова С. В.	Скорая помощь по русскому языку. Рабочая тетрадь. 7 класс. В 2-х ч. Ч. 2.	7	90.75
411	Ефремова Е. А.	Русский язык. Рабочая тетрадь. 7 класс	7	112.090000000000003
413	Каськова И. А.	Русский язык. Тематические тесты. 7 класс	7	106.700000000000003
414	Егорова Н. В.	Русский язык. Проверочные работы. 7 класс	7	100.099999999999994
415	Соловьёва Н.Н.	Русский язык. Диагностические работы.7 класс	7	134.199999999999989
416	Янченко В. Д., Латфуллина Л. Г.	Скорая помощь по русскому языку. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.1	8	90.75
417	Янченко В. Д., Латфуллина Л. Г.	Скорая помощь по русскому языку. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.2	8	90.75
418	Ефремова Е. А.	Русский язык.  Рабочая тетрадь. 8 класс	8	112.090000000000003
419	Клевцова Л. Ю., Шубукина Л. В.	Русский язык. Тематические тесты. 8 класс	8	108.349999999999994
420	Егорова Н. В.	Русский язык. Проверочные работы. 8 класс	8	101.200000000000003
421	Соловьёва Н.Н.	Русский язык. Диагностические работы. 8 класс	8	134.199999999999989
422	Янченко В. Д., Латфуллина Л. Г., Щеглова А.С.	Скорая помощь по русскому языку. Рабочая тетрадь. 9 класс. В 2-х ч. Ч.1	9	90.75
423	Янченко В. Д., Латфуллина Л. Г., Щеглова А.С.	Скорая помощь по русскому языку. Рабочая тетрадь. 9 класс. В 2-х ч. Ч.2	9	90.75
424	Ефремова Е. А.	Русский язык. Рабочая тетрадь. 9 класс	9	112.090000000000003
425	Егорова Н. В.	Русский язык. Проверочные работы. 9 класс	9	100.099999999999994
426	Рыбченкова Л. М., Роговик Т. Н.	Русский язык. Рабочая тетрадь. 5 класс. В 2-х ч. Ч.1	5	97.3499999999999943
427	Рыбченкова Л. М., Роговик Т. Н.	Русский язык. Рабочая тетрадь. 5 класс. В 2-х ч. Ч.2	5	97.3499999999999943
428	Нарушевич А. Г., Голубева И. В.	Русский язык. Готовимся к ГИА. Тесты, творческие работы, проекты. 5 класс	5	167.199999999999989
429	Нарушевич А.Г., Голубева И.В.	Русский язык. Самостоятельные и контрольные работы. 5 класс	5	108.900000000000006
430	Рыбченкова Л. М., Роговик Т. Н.	Русский язык. Рабочая тетрадь. 6 класс. В 2-х ч. Ч. 1	6	97.3499999999999943
431	Рыбченкова Л. М., Роговик Т. Н.	Русский язык. Рабочая тетрадь. 6 класс. В 2-х ч. Ч. 2	6	97.3499999999999943
432	Нарушевич А. Г., Голубева И. В.	Русский язык. Готовимся к ОГЭ. Тесты, творческие работы, проекты. 6 класс	6	167.199999999999989
433	Нарушевич А.Г., Голубева И.В., Ускова И.В.	Русский язык. Самостоятельные и контрольные работы. 6 класс	6	108.900000000000006
434	Рыбченкова Л. М., Роговик Т. Н.	Русский язык. Рабочая тетрадь. 7 класс. В 2-х ч. Ч.1	7	97.3499999999999943
435	Рыбченкова Л. М., Роговик Т. Н.	Русский язык. Рабочая тетрадь. 7 класс. В 2-х ч. Ч.2	7	97.3499999999999943
436	Нарушевич А. Г., Голубева И. В.	Русский язык. Готовимся к ГИА. Тесты, творческие работы, проекты. 7 класс	7	167.199999999999989
437	Рыбченкова Л. М., Александрова О. М.	Русский язык. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.1	8	97.3499999999999943
438	Рыбченкова Л. М., Александрова О. М.	Русский язык. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.2	8	97.3499999999999943
439	Нарушевич А. Г., Голубева И. В.	Русский язык. Готовимся к ГИА/ОГЭ. Тесты, творческие работы, проекты. 8 класс	8	167.199999999999989
440	Загоровская О. В., Чаплыгина Э. Н.	Русский язык. Рабочая тетрадь. 9 класс. В 2-х ч. Ч.1	9	97.3499999999999943
441	Загоровская О. В., Чаплыгина Э. Н.	Русский язык. Рабочая тетрадь. 9 класс. В 2-х ч. Ч.2	9	97.3499999999999943
442	Нарушевич А. Г., Голубева И. В.	Русский язык. Готовимся к ГИА/ОГЭ. Тесты, творческие работы, проекты. 9 класс	9	167.199999999999989
443	Бондаренко М.А.	Русский язык. Проекты и творческие задания. Рабочая тетрадь. 5 класс	5	156.310000000000002
444	Бондаренко М. А.	Русский язык. Проекты и творческие задания. Рабочая тетрадь. 6 класс	6	150.699999999999989
445	Бондаренко М. А.	Русский язык. Проекты и творческие задания. Рабочая тетрадь. 7 класс	7	150.699999999999989
446	Бондаренко М. А.	Русский язык. Проекты и творческие задания. Рабочая тетрадь. 8 класс	8	150.699999999999989
447	Бондаренко М. А.	Русский язык. Проекты и творческие задания. Рабочая тетрадь. 9 класс	9	150.699999999999989
448	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык. 5 класс.	5	293.699999999999989
449	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык. 6 класс.	6	293.699999999999989
450	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык. 7 класс	7	293.699999999999989
451	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык. 8 класс	8	293.699999999999989
452	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык. 9 класс	9	293.699999999999989
453	Ахременкова Л. А.	К пятерке шаг за шагом, или 50 занятий с репетитором. Русский язык.  Справочные материалы.	9	180.400000000000006
454	Богданова Г. А.	Тестовые задания по русскому языку. 5 класс.	5	162.25
455	Богданова Г. А.	Тестовые задания по русскому языку. 6 класс.	6	162.25
456	Богданова Г. А.	Тестовые задания по русскому языку. 7 класс.	7	162.25
457	Богданова Г. А.	Тестовые задания по русскому языку. 8 класс.	8	162.25
458	Богданова Г. А.	Тестовые задания по русскому языку. 9 класс. 	9	162.25
459	Горланова О.В.	Русский язык. Основной государственный экзамен. Готовимся к устной части	9	112.75
460	Фёдоров В. В., Гончарук С. Ю., Баканова М. А., Жигалов А. Ю., Стрейкмане Э. Р.	Русский язык. Сборник задач по формированию читательской грамотности. 5-8 классы	5 - 8	366.300000000000011
461	Гончарук С.Ю., Фёдоров В.В.	Сборник задач по формированию читательской грамотности 8-11 классы	8 - 11	363
462	\N	\N	\N	\N
463	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 5 класс. В 2-х ч. Ч.1.	5	122.099999999999994
464	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 5 класс. В 2-х ч. Ч.2.	5	122.099999999999994
465	Коровина В. Я., Журавлев В. П., Коровин В. И.	Читаем, думаем, спорим... Дидактические материалы . 5 класс.	5	244.199999999999989
466	Аристова М. А.	Литература. Диагностические работы. 5 класс	5	107.799999999999997
467	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 6 класс. В 2-х ч. Ч.1	6	122.099999999999994
468	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 6 класс. В 2-х ч. Ч.2	6	122.099999999999994
469	Полухина В. П.	Читаем, думаем, спорим... Дидактические материалы по литературе. 6 класс.	6	234.849999999999994
470	Аристова М. А.	Литература. Диагностические работы. 6 класс	6	107.799999999999997
471	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 7 класс. В 2-х ч. Ч.1	7	122.099999999999994
472	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 7 класс. В 2-х ч. Ч.2	7	122.099999999999994
473	Коровина В. Я.	Читаем, думаем, спорим... Дидактические материалы по литературе. 7 класс.	7	244.199999999999989
474	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.1	8	122.099999999999994
475	Ахмадуллина Р. Г.	Литература. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.2	8	122.099999999999994
476	Коровина В. Я., Журавлев В. П., Коровин В. И.	Читаем, думаем, спорим... Дидактические материалы по литературе. 8 класс.	8	244.199999999999989
477	Коровина В. Я.	Читаем, думаем, спорим... Дидактические материалы. 9 класс.	9	234.849999999999994
478	Чертов В. Ф. и др.	Литература. Работа с текстом. 5 класс	5	110
479	Чертов В. Ф. и др.	Литература. Работа с текстом. 6 класс	6	110
480	Шапиро Н. А.	Готовимся к сочинению. Тетрадь-практикум для развития письменной речи. 5 класс	5	107.25
481	Шапиро Н. А.	Готовимся к сочинению. Тетрадь-практикум для развития письменной речи. 6 класс.	6	107.25
482	Шапиро Н. А.	Готовимся к сочинению. Тетрадь-практикум для развития письменной речи. 7 класс	7	107.25
483	Шапиро Н. А.	Готовимся к сочинению. Тетрадь-практикум для развития письменной речи. 8 класс	8	106.700000000000003
484	Шапиро Н. А.	Готовимся к сочинению. Тетрадь-практикум для развития письменной речи. 9 класс	9	106.700000000000003
485	\N	\N	\N	\N
486	\N	\N	\N	\N
487	\N	\N	\N	\N
488	Баранова К. М., Дули Д. ., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 5 класс	5	296.449999999999989
489	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Контрольные задания. 5 класс	5	135.849999999999994
490	Комиссаров К. В., Кирдяева О. И.	Английский язык. Тренировочные упражнения в формате ГИА. 5 класс	5	122.650000000000006
491	Смирнов А. В.	Английский язык. Сборник грамматических упражнений. 5 класс	5	142.449999999999989
492	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 6 класс	6	296.449999999999989
493	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык.  Книга для учителя. 6 класс	6	500.5
494	Баранова К. М., Дули Д., Копылова В. В.	Английский язык. Контрольные задания. 6 класс	6	135.849999999999994
495	Комиссаров К. В., Кирдяева О. И.	Английский язык. Тренировочные упражнения в формате ГИА. 6 класс	6	122.650000000000006
496	Смирнов А. В.	Английский язык. Сборник грамматических упражнений. 6 класс	6	142.449999999999989
497	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 7 класс	7	296.449999999999989
498	Баранова К. М., Дули Д., Мильруд Р. П. и др.	Английский язык. Контрольные задания. 7 класс	7	143
499	Комиссаров К. В., Кирдяева О. И. и др.	Английский язык. Тренировочные упражнения в формате ГИА. 7 класс	7	122.099999999999994
752	Николина В. В.	География. Мой тренажер. 9 класс.	9	157.849999999999994
500	Автор-сост. Смирнов А. В.	Английский язык. Сборник грамматических упражнений. 7 класс	7	143.550000000000011
501	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 8 класс	8	296.449999999999989
502	Комиссаров К. В., Кирдяева О. И.	Английский язык. Тренировочные упражнения в формате ГИА. 8 класс	8	122.099999999999994
503	Баранова К. М., Дули Д., Мильруд Р. П. и др.	Английский язык. Контрольные задания.  8 класс	8	135.849999999999994
504	Иняшкин С.Г., Комиссаров К.В. 	Английский язык. Сборник грамматических упражнений. 8 класс	8	143.550000000000011
505	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Книга для учителя. 8 класс	8	468.050000000000011
506	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 9 класс	9	296.449999999999989
507	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Контрольные задания. 9 класс	9	161.150000000000006
508	Комиссаров К. В., Кирдяева О. И.	Английский язык. Тренировочные упражнения в формате ГИА. 9 класс	9	122.650000000000006
509	Автор-сост. Иняшкин С. Г., Комиссаров К. В.	Английский язык. Сборник грамматических упражнений. 9 класс	9	143.550000000000011
510	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Рабочая тетрадь. 5 класс.	5	279.949999999999989
511	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Языковой портфель. 5 класс. 	5	92.4000000000000057
512	Сост. Ваулина Ю. Е. и др.	Джек и бобовое зернышко. Книга для чтения. 5 класс	5	150.150000000000006
513	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Контрольные задания. 5 класс.	5	187
514	Ваулина Ю. Е., Подоляко О. Е.	Английский язык. Тренировочные упражнения в формате ГИА. 5 класс	5	127.049999999999997
515	Тимофеева С.Л.	Английский язык. Грамматический тренажер. 5 класс	5	138.599999999999994
516	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Языковой портфель. 6 класс.	6	92.4000000000000057
517	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Рабочая тетрадь. 6 класс.	6	279.949999999999989
518	Сост. Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Алиса в стране чудес. (По Л. Кэрроллу). Книга для чтения. 6 класс	6	151.800000000000011
519	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Контрольные задания. 6 класс	6	187
520	Ваулина Ю. Е., Подоляко О. Е.	Английский язык. Тренировочные упражнения в формате ГИА. 6 класс	6	127.049999999999997
521	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Рабочая тетрадь. 7 класс	7	279.949999999999989
522	Сост. Ваулина Ю. Е. и др.	Питер Пэн (По Д. Барри). Книга для чтения. 7 класс.	7	151.800000000000011
523	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Контрольные задания. 7 класс	7	187
524	Ваулина Ю. Е., Подоляко О. Е.	Английский язык. Тренировочные упражнения в формате ГИА. 7 класс	7	127.049999999999997
525	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Рабочая тетрадь. 8 класс	8	279.949999999999989
526	Сост. Ваулина Ю. Е. и др.	Кентервильское привидение. (По О. Уайльду). Книга для чтения. 8 класс.	8	151.800000000000011
527	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Контрольные задания. 8 класс.	8	187
528	Ваулина Ю. Е., Подоляко О. Е.	Английский язык. Тренировочные упражнения в формате ГИА. 8 класс	8	127.049999999999997
529	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Рабочая тетрадь. 9 класс.	9	279.949999999999989
530	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Языковой портфель. 9 класс	9	91.2999999999999972
531	Сост. Ваулина Ю. Е. и др.	Английский язык. Пигмалион (По Б. Шоу). Книга для чтения. 9 класс	9	151.800000000000011
532	Ваулина Ю. Е., Дули Д., Подоляко О. Е. и др.	Английский язык. Контрольные задания. 9 класс	9	187
533	Ваулина Ю. Е., Подоляко О. Е.	Английский язык. Тренировочные упражнения в формате ГИА. 9 класс	9	127.049999999999997
534	Смирнов Ю. А.	Английский язык. Сборник устных тем для подготовки к ГИА. 5-9 классы	5 - 9	147.949999999999989
535	Верещагина И. Н., Афанасьева О. В.	Английский язык. Рабочая тетрадь. 5 класс	5	189.75
536	Автор-сост. Верещагина И. Н., Афанасьева О. В.	Английский язык. Книга для чтения. 5 класс	5	180.400000000000006
537	Терентьева Н. М.	Английский язык. Контрольные задания. 5 класс.	5	182.599999999999994
538	Афанасьева О. В., Михеева И. В.	Английский язык. Рабочая тетрадь. 6 класс.	6	189.75
539	Автор-сост. Афанасьева О. В., Баранова К. М., Михеева И. В.	Английский язык. Книга для чтения. 6 класс.	6	154.550000000000011
753	\N	География. Контурные карты. 9 класс.	9	50.0499999999999972
540	Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Контрольные и проверочные задания. 6 класс.	6	122.099999999999994
541	Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Тренировочные упражнения для подготовки к ОГЭ. 6 класс	6	145.75
542	Афанасьева О. В., Михеева И. В., Баранова К. М.	Английский язык. Лексико-грамматический практикум. 6 кл.	6	141.900000000000006
543	Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Рабочая тетрадь. 7 класс.	7	188.099999999999994
544	Автор-сост. Афанасьева О. В., Михеева И. В., Баранова К. М.	Английский язык. Книга для чтения. 7 класс	7	154.550000000000011
545	Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Контрольные и проверочные задания. 7 класс.	7	122.099999999999994
546	Афанасьева О. В. и др.	Английский язык. Тренировочные упражнения для подготовки к ОГЭ. 7 класс	7	138.599999999999994
547	Афанасьева О. В., Михеева И. В., Баранова К. М.	Английский язык. Лексико-грамматический практикум. 7 класс	7	141.900000000000006
548	Афанасьева О. В., Михеева И. В.	Английский язык. Рабочая тетрадь. 8 класс.	8	168.849999999999994
549	Афанасьева О. В., Михеева И. В., Ваулина Ю. Е.	Английский язык. Контрольные задания. 8 класс	8	123.200000000000003
550	Автор-сост. Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Книга для чтения. 8 класс	8	154.550000000000011
551	Афанасьева О. В. и др.	Английский язык. Лексико-грамматический практикум. 8 класс	8	150.150000000000006
552	Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Рабочая тетрадь. 9 класс.	9	168.849999999999994
553	Автор-сост. Афанасьева О. В., Михеева И. В.	Английский язык. Книга для чтения. 9 класс. 	9	149.050000000000011
554	Афанасьева О. В., Михеева И. В.	Английский язык. Контрольные задания. 9 класс	9	122.099999999999994
555	Кузовлев В. П., Лапа Н. М., Костина И. П. и др.	Английский язык. Рабочая тетрадь. 5 класс.	5	184.25
556	Кузовлев В. П., Симкин В. Н., Лапа Н. М. и др.	Английский язык. Контрольные задания. 5 класс	5	79.75
557	Кузовлев В. П., Лапа Н. М., Костина И. П. и др.	Английский язык. Книга для чтения. 5 класс	5	166.650000000000006
558	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык. Рабочая тетрадь. 6 класс	6	184.25
559	Кузовлев В. П., Симкин В. Н., Перегудова Э. Ш. и др.	Английский язык. Контрольные задания. 6 класс	6	79.75
560	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык. Книга для чтения. 6 класс	6	166.650000000000006
561	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык. Рабочая тетрадь. 7 класс	7	184.25
562	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык. Книга для чтения. 7 класс	7	166.650000000000006
563	Кузовлев В. П., Симкин В. Н., Лапа Н. М. и др.	Английский язык. Контрольные задания. 7 класс	7	139.699999999999989
564	Кузовлев В. П., Перегудова Э. Ш., Лапа Н. М. и др.	Английский язык. Рабочая тетрадь. 8 класс.	8	183.699999999999989
565	Кузовлев В. П., Лапа Н. М., Перегудова Э. Ш. и др.	Английский язык. Книга для чтения. 8 класс	8	166.650000000000006
566	Кузовлев В. П., Симкин В. Н., Лапа Н. М. и др.	Английский язык. Подготовка к итоговой аттестации. Контрольные задания. 8 класс.	8	139.699999999999989
567	Кузовлев В. П., Перегудова Э. Ш., Лапа Н. М. и др.	Английский язык. Рабочая тетрадь. 9 класс.	9	183.150000000000006
568	Кузовлев В. П., Перегудова Э. Ш., Лапа Н. М. и др.	Английский язык. Книга для чтения. 9 класс	9	205.699999999999989
569	Кузовлев В. П., Симкин В. Н., Лапа Н. М. и др.	Английский язык. Подготовка к итоговой аттестации. Контрольные задания. 9 класс	9	139.699999999999989
570	Суханова О. Н., Исупова Н. А.	Английский язык. Основной государственный экзамен. Готовимся к устной части	5 - 9	187.550000000000011
571	Мишин А. В.	Английский язык. Основной государственный экзамен. Устная часть	9	151.25
572	Аханова Г. П., Аханова Е. С., Долгова Е. В. и др.	Английский язык. Военное страноведение. США: географические и военно-исторические аспекты	10	452.649999999999977
573	Крисковец Т. Н. и др.	Английский язык. Первые шаги в военной карьере. 5 класс	5	446.050000000000011
574	Крисковец Т. Н. и др.	Английский язык. Первые шаги в военной карьере. 6 класс	6	476.300000000000011
575	Крисковец Т. Н., Цветкова-Омеличева Е. В., Андреева М. Б. и др.	Английский язык. Первые шаги в военной карьере. 7 класс	7	476.300000000000011
576	Мильруд Р.П.	Английская грамматика? Легко! 5-7 классы	5-7	99
577	\N	\N	\N	\N
578	Бим И. Л., Рыжова Л. И.	Немецкий язык. Рабочая тетрадь. 5 класс	5	184.25
579	Семенцова Е. А., Резниченко Н. А.	Немецкий язык. Контрольные задания для подготовки к ОГЭ. 5 класс	5	137.5
580	Автор-сост. Бим И. Л., Рыжова Л. И., Игнатова Е. В.	Немецкий язык. Книга для чтения. 5-6 классы.	5 - 6	212.849999999999994
581	Бим И. Л., Фомичева Л. М.	Немецкий язык. Рабочая тетрадь. 6 класс	6	185.900000000000006
582	Семенцова Е. А., Резниченко Н. А.	Немецкий язык. Контрольные задания для подготовки к ОГЭ. 6 класс	6	137.5
583	Бим И. Л., Садомова Л. В., Фомичева Л. М. и др.	Немецкий язык. Рабочая тетрадь. 7 класс	7	185.900000000000006
584	Семенцова Е. А., Резниченко Н. А.	Немецкий язык. Контрольные задания для подготовки к ОГЭ. 7 класс	7	137.5
585	Бим И. Л., Садомова Л. В., Крылова Ж. Я.	Немецкий язык. Рабочая тетрадь. 8 класс	8	185.900000000000006
586	Семенцова Е. А.	Немецкий язык. Контрольные задания для подготовки к ОГЭ. 8 класс	8	137.5
587	Бим И. Л., Садомова Л. В.	Немецкий язык. Рабочая тетрадь. 9 класс	9	185.900000000000006
588	Семенцова Е. А.	Немецкий язык. Контрольные задания для подготовки к ОГЭ. 9 класс	9	137.5
589	Бим И. Л., Каплина О. В.	Немецкий язык. Сборник упражнений. 5-9 классы	5 - 9	221.099999999999994
590	Яковлева Л. Н.	Немецкий язык. Рабочая тетрадь. 5 класс.  Для школ с углубленным изучением немецкого языка	5	187.550000000000011
591	Радченко О. А., Лясковская Е. В.	Немецкий язык. Рабочая тетрадь. 6 класс.  Для школ с углубленным изучением немецкого языка	6	249.150000000000006
592	Лытаева М. А.	Немецкий язык. Контрольные задания для подготовки к ОГЭ. 6 класс	6	198.550000000000011
593	Радченко О. А., Глушак В. М.	Немецкий язык. Рабочая тетрадь. 7 класс.  Для школ с углубленным изучением немецкого языка	7	249.150000000000006
594	Лытаева М. А.,Люкина Е. В.	Немецкий язык. Контрольные задания. 7 класс.	7	154.550000000000011
595	Радченко О. А. и др.	Немецкий язык. Рабочая тетрадь. 8 класс. Для школ с углубленным изучением немецкого языка	8	249.150000000000006
596	Радченко О. А. и др.	Немецкий язык. Рабочая тетрадь. 9 класс. Для школ с углубленным изучением немецкого языка	9	249.150000000000006
597	Макарова Н. И., Ветринская В. В.	Немецкий язык. Основной государственный экзамен. Письменная часть	9	144.099999999999994
598	Ветринская В. В.	Немецкий язык. Основной государственный экзамен. Устная часть	9	118.799999999999997
599	Бакирова И. Б., Лытаева М. А.	Немецкий язык. Грамматический тренажер. 5-6 классы	5 - 6	161.699999999999989
600	Радченко О. А., Костева В. М.	Немецкий язык. Практическая грамматика. Уровень А1	5 - 9	265.649999999999977
601	\N	\N	\N	\N
602	Кулигина А. С.	Французский язык. Рабочая тетрадь. 5 класс. 	5	287.649999999999977
603	Кулигина А. С., Иохим О. В.	Французский язык. Рабочая тетрадь. 6  класс	6	300.850000000000023
604	Кулигина А. С., Кирьянова М. Г.	Французский язык. Рабочая тетрадь. 7 класс.	7	300.850000000000023
605	Григорьева Е. Я., Горбачева Е. Ю.	Французский язык. Рабочая тетрадь.  8 класс	8	384.449999999999989
606	Григорьева Е. Я., Горбачева Е. Ю.	Французский язык. Рабочая тетрадь. 9 класс. 	9	318.449999999999989
607	Кулигина А. С.	Французский язык. Рабочая тетрадь. 5 класс. 	5	260.699999999999989
608	Кулигина А. С., Щепилова А. В.	Французский язык. Рабочая тетрадь.6 класс	6	260.699999999999989
609	Кулигина А. С., Щепилова А. В.	Французский язык. Рабочая тетрадь. 7 класс. 	7	260.699999999999989
610	Кулигина А. С., Щепилова А. В.	Французский язык. Рабочая тетрадь. 8 класс.	8	260.699999999999989
611	Кулигина А. С., Щепилова А. В.	Французский язык. Рабочая тетрадь. 9 класс.	9	320.649999999999977
612	Фоменко Т. М., Горбачева Е. Ю., Седова Т. В.	Французский язык. Основной государственный экзамен. Сборник тренировочных заданий	9	291.5
613	Бубнова Г. И.	Французский язык. Основной государственный экзамен. Устная часть	9	231
614	Бубнова Г. И., Денисова О. Д., Ратникова Е. И. и др.	Французский язык. Сборник контрольных заданий. 5-6 классы	5 - 6	165
615	Бубнова Г. И., Денисова О. Д., Ратникова Е. И. и др.	Французский язык. Сборник контрольных заданий. 7-8 классы.	7 - 8	165
616	\N	\N	\N	\N
617	Липова Е. Е.	Испанский язык. Рабочая тетрадь. 5класс	5	287.649999999999977
618	Анурова И. В., Шунтова О. В.	Испанский язык. Рабочая тетрадь к учебнику. 6 класс. 	6	313.389999999999986
619	Кондрашова Н.А.	Испанский язык. Рабочая тетрадь. 7 класс.  	7	349.800000000000011
620	Кондрашова Н. А., Костылева С. В.	Испанский язык. Рабочая тетрадь. 8 класс. 	8	287.649999999999977
621	Кондрашова Н. А., Костылева С. В.	Испанский язык. Рабочая тетрадь. 9 класс	9	287.649999999999977
622	\N	\N	\N	\N
623	\N	\N	\N	\N
624	Дули Д. и др.	Английский язык. Рабочая тетрадь и грамматические упражнения. 5 класс	5	242.550000000000011
625	Цыбанева В. А., Дули Д., Эванс В.	Английский язык. Второй иностранный язык. Рабочая тетрадь с грамматическим тренажером. 6 класс 	6	297
626	\N	\N	\N	\N
627	Аверин М. М., Гучалюк Е. Ю., Харченко Е. Р., Лытаева М. А.	Немецкий язык. Сборник примерных рабочих программ. Предметные линии учебников "Горизонты". 5–11 классы	5 - 11	175.449999999999989
628	Аверин М.М., Джин Ф. ., Рорман Л. . и др.	Немецкий язык. Рабочая тетрадь. 5 класс. 	5	300.300000000000011
629	Лытаева М. А., Ионова А. М.	Немецкий язык. Второй иностранный язык. Лексика и грамматика. Сборник упражнений. 5 класс.	5	118.799999999999997
630	Аверин М.М., Гуцалюк Е. Ю., Харченко Е. Р.	Немецкий язык. Контрольные задания. 5-6 классы	5 - 6	154.550000000000011
631	Аверин М.М., Джин Ф., Рорман Л. .	Немецкий язык. Рабочая тетрадь. 6 класс. 	6	300.300000000000011
632	Лытаева М. А., Ионова А. М.	Немецкий язык. Второй иностранный язык. Лексика и грамматика. Сборник упражнений. 6 класс.	6	118.799999999999997
633	Аверин М.М., Джин Ф., Рорман Л. .	Немецкий язык. Второй иностранный язык. Рабочая тетрадь. 7 класс.	7	300.300000000000011
634	Лытаева М. А., Базина Н. В.	Немецкий язык. Второй иностранный язык. Лексика и грамматика. Сборник упражнений. 7 класс.	7	118.799999999999997
635	Аверин М.М., Гуцалюк Е. Ю., Харченко Е. Р.	Немецкий язык. Контрольные задания. 7-8 класс	7 - 8	154.550000000000011
636	Аверин М.М., Джин Ф. ., Рорман Л. . и др.	Немецкий язык. Второй иностранный язык. Рабочая тетрадь. 8 класс.	8	300.300000000000011
637	Лытаева М. А., Базина Н. В.	Немецкий язык. Второй иностранный язык. Лексика и грамматика. Сборник упражнений. 8 класс.	8	118.799999999999997
638	Аверин М.М., Джин Ф. ., Рорман Л. . и др.	Немецкий язык. Второй иностранный язык. Рабочая тетрадь. 9 класс.	9	317.350000000000023
639	Лытаева М. А., Ульянова Е. С.	Немецкий язык. Второй иностранный язык. Контрольные задания для подготовки к ОГЭ. 9 класс	9	139.699999999999989
640	Лытаева М. А., Ульянова Е. С.	Немецкий язык. Второй иностранный язык.Тренировочные задания для подготовки к ОГЭ. 9 класс	9	139.699999999999989
641	\N	\N	\N	\N
642	Селиванова Н. А., Григорьева Е. Я.    	Французский язык. Второй иностранный язык. Сборник примерных рабочих программ. Предметные линии учебников «Синяя птица. 5-11 классы»       	5 - 11	273.899999999999977
643	Береговская Э. М.	Французский язык. Второй иностранный язык. Рабочая тетрадь. 5 класс.  	5	237.050000000000011
644	Береговская Э. М.	Французский язык. Второй иностранный язык. Книга для чтения. 5 класс.	5	260.699999999999989
645	Свиридова И.И., Шутова Ю.А.	Французский язык. Второй иностранный язык. Контрольные и проверочные задания. 5-6 классы	5 - 6	138.599999999999994
646	Селиванова Н. А., Шашурина А. Ю.	Французский язык. Второй иностранный язык. Сборник упражнений. Чтение и письмо. 6 класс. 	6	237.050000000000011
647	Селиванова Н. А.	Читаем, пишем и говорим по-французски. Пособие для учащихся.	7 - 9	311.850000000000023
648	Головина Т.Е.	Французский язык. Второй иностранный язык. Контрольные и проверочные задания. 7-8 классы	7 - 8	156.199999999999989
649	Селиванова Н. А., Шашурина А. Ю.	Французский язык. Второй иностранный язык. Сборник упражнений. 7 класс	7 - 8	207.900000000000006
650	Селиванова Н. А., Шашурина А. Ю.	Французский язык. Второй иностранный язык. Сборник упражнений. 8 класс	8	207.900000000000006
651	Селиванова Н. А., Шашурина А. Ю.	Французский язык.  Второй иностранный язык. Сборник упражнений. 9 класс	9	237.050000000000011
652	Селиванова Н. А., Шашурина А. Ю.	Французский язык. Второй иностранный язык. Сборник упражнений. 7 класс (первый год обучения). 	7	309.649999999999977
653	Селиванова Н. А., Шашурина А. Ю.	Французский язык. Второй иностранный язык. Сборник упражнений. 8-9 классы (второй и третий годы обучения). 	8 - 9	321.75
654	\N	\N	\N	\N
655	Костылева С. В.	Испанский язык. Сборник примерных рабочих программ. Предметные линии учебников "Завтра". 5-11 классы.	5 - 11	155.099999999999994
656	Костылева С. В., Сараф О. В. и др.	Испанский язык. Второй иностранный язык. Сборник упражнений.  5-6 классы	 5 - 6	265.649999999999977
657	Костылева С. В., Лопес Барбера И. ., Бартоломе Алонсо М. П. и др.	Испанский язык. Второй иностранный язык. Сборник упражнений. 7-8 классы	 7 - 8	265.649999999999977
658	Костылева С. В., Лопес Барбера И. ., Бартоломе Алонсо М. П. и др.	Испанский язык. Второй иностранный язык. Сборник упражнений. 9 класс	9	298.100000000000023
659	\N	\N	\N	\N
660	Сизова А. А.	Китайский язык. Второй иностранный язык. Прописи. 5 класс	5	156.199999999999989
661	Сизова А. А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. Рабочая тетрадь. 5 класс	5	250.25
662	Налетова Е. А.	Китайский язык. Второй иностранный язык.  Контрольные задания. 5-6 классы	5 - 6	168.300000000000011
663	Сизова А. А. 	Китайский язык. Второй иностранный язык. Прописи. 6 класс	6	162.800000000000011
664	Сизова А. А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. Рабочая тетрадь. 6 класс	6	287.649999999999977
665	Сизова А. А.	Китайский язык. Второй иностранный язык. Прописи. 7 класс	7	162.800000000000011
666	Сизова А. А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. Рабочая тетрадь. 7 класс	7	287.649999999999977
667	Налетова Е. А.	Китайский язык. Второй иностранный язык.  Контрольные задания. 7-8 классы	 7 - 8	179.849999999999994
668	Сизова А. А. и др.	Китайский язык. Второй иностранный язык. Прописи. 8 класс	8	175.449999999999989
669	Сизова А. А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. Рабочая тетрадь. 8 класс	8	287.649999999999977
670	Сизова А.А.	Китайский язык. Второй иностранный язык. Прописи. 9 класс	9	173.25
671	Сизова А. А., Чэнь Фу, Чжу Чжипин и др.	Китайский язык. Второй иностранный язык. Рабочая тетрадь. 9 класс	9	281.600000000000023
672	\N	\N	\N	\N
673	\N	\N	\N	\N
674	Данилов А. А., Журавлева О. Н., Барыкина И. Е.	История России. Рабочая программа и тематическое планирование. 6 - 10  классы	6 - 10	103.950000000000003
675	Артасов И. А., Данилов А. А., Косулина Л. Г. и др.	История России. Рабочая тетрадь. 6 класс.	6	130.349999999999994
676	Артасов И. А.	История России. Контрольные работы. 6 класс	6	113.299999999999997
677	Чернова М. Н., Макарова М.И.	История России. Тетрадь проектов и творческих работ. 6 класс	6	137.5
678	Автор-сост. Тороп В. В.	История России. Контурные карты. 6 класс	6	45.1000000000000014
679	Автор-сост. Мерзликин А. Ю., Старкова И. Г. / Под ред. Данилова А. А.	История  России. Иллюстрированный атлас. 6 класс.	6	109.450000000000003
680	Данилов А. А., Демидов Г. В.	История России. Сборник рассказов. 6 класс	6	113.849999999999994
681	Данилов А. А., Косулина Л. Г., Лукутин А. В. и др.	История России. Рабочая тетрадь. 7 класс	7	130.349999999999994
682	Артасов И. А.	История. России. Контрольные работы. 7 класс	7	113.849999999999994
683	Тороп В. В.	История России. Контурные карты. 7 класс	7	45.1000000000000014
684	Автор-сост. Курукин И. В. / Под ред. Данилова А. А.	История России. Атлас. 7 класс	7	108.349999999999994
685	Данилов А. А. и др.	История России. Сборник рассказов. 7 класс	7	113.849999999999994
686	М. Н. Чернова, М. И. Макарова	История России. Тетрадь проектов и творческих работ. 7 класс	7	136.400000000000006
687	Артасов И. А., Данилов А. А., Косулина Л. Г. и др.	История России. Рабочая тетрадь. 8 класс.	8	130.349999999999994
688	Артасов И. А.	История России. Контрольные работы. 8 класс	8	113.849999999999994
689	Чернова М. Н., Макарова М.И.	История России. Тетрадь для проектов и творческих работ. 8 класс	8	137.5
690	Курукин И. В.	История России. Атлас. 8 класс	8	108.349999999999994
691	Тороп В. В.	История России. Контурные карты. 8 класс	8	45.1000000000000014
692	Данилов А. А. и др.	История России. Сборник рассказов. 8 класс	8	113.849999999999994
693	Данилов А. А., Косулина Л. Г., Лукутин А. В. и др.	История России. Рабочая тетрадь 9 класс. В 2-х ч. Ч. 1	9	99.5499999999999972
694	Данилов А. А., Косулина Л. Г., Лукутин А. В. и др.	История России. Рабочая тетрадь. 9 класс. В 2-х ч. Ч. 2	9	99.5499999999999972
695	Артасов И. А.	История России. Контрольные работы. 9 класс	9	113.849999999999994
696	Данилов А. А. и др.	История России. Сборник рассказов. 9 класс	9	132.330000000000013
697	Автор-сост. Тороп В. В.	История России. Атлас. 9 класс	9	108.349999999999994
698	Автор-сост. Тороп В. В.	История России. Контурные карты. 9 класс	9	45.1000000000000014
699	\N	\N	\N	\N
700	Годер Г. И.	Всеобщая история. История Древнего мира. Рабочая тетрадь. 5 класс. В 2-х ч. Ч. 1	5	92.2900000000000063
701	Годер Г. И.	Всеобщая история. История Древнего мира. Рабочая тетрадь. 5 класс. В 2-х ч. Ч. 2	5	92.2900000000000063
702	Вигасин А. А., Соколова Л. А., Артемов В. В.	Всеобщая история. История Древнего мира. Тетрадь для проектов и творческих работ. 5 класс.	5	125.950000000000003
703	Автор-сост. Ляпустин Б. С.	История. Древний мир. Атлас. 5 класс	5	137.5
704	Автор-сост. Друбачевская И. Л., Уколова И. Е.	История. Древний мир. Контурные карты. 5 класс	5	56.6499999999999986
705	Крючкова Е. А.	Всеобщая история. История Древнего мира. Проверочные и контрольные работы. 5 класс	5	117.700000000000003
706	Шевченко Н. И.	Всеобщая история. История Древнего мира. Рабочая программа. Поурочные рекомендации. 5 класс	5	219.449999999999989
707	Крючкова Е. А.	Всеобщая история. История Средних веков. Рабочая тетрадь. 6 класс.	6	121
708	Артемов В. В., Соколова Л. А.	Всеобщая история. История Средних веков. Тетрадь для проектов и творческих работ. 6 класс.	6	122.099999999999994
709	Ведюшкин В.А., Гусарова Т.П.	История Средних веков. Атлас. 6 класс	6	137.5
710	Ведюшкин В.А., Гусарова Т.П.	История Средних веков. Контурные карты. 6 класс	6	56.6499999999999986
711	Крючкова Е. А.	Всеобщая история. История Средних веков. Проверочные и контрольные работы. 6 класс	6	117.700000000000003
712	Игнатов А. В.	Всеобщая история. История Средних веков. Рабочая программа. Поурочные рекомендации. 6 класс	6	219.449999999999989
713	Юдовская А. Я., Баранов П. А., Ванюшкина Л. М.	Всеобщая история. История Нового времени. Рабочая тетрадь. 7 класс	7	121
714	Ведюшкин В. А., Лазарева А. В.	История Нового времени. Атлас. 7 класс	7	137.5
715	Тороп В. В.	История Нового времени. Контурные карты. 7 класс	7	56.6499999999999986
716	Коваль Т. В., Юдовская А. Я., Ванюшкина Л. М.	Всеобщая история. история Нового времени. Поурочные рекомендации. Рабочая программа. 7 класс	7	219.449999999999989
717	Юдовская А.Я., Баранов П.А., Ванюшкина Л.М.	Всеобщая история. История Нового времени. Рабочая тетрадь. 8 класс	8	121
718	Коваль Т. В., Юдовская А. Я., Ванюшкина Л. М.	Всеобщая история. история Нового времени. Поурочные рекомендации. Рабочая программа. 8 класс	8	219.449999999999989
719	Баранов П. А.        	Всеобщая история. История Нового времени. Рабочая тетрадь. 9 класс      	9	121
720	Несмелова М. Л.	Всеобщая история. История Нового времени. Поурочные рекомендации. Рабочая программа. 9 класс	9	219.449999999999989
721	Уколова И. Е.	История. Древний мир. Тетрадь-тренажёр. 5 класс.	5	177.099999999999994
722	Уколова И. Е.	История. Древний мир. Тетрадь-экзаменатор. 5 класс.	5	141.349999999999994
723	Ведюшкин В. А., Ведюшкина И. В.	История. Средние века. Тетрадь-тренажёр. 6 класс.	6	177.099999999999994
724	Уколова И. Е.	История. Средние века. Тетрадь-экзаменатор. 6 класс.	6	141.349999999999994
725	\N	\N	\N	\N
726	Иванова Л. Ф., Хотеенкова Я. В.  	Обществознание. Рабочая тетрадь. 6 класс 	6	111.650000000000006
727	Иванова Л. Ф., Городецкая Н. И., Лискова Т. Е., Рутковская Е. Л.	Обществознание. Поурочные разработки. Рабочая программа. 6 класс	6	219.449999999999989
728	Котова О. А., Лискова Т. Е.	Обществознание. Рабочая тетрадь. 7 класс.	7	108.349999999999994
729	Боголюбов Л. Н., Иванова Л. Ф., Городецкая Н. И. и др.	Обществознание. Поурочные разработки. Рабочая программа. 7 класс	7	219.449999999999989
730	Котова О. А., Лискова Т. Е.	Обществознание. Рабочая тетрадь. 8 класс.	8	111.650000000000006
731	Боголюбов Л. Н. и др.	Обществознание. Поурочные разработки. Рабочая программа. 8 класс	8	219.449999999999989
732	Котова О. А., Лискова Т. Е.	Обществознание. Рабочая тетрадь. 9 класс 	9	110
733	Боголюбов Л. Н. и др.	Обществознание. Поурочные разработки. Рабочая программа. 9 класс	9	209
734	Котова О. А., Лискова Т. Е.	Обществознание. Тетрадь-тренажёр. 6 кл.	6	173.25
735	\N	\N	\N	\N
736	Николина В. В.	География. Мой тренажёр. 5-6 классы	 5 - 6	158.949999999999989
737	\N	География. Атлас. 5-6 классы	 5 - 6	112.75
738	\N	География. Контурные карты. 5 класс.	5	50.0499999999999972
739	\N	География. Контурные карты. 6 класс.	6	50.0499999999999972
740	Дубинина С. В.	География. Практические работы. 5-6 класс	 5 - 6	96.7999999999999972
741	Шидловский И.М., Бондарева М.	География. Проверочные и контрольные работы по географии. 5-6 классы	 5 - 6	96.7999999999999972
742	Николина В. В.	География. Поурочные разработки. 5-6 классы	 5 - 6	168.300000000000011
743	Николина В. В.	География. Мой тренажер. 7 класс.	7	158.949999999999989
744	\N	География. Атлас. 7 класс	7	112.75
745	\N	География. Контурные карты. 7 класс.	7	50.0499999999999972
746	\N	География. Проверочные работы. 7 класс	7	96.7999999999999972
747	Николина В. В.	География. Поурочные разработки. 7 класс	7	168.300000000000011
748	Николина В. В.	География. Мой тренажер. 8 класс..	8	157.849999999999994
749	Николина В. В.	География. Поурочные разработки. 8 класс	8	168.300000000000011
750	\N	География. Контурные карты. 8 класс.	8	50.0499999999999972
751	\N	География. Атлас. 8-9 классы	8 - 9	112.75
754	Николина В. В.	География. Поурочные разработки. 9 класс.	9	168.300000000000011
755	Алексеев А. И., Бахир М. А., Ильинский С. В. и др.	Сборник примерных рабочих программ. География. 5-11 кл.	5 - 11	219.449999999999989
756	Колечкин И. С.	Сборник задач и упражнений по географии. 8-11 классы. Часть 1	8 - 11	233.199999999999989
757	Колечкин И. С.	Сборник задач и упражнений по географии. 8-11 классы. Часть 2	8 - 11	233.199999999999989
758	Колечкин И.С., Сафаров А.И.	Сборник задач и упражнений по географии. 8-11 классы. Часть 3	8 - 11	369.600000000000023
759	Колечкин И.С., Сафаров А.И.	Сборник задач и упражнений по географии. 8-11 классы. Часть 4	8 - 11	369.600000000000023
760	\N	\N	\N	\N
761	Под редакцией В.П. Дронова	География. Контурные карты. 5 класс	5	46.75
762	Под редакцией В.П. Дронова	География. Контурные карты. 6 класс	6	46.75
763	Под редакцией В.П. Дронова	География. Контурные карты. 7 класс	7	46.75
764	Под редакцией В.П. Дронова	География. Контурные карты. 8 класс	8	46.75
765	Под редакцией В.П. Дронова	География. Контурные карты. 9 класс	9	46.75
766	Под редакцией В.П. Дронова	География. Контурные карты. 10-11 классы	10 - 11	46.75
767	Под редакцией В.П. Дронова	География. Атлас. 5 класс	5	94.5999999999999943
768	Под редакцией В.П. Дронова	География. Атлас. 6 класс	6	94.5999999999999943
769	Под редакцией В.П. Дронова	География. Атлас. 7 класс	7	94.5999999999999943
770	Под редакцией В.П. Дронова	География. Атлас. 8 класс	8	94.5999999999999943
771	Под редакцией В.П. Дронова	География. Атлас. 9 класс	9	94.5999999999999943
772	Под редакцией В.П. Дронова	География. Атлас. 10-11 классы	10 - 11	94.5999999999999943
773	Автор-сост. Савельева Л. Е., Котляр О. Г., Григорьева М. А.	География. Планета Земля. Атлас. 5-6 классы.	5 - 6	126.5
774	Автор-сост. Котляр О. Г.	География. Планета Земля. Контурные карты. 5-6 классы.	5 - 6	91.8499999999999943
775	Автор-сост. Савельева Л. Е., Котляр О. Г., Григорьева М. А.	География. Земля и люди. Атлас. 7 класс	7	179.300000000000011
776	Автор-сост. Котляр О. Г.	География. Земля и люди. Контурные карты. 7 класс.	7	92.4000000000000057
777	Автор-сост. Котляр О. Г.	География. Россия: природа, население, хозяйство. Контурные карты. 8 класс.	8	92.4000000000000057
778	Автор-сост. Дронов В. П., Савельева Л. Е., Котляр О. Г. и др.	География. Россия: природа, население, хозяйство. Атлас. 8-9 классы	8 - 9	179.300000000000011
779	Автор-сост. Котляр О. Г.	География. Россия: природа, население, хозяйство. Контурные карты. 9 кл.	9	92.4000000000000057
780	\N	\N	\N	\N
781	\N	\N	\N	\N
782	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. Сборник примерных рабочих программ. Предметные линии учебников "Сферы". Математика. 5-6 классы. Алгебра. 7-9 классы	5 - 9	175.449999999999989
783	Сафонова Н. В.	Математика. Арифметика. Геометрия. Тетрадь-экзаменатор. 5 класс	5	141.349999999999994
784	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. Арифметика. Геометрия. Тетрадь-тренажёр. 5 класс.	5	178.75
785	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. Арифметика. Геометрия. Задачник. 5 класс.	5	143.550000000000011
786	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Арифметика. Геометрия. Тетрадь-экзаменатор. 6 класс.	6	141.349999999999994
787	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. Арифметика. Геометрия. Тетрадь-тренажёр. 6 класс.	6	178.75
788	Бунимович Е. А., Кузнецова Л. В., Минаева С. С. и др.	Математика. Арифметика. Геометрия. Задачник. 6 класс.	6	143.550000000000011
789	Бунимович Е. А., Кузнецова Л. В., Рослова Л. О. и др.	Математика. Рабочая тетрадь. 5 класс. В 2-х ч. Ч. 1.	5	93.5
790	Бунимович Е. А., Кузнецова Л. В., Рослова Л. О. и др.	Математика. Рабочая тетрадь. 5 класс. В 2-х ч. Ч. 2.	5	93.5
791	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Контрольные работы. 5 класс.	5	110
792	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Тематические тесты. 5 класс.	5	128.150000000000006
793	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Дидактические материалы. 5 класс.	5	143
794	Минаева С. С. 	Математика. Устные упражнения. 5 класс	5	113.299999999999997
795	Бунимович Е. А., Кузнецова Л. В., Рослова Л. О. и др.	Математика. Рабочая тетрадь. 6 класс.	6	149.050000000000011
796	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Контрольные работы.  6 класс.	6	110
797	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Тематические тесты. 6 класс.	6	128.150000000000006
798	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Математика. Дидактические материалы. 6 класс.	6	143
799	Минаева С. С. 	Математика. Устные упражнения. 6 класс	6	113.299999999999997
800	Потапов К. В., Шевкин А. В.	Математика. Рабочая тетрадь. 5 класс. В 2-х ч. Ч. 1	5	96.7999999999999972
801	Потапов М. К., Шевкин А. В.	Математика. Рабочая тетрадь. 5 класс. В 2-х ч. Ч. 2	5	96.7999999999999972
802	Чулков П. В., Шершнев Е. Ф., Зарапина О. Ф.	Математика. Тематические тесты. 5 класс.	5	128.150000000000006
803	Потапов М. К., Шевкин А. В.	Математика. Дидактические материалы.  5 класс.	5	135.849999999999994
804	Шарыгин И. Ф., Шевкин А. В.	Задачи на смекалку. 5-6 классы.	5 - 6	138.599999999999994
805	Потапов М. К., Шевкин А. В.	Математика. Рабочая тетрадь. 6 класс.	6	141.349999999999994
806	Чулков П. В., Шершнев Е. Ф., Зарапина О. Ф.	Математика. Тематические тесты. 6 класс	6	128.150000000000006
807	Потапов М. К., Шевкин А. В.	Математика. Дидактические материалы.  6 класс	6	135.849999999999994
808	Ткачёва М.В.	Математика. Рабочая тетрадь. 5 класс.	5	138.599999999999994
809	Ткачёва М.В.	Математика. Рабочая тетрадь. 6 класс	6	138.599999999999994
810	Лахова Н. В.	Математика за 7 занятий. 5 класс.	5	198
811	Лахова Н. В.	Математика за 7 занятий. 6 класс.	6	198
812	Спивак А. В.	Тысяча и одна задача по математике. 5 — 7 классы.	5 - 7	264.550000000000011
813	Сергеева Т.Ф.	Функциональная грамотность. Тренажёр. Математика на каждый день. 6-8 классы.	6 - 8	259.600000000000023
814	Сост. Бурмистрова Т. А.	Математика. Сборник рабочих программ. 5-6 классы	5 - 6	126.5
815	\N	\N	\N	\N
816	Минаева С. С., Рослова Л. О.	Алгебра. Рабочая тетрадь. 7 класс.	7	150.699999999999989
817	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Алгебра. Тематические тесты. 7 класс.	7	137.5
818	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Алгебра. Контрольные работы.  7 класс.	7	125.400000000000006
819	Евстафьева Л. П., Карп А. П.	Алгебра. Дидактические материалы. 7 класс.	7	138.599999999999994
820	Минаева С. С.	Алгебра. Устные упражнения.  7 класс.	7	119.349999999999994
821	Минаева С. С., Рослова Л. О.	Алгебра. Рабочая тетрадь. 8 класс. В 2-х ч. Ч. 1.	8	92.4000000000000057
822	Минаева С. С., Рослова Л. О.	Алгебра. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.2	8	92.4000000000000057
823	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Алгебра. Тематические тесты. 8 класс.	8	137.5
824	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Алгебра. Контрольные работы. 8 класс.	8	125.400000000000006
825	Евстафьева Л. П., Карп А. П.	Алгебра. Дидактические материалы. 8 класс.	8	138.599999999999994
826	Минаева С. С.	Алгебра. Устные упражнения. 8 класс.	8	119.349999999999994
827	Минаева С. С., Рослова Л. О.	Алгебра. Рабочая тетрадь. 9 класс. В 2-х ч. Ч. 1	9	92.4000000000000057
828	Минаева С. С., Рослова Л. О.	Алгебра. Рабочая тетрадь. 9 класс. В 2-х ч. Ч.2	9	92.4000000000000057
829	Кузнецова Л. В., Минаева С. С., Рослова Л. О. и др.	Алгебра. Тематические тесты. 9 класс.	9	130.900000000000006
830	Кузнецова Л. В., Минаева С. С., Рослова Л. О.	Алгебра. Контрольные работы.  9 класс.	9	125.400000000000006
831	Евстафьева Л. П., Карп А. П.	Алгебра. Дидактические материалы. 9 класс.	9	138.599999999999994
832	Колягин Ю. М., Ткачева М. В., Фёдорова Н. Е. и др.	Алгебра. Рабочая тетрадь. 7 класс. В 2-х ч. Ч. 1	7	101.200000000000003
833	Колягин Ю. М., Ткачева М. В., Фёдорова Н. Е. и др.	Алгебра. Рабочая тетрадь. 7 класс. В 2-х ч. Ч. 2	7	101.200000000000003
834	Ткачева М. В.	Алгебра. Тематические тесты. 7 класс	7	133.099999999999994
835	Ткачева М. В., Фёдорова Н. Е., Шабунин М. И.	Алгебра. Дидактические материалы. 7 класс.	7	138.599999999999994
836	Колягин Ю. М., Ткачева М. В., Фёдорова Н.Е. и др.	Алгебра. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.1	8	101.200000000000003
837	Колягин Ю. М., Ткачева М. В., Фёдорова Н.Е. и др.	Алгебра. Рабочая тетрадь. 8 класс. В 2-х ч. Ч.2	8	101.200000000000003
838	Ткачева М. В.	Алгебра. Тематические тесты. 8 класс.	8	130.349999999999994
839	Ткачева М. В., Фёдорова Н. Е., Шабунин М. И.	Алгебра. Дидактические материалы. 8 класс.	8	138.599999999999994
840	Ткачева М. В., Фёдорова Н.Е., Шабунин М. И.	Алгебра.  Рабочая тетрадь. 9 класс.	9	148.5
841	Ткачева М. В.	Алгебра. Тематические тесты. 9 класс.	9	125.400000000000006
842	Ткачева М. В., Фёдорова Н.Е., Шабунин М. И.	Алгебра. Дидактические материалы. 9 класс.	9	167.75
843	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Рабочая тетрадь. 7 класс. В 2-х ч. Ч. 1	7	101.200000000000003
844	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Рабочая тетрадь. 7 класс. В 2-х ч. Ч. 2	7	101.200000000000003
845	Жохов В. И., Крайнева Л. Б.	Уроки алгебры в 7 классе. Книга для учителя.	7	129.25
846	Дудницын Ю. П., Кронгауз В. Л.	Алгебра. Тематические тесты. 7 класс.	7	122.099999999999994
847	Звавич Л. И., Кузнецова Л. В., Суворова С. Б.	Алгебра. Дидактические материалы. 7 класс.	7	153.449999999999989
848	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Методические рекомендации. 7 класс.	7	160.599999999999994
849	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Рабочая тетрадь. 8 класс. В 2-х ч. Ч. 1.	8	101.200000000000003
850	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Рабочая тетрадь. 8 класс. В 2-х ч. Ч. 2.	8	101.200000000000003
851	Жохов В. И., Карташева Г. Д.	Уроки алгебры в 8 классе. Книга для учителя.	8	121
852	Дудницын Ю. П., Кронгауз В. Л.	Алгебра. Тематические тесты. 8 класс.	8	122.099999999999994
853	Жохов В. И., Макарычев Ю. Н., Миндюк Н. Г.	Алгебра. Дидактические материалы. 8 класс	8	153.449999999999989
854	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Рабочая тетрадь. 9 класс. В 2-х ч.. Ч. 1 	9	101.200000000000003
855	Миндюк Н. Г., Шлыкова И. С.	Алгебра. Рабочая тетрадь. 9 класс. В 2-х ч. Ч.2	9	101.200000000000003
856	Дудницын Ю. П., Кронгауз В. Л.	Алгебра. Тематические тесты. 9 класс.	9	122.099999999999994
857	Макарычев Ю. Н., Миндюк Н. Г., Крайнева Л. Б.	Алгебра. Дидактические материалы. 9 класс.	9	153.449999999999989
858	Потапов К. В., Шевкин А. В.	Алгебра. Рабочая тетрадь. 7 кл. в 2-х ч. Ч.1	7	101.200000000000003
859	Потапов М. К., Шевкин А. В.	Алгебра. Рабочая тетрадь. 7 кл. В 2-х ч.. Ч.2	7	101.200000000000003
860	Чулков П. В.	Алгебра. Тематические тесты. 7 класс	7	118.25
861	Потапов М. К., Шевкин А. В.	Алгебра. Дидактические материалы. 7 класс.	7	113.299999999999997
862	Чулков П. В., Струков Т. С.	Алгебра. Тематические тесты. 8 класс.	8	121.549999999999997
863	Потапов М. К., Шевкин А. В.	Алгебра. Дидактические материалы. 8 класс.	8	129.25
864	Чулков П. В., Струков Т. С.	Алгебра. Тематические тесты. 9 класс	9	101.200000000000003
865	Потапов М. К., Шевкин А. В.	Алгебра. Дидактические материалы. 9 класс.	9	132.550000000000011
866	Потапов М. К., Шевкин А. В.	Алгебра. Методические рекомендации.  9 класс.	9	178.75
867	Галицкий М. Л., Гольдман А. М., Звавич Л. И.	Сборник задач по алгебре. 8-9 классы.	8 - 9	257.839999999999975
868	Лахова Н. В.	Алгебра за 7 занятий. 7 класс.	7	161.699999999999989
869	Лахова Н. В.	Алгебра за 7 занятий.  8 класс.	8	161.699999999999989
870	Лахова Н. В.	Алгебра за 7 занятий. 9 класс.	9	177.099999999999994
871	Сост. Бурмистрова Т. А.	Алгебра. Сборник рабочих программ. 7-9 классы	 7 - 9	130.900000000000006
872	Сост. Бурмистрова Т. А.	Геометрия. Сборник рабочих программ. 7-9 классы	 7 - 9	151.25
873	\N	\N	\N	\N
874	Рыжик В. И.	Геометрия. Диагностические тесты. 7-9 классы.	 7 - 9	153.449999999999989
875	Атанасян Л. С., Бутузов В. Ф., Глазков Ю. А. и др.	Геометрия. Рабочая тетрадь. 7 класс.	7	106.700000000000003
876	Мищенко Т. М., Блинков А. Д.	Геометрия. Тематические тесты.. 7 класс.	7	116.599999999999994
877	Зив Б. Г., Мейлер В. М.	Геометрия. Дидактические материалы. 7 класс.	7	143
878	Иченская М. А.	Геометрия. Самостоятельные и контрольные работы. 7 класс.	7	62.7000000000000028
879	Атанасян Л. С., Бутузов В. Ф., Глазков Ю. А. и др.	Геометрия. Рабочая тетрадь. 8 класс.	8	106.700000000000003
880	Мищенко Т. М., Блинков А. Д.	Геометрия. Тематические тесты. 8 класс. 	8	116.599999999999994
881	Зив Б. Г., Мейлер В. М.	Геометрия. Дидактические материалы. 8 класс.	8	143
882	Иченская М. А.	Геометрия. Самостоятельные и контрольные работы. 8 класс.	8	62.7000000000000028
883	Атанасян Л. С., Бутузов В. Ф., Глазков Ю. А. и др.	Геометрия. Рабочая тетрадь. 9 класс.	9	106.700000000000003
884	Мищенко Т. М., Блинков А. Д.	Геометрия. Тематические тесты. 9 класс.	9	116.599999999999994
885	Атанасян Л. С., Бутузов В. Ф., Глазков Ю. А. и др.	Геометрия. Методические рекомендации. 9 класс.	9	117.150000000000006
886	Зив Б. Г.	Геометрия. Дидактические материалы. 9 класс	9	143
887	Иченская М. А.	Геометрия. Самостоятельные и контрольные работы.  9 класс.	9	62.7000000000000028
888	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Рабочая тетрадь. 7 класс.	7	150.699999999999989
889	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Тематические тесты. 7 класс.	7	133.099999999999994
890	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Дидактические материалы. 7 класс	7	121
891	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Рабочая тетрадь. 8 класс.	8	150.699999999999989
892	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Тематические тесты. 8 класс.	8	133.099999999999994
893	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Дидактические материалы. 8 класс	8	121
894	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Рабочая тетрадь. 9 класс.	9	150.699999999999989
895	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Тематические тесты. 9 класс.	9	133.099999999999994
896	Бутузов В. Ф., Кадомцев С. Б., Прасолов В. В.	Геометрия. Дидактические материалы. 9 класс.	9	121
897	Дудницын Ю. П.	Геометрия. Рабочая тетрадь. 7 класс. 	7	144.099999999999994
898	Дудницын Ю. П., Кронгауз В. Л.	Геометрия. Тренировочные задания. 7 класс.	7	146.300000000000011
899	Гусев В. А., Медяник А. И.	Геометрия. Дидактические материалы.  7 класс	7	107.799999999999997
900	Мищенко Т. М.	Геометрия. Тематические тесты. 7 класс.	7	130.349999999999994
901	Дудницын Ю. П., Кронгауз В. Л.	Геометрия. Тренировочные задания. 8 класс.	8	164.449999999999989
902	Дудницын Ю. П.	Геометрия. Рабочая тетрадь. 8 класс.	8	144.099999999999994
903	Гусев В. А., Медяник А. И.	Геометрия. Дидактические материалы. 8 класс.	8	111.099999999999994
904	Мищенко Т. М.	Геометрия. Тематические тесты. 8 класс.	8	130.349999999999994
905	Дудницын Ю. П.	Геометрия. Рабочая тетрадь. 9 класс.	9	141.349999999999994
906	Гусев В. А., Медяник А. И.	Геометрия. Дидактические материалы. 9 класс.	9	107.799999999999997
907	Мищенко Т. М.	Геометрия. Тематические тесты. 9 класс.	9	130.349999999999994
908	Прасолов В. В.	Задачи повышенной сложности по геометрии. 7 класс.	7	77.5499999999999972
909	Зив Б. Г., Мейлер В. М., Баханский А. Г.	Задачи по геометрии. 7-11 классы.	7 - 11	239.800000000000011
910	Зив А. Б., Мейлер В. М., Баханский А. Г. 	Задачи по геометрии. 7-9 классы.     	7 - 9	190.849999999999994
911	\N	\N	\N	\N
912	\N	\N	\N	\N
913	Артеменков Д. А., Воронцова Н. И., Жумаев В. В.	Физика. Сборник примерных рабочих программ. Предметные линии учебников "Сферы". Физика. 7-9 классы, Физика. 10-11 классы. Базовый уровень	 7 - 9	150.150000000000006
914	Артеменков Д. А., Белага В. В., Воронцова Н. И. и др. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь-тренажёр. 7 класс	7	177.099999999999994
915	Жумаев В. В. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь-экзаменатор. 7 класс.	7	141.349999999999994
916	Белага В. В., Воронцова Н. И., Жумаев В. В. и др. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь-практикум. 7 класс.	7	142.449999999999989
917	Артеменков Д. А., Ломаченков И. А., Панебратцев Ю. А. / Под ред. Панебратцева Ю. А.	Физика. Задачник. 7 класс.	7	136.949999999999989
918	Жумаев В. В. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь-экзаменатор. 8 класс.	8	141.349999999999994
919	Артеменков Д. А., Белага В. В., Воронцова Н. И. и др. / Под ред. Панебратцева Ю. А.	Физика.Тетрадь-тренажёр. 8 класс.	8	177.099999999999994
920	Артеменков Д. А., Белага В. В., Воронцова Н. И. и др. / Под ред. Панебратцева Ю. А.	Физика.Тетрадь-практикум. 8 класс.	8	142.449999999999989
921	Белага В. В. / Под ред. Панебратцева Ю. А.	Физика. Задачник. 8 класс.	8	136.949999999999989
922	Жумаев В. В. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь-экзаменатор. 9 класс.	9	141.349999999999994
923	Артеменков Д. А., Белага В. В., Воронцова Н. И. и др. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь-тренажёр. 9 класс.	9	177.099999999999994
924	Артеменков Д. А., Белага В. В., Воронцова Н. И. и др. / Под ред. Панебратцева Ю. А.	Физика. Тетрадь - практикум. 9 класс	9	142.449999999999989
925	Артеменков Д. А., Ломаченков И. А., Панебратцев Ю. А. / Под ред. Панебратцева Ю. А.	Физика. Задачник. 9 класс	9	136.949999999999989
926	Хмельницкая А.Ю.	Физика. Обучающий тренажёр. 7 класс	7	99
927	Хмельницкая А.Ю.	Физика. Обучающий тренажёр. 8 класс	8	99
928	Кабардин О. Ф.	Физика.  Рабочие программы.  Предметная линия учебников "Архимед". 7-9 классы	 7 - 9	125.400000000000006
929	Кабардина С. И.	Физика. Рабочая тетрадь. 7 класс	7	146.300000000000011
930	Любимова Г. В.	Физика. Рабочая тетрадь. 8 класс	8	132
931	Кабардина С. И.	Физика. Рабочая тетрадь. 9 класс	9	132
932	Лукашик В., Иванова Е. В.	Сборник задач по физике. 7-9 классы.	 7 - 9	198
933	Иванеско С. В., Колясников О. В., Копачева Е. В., Лихаева Т. Н., Негазов А. И., Нугаева Н. П., Рябов В. И.	Биология. Физика. Химия. Сборник задач и упражнений. 7-9 классы	 7 - 9	369.600000000000023
934	\N	\N	\N	\N
935	Пасечник В. В., Суматохин С. В., Калинова Г. С. и др.	Биология. Рабочие программы. Предметная линия учебников "Линия жизни".  5-9 классы	5 - 9	150.150000000000006
936	Под ред. Пасечника В. В.	Биология. Рабочая тетрадь. 5 класс	5	156.199999999999989
937	Суматохин С. В., Калинова Г. С., Гапонюк З. Г.	Биология. Проверочные работы в формате ВПР. 5 класс.	5	125.400000000000006
1069	Мильруд Р. П.	Английский язык. Сборник грамматических  упражнений. 11 класс.	11	158.400000000000006
938	Пасечник В.В.	Биология. Индивидуально-групповая деятельность. Поурочные разработки. 5-6 классы	 5 - 6	195.800000000000011
939	Пасечник В. В., Суматохин С. В., Калинова Г. С. и др. / Под ред. Пасечника В. В.	Биология.  Рабочая тетрадь. 6 класс	6	156.199999999999989
940	Суматохин С. В., Калинова Г. С., Гапонюк З. Г.	Биология. Проверочные работы в формате ВПР. 6 класс.	6	125.400000000000006
941	Пасечник В. В., Суматохин С. В., Калинова Г. С. и др. / Под ред. Пасечника В. В.	Биология. Рабочая тетрадь. 7 класс.	7	156.199999999999989
942	Под ред. Пасечник В. В.	Биология.  Рабочая тетрадь. 8 класс	8	156.199999999999989
943	Пасечник В. В., Хайбулина К. В.	Биология. Индивидуально-групповая деятельность. Поурочные разработки. 8 класс	8	178.75
944	Пасечник В. В., Швецов Г. Г.	Биология. Рабочая тетрадь. 9 класс	9	153.449999999999989
945	Сивоглазов В. И.	Биология. Рабочая тетрадь. 5 класс.	5	155.099999999999994
946	Сивоглазов В.И.	Биология. Рабочая тетрадь. 6 класс	6	147.289999999999992
947	Сивоглазов В. И. и др.	Биология.Рабочие программы. Предметная линия  учебников Сивоглазова В.И.  5-9 классы.	5 - 9	165
948	Демьянков Е. Н., Соболев А. Н.	Биология. Растения. Грибы. Лишайники. Сборник задач и упражнений. 5-6 классы.	 5 - 6	368.5
949	\N	\N	\N	\N
950	Габриелян О.С., Сладков С.А.	Химия. Рабочие программы. Предметная линия учебников Габриеляна О.С . 8-9 классы.	7 - 9	119.349999999999994
951	Габриелян О.С., Аксенова И.В., Остроумов И.Г.	Химия. Тетрадь для лабораторных опытов и практических работ. 8 класс.	8	155.099999999999994
952	Габриелян О. С., Сладков С. А.,  Остроумов И. Г	Химия. Рабочая тетрадь. 8 класс	8	143
953	Габриелян О.С., Аксёнова И.В., Остроумов И.Г. 	Химия. Тетрадь для лабораторных опытов и практических работ. 9 класс.	9	155.099999999999994
954	Габриелян О. С., Сладков С. А.,  Остроумов И. Г	Химия. Рабочая тетрадь. 9 класс	9	143
955	Гара Н. Н.	Химия. Тетрадь-тренажёр. 8 класс.	8	173.25
956	Журин А. А.	Химия. Тетрадь - практикум. 8 класс.	8	142.449999999999989
957	Бобылева О. Л., Бирюлина Е. В., Дмитриева Е. Н. и др.	Химия. Тетрадь - экзаменатор. 8 класс.	8	112.75
958	Журин А.А.	Химия. Задачник. 8 класс	8	88
959	Гара Н. Н.	Химия. Тетрадь-тренажёр. 9 класс.	9	173.25
960	Бобылева О. Л., Бирюлина Е. В., Дмитриева Е. Н. и др.	Химия. Тетрадь-экзаменатор. 9 класс.	9	141.349999999999994
961	Журин А. А.	Химия. Тетрадь - практикум. 9 клаcc.	9	142.449999999999989
962	Журин А. А.	Химия. Задачник. 9 класс	9	88
963	Габрусева Н. И.	Химия. Рабочая тетрадь. 8 класс.	8	102.299999999999997
964	Габрусева Н. И.	Химия. Тетрадь для лабораторных и практических работ. 8 класс	8	88.5499999999999972
965	Радецкий А. М.	Химия. Дидактический материал. 8-9 классы	8 - 9	114.950000000000003
966	Гара Н. Н., Габрусева Н. И.	Химия. Задачник с "помощником". 8-9 классы.	8 - 9	132
967	Гара Н. Н.	Химия. Рабочие программы. Предметная линия учебников Г.Е. Рудзитиса, Ф.Г. Фельдмана. 8-9 классы.	8 - 9	71.5
968	Габрусева Н. И.	Химия. Рабочая тетрадь. 9 класс.	9	102.299999999999997
969	Габрусева Н. И.	Химия. Тетрадь для лабораторных и практических работ. 9 класс	9	88.5499999999999972
970	Алёшин Г.Ю., Чепига А.А., Королёв В.В.	Химический турнир. 8-11 классы.	8 - 11	169.949999999999989
971	Габриелян О.С., Тригубчак И.В.	Химия. Сборник задач и упражнений. 8 класс	8	162.800000000000011
972	Габриелян О.С., Тригубчак И.В.	Химия. Сборник задач и упражнений. 9 класс	9	177.099999999999994
973	\N	\N	\N	\N
974	\N	\N	\N	\N
975	Горяева Н. А. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 5 класс	5	153.449999999999989
976	Неменская Л. А. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 6 класс	6	153.449999999999989
977	Гуров Г. Е., Питерских А. С. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 7 класс	7	153.449999999999989
978	Алешина Т. В., Питерских А. С. / Под ред. Неменского Б. М.	Изобразительное искусство. Твоя мастерская. Рабочая тетрадь. 8 класс	8	164.449999999999989
979	Шпикалова Т. Я., Ершова Л. В., Макарова Н. Р. и др.	Изобразительное искусство. Творческая тетрадь. 5 класс	5	148.719999999999999
980	Шпикалова Т. Я., Поровская Г. А., Макарова Н. Р. и др.	Изобразительное искусство. Творческая тетрадь. 6 класс	6	160.27000000000001
981	\N	\N	\N	\N
1022	Баранов П. А.	В помощь выпускнику. ОГЭ. Обществознание. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1070	\N	\N	\N	\N
1071	\N	\N	\N	\N
982	Сергеева Г. П., Критская Е. Д., Кашекова И. Э.	Музыка. 5-8 классы. Искусство 8-9 классы. Сборник рабочих программ. Предметная линия учебников Г. П. Сергеевой, Е. Д. Критской	5 - 9	144.099999999999994
983	Сергеева Г. П., Критская Е. Д.	Музыка. Творческая тетрадь. 5 класс. 	5	152.900000000000006
984	Сергеева Г. П., Критская Е. Д.	Музыка. Творческая тетрадь. 6 класс. 	6	152.900000000000006
985	Сергеева Г. П., Критская Е. Д.	Музыка. Творческая тетрадь. 7 класс	7	152.900000000000006
986	Сергеева Г. П.	Музыка. Творческая тетрадь. 8 класс.	8	119.349999999999994
987	\N	\N	\N	\N
988	Казакевич В. М., Пичугина Г. В., Семенова Г. Ю. и др.	Технология. Методическое пособие. 5-9 классы	 5 - 9	115.5
989	Казакевич В. М., Пичугина Г. В., Семенова Г. Ю. и др.	Технология. Рабочие программы. 5-9 классы.	 5 - 9	103.950000000000003
990	Казакевич В. М., Пичугина Г. В., Семенова Г. Ю. и др. / Под ред. Казакевич В. М.	Технология. Проекты и кейсы. 5 класс	5	127.049999999999997
991	\N	\N	\N	\N
992	\N	\N	\N	\N
993	Лях В. И.	Физическая культура. Рабочие программы. Предметная линия учебников М. Я. Виленского, В. И. Ляха. 5-9 классы	 5 - 9	107.25
994	Матвеев А. П.	Физическая культура. Рабочие программы. Предметная линия учебников А. П. Матвеева. 5-9 классы	 5 - 9	119.349999999999994
995	\N	\N	\N	\N
996	Кузнецов К. Г., Кувшинова О. Л., Серебряков А. Г. и др.	Моя будущая профессия. Тесты по профессиональной ориентации школьников. 8 класс	8	118.25
997	Серебряков А. Г., Хохлов Н. А., Кузнецов К. Г. и др.	Моя будущая профессия. Тесты по профессиональной ориентации школьников. 9 класс	9	118.25
998	\N	\N	\N	\N
999	Комиссарова Л. Ю. и др.	Всероссийские проверочные работы. Русский язык. Рабочая тетрадь. 5 класс	5	118.799999999999997
1000	Комиссарова Л. Ю.	Всероссийские проверочные работы. Русский язык. Рабочая тетрадь. 6 класс	6	107.25
1001	Комиссарова Л. Ю. и др.	Всероссийские проверочные работы. Русский язык. Рабочая тетрадь. 7 класс	7	114.400000000000006
1002	Вольфсон Г. И. / Под ред. Ященко И. В.	Всероссийские проверочные работы. Математика. Рабочая тетрадь. 5 класс	5	120.450000000000003
1003	Артасов И. А., Мельникова О. Н.	Всероссийский проверочные работы. История. Рабочая терадь. 5 класс	5	114.950000000000003
1004	Рохлов В. С., Мишняева Е. Ю., Скворцов П. М.	Всероссийские проверочные работы. Биология. Рабочая тетрадь. 5 класс	5	120.450000000000003
1005	Мигунова М.А.	Всероссийские проверочные работы. Русский язык.15 вариантов. 5 класс. 	5	114.400000000000006
1006	Стаценко Т. Н.	Всероссийские проверочные работы. Русский язык. 15 вариантов. 6 класс. 	6	114.400000000000006
1007	Черняева М.А., Доброхвалов Р.А.	Всероссийские проверочные работы. Математика. 15 типовых вариантов. 5 класс.	5	115.5
1008	Черняева М.А., Доброхвалов Р.А.	Всероссийские проверочные работы. Математика. 15 типовых вариантов. 6 класс	6	115.5
1009	Черняева М.А., Доброхвалов Р.А.	Всероссийские проверочные работы. Математика. 15 типовых вариантов. 7 класс	7	115.5
1010	Орлова Т. С., Безносов А. Э.	Всероссийские проверочные работы. История. 15 вариантов. 5 класс.	5	115.5
1011	Орлова Т. С., Безносов А. Э.	Всероссийские проверочные работы. История. 15 вариантов. 6 класс.	6	115.5
1012	Липина С.Н., Балакина Н.А.	Всероссийские проверочные работы.  Биология. 10 типовых вариантов. 5 класс.	5	110
1013	Морсова С.Г.	Всероссийские проверочные работы.  Биология. 10 типовых вариантов. 6 класс.	6	110
1014	Стенин А.И., Лобжанидзе Н.Е.     	Всероссийские проверочные работы. География. 15 вариантов. 6 класс. 	6	115.5
1015	Морозова Е. П., Евсеева Ю. Н., Еловикова Е. М.	Всероссийские проверочные работы. Английский язык. 10 вариантов. 7 класс.	7	127.049999999999997
1016	Лытаева М. А., Люкина Е. В., Гутброд О. В.	Всероссийские проверочные работы. Немецкий язык. 10 вариантов. 7 класс.	7	127.049999999999997
1017	\N	\N	\N	\N
1018	Баранов П. А.	В помощь выпускнику. ОГЭ. История. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1019	Багге М. Б., Белова М. Г.	В помощь выпускнику. ОГЭ. Литература. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1020	Кузнецова Т. С.	В помощь выпускнику. ОГЭ. География. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1021	Багге М. Б., Гвоздинская Л. Г., Шерстобитова И. А.	В помощь выпускнику. ОГЭ. Русский язык. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1023	Кузнецова Л. В., Суворова С. Б., Булычев В. А. и др.	В помощь выпускнику. ОГЭ. Математика. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1024	Панина Г. Н., Левашко Е. В.	В помощь выпускнику. ОГЭ. Биология. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1025	Лёвкин А. Н., Домбровская С. Е.	В помощь выпускнику. ОГЭ. Химия. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1026	Степанова Г. Н., Лебедева И. Ю.	В помощь выпускнику. ОГЭ. Физика. Справочник с комментариями ведущих экспертов	9	224.949999999999989
1027	Нарушевич А. Г., Смеречинская Н. М.	Русский язык. Трудные задания ОГЭ. Итоговое собеседование	9	161.699999999999989
1028	Коллектив авторов	Математика. Трудные задания ОГЭ. Задания повышенного и высокого уровней сложности. Приёмы и способы решений	9	143
1029	Александрова М.А., Щелканова Г.В.	Химия. Трудные задания ОГЭ.	9	173.25
1030	Габриелян О.С., Деглина Т. Е.	Химия. Трудные задания ОГЭ.  Химический эксперимент	9	127.049999999999997
1031	Мишин А. В., Воложанина Н. В.	Английский язык. Трудные задания ОГЭ	9	125.950000000000003
1032	\N	\N	\N	\N
1033	\N	\N	\N	\N
1034	\N	\N	\N	\N
1035	\N	\N	\N	\N
1036	Алексеев А.А., Смирнова Е. Ю. и др.	Английский язык. Тетрадь-тренажёр. 10 класс	10	231
1037	Афанасьева О. В., Дули Д. ., Михеева И. В. и др.	Английский язык. Рабочая тетрадь. 10 класс	10	283.800000000000011
1038	Афанасьева О. В., Дули Д. ., Михеева И. В. и др.	Венецианский купец. (По У. Шекспиру). Книга для чтения. 10 класс. 	10	152.900000000000006
1039	Афанасьева О. В., Дули Д. ., Михеева И. В. и др.	Английский язык. Контрольные задания. 10 класс.	10	128.150000000000006
1040	Афанасьева О. В., Дули Д. ., Михеева И. В. и др.	Английский язык. Рабочая тетрадь. 11 класс	11	283.800000000000011
1041	Афанасьева О. В. и др.	Гамлет (По У. Шекспиру). Книга для чтения. 11 класс	11	152.900000000000006
1042	Афанасьева О. В., Дули Д. ., Михеева И. В. и др.	Английский язык. Контрольные задания. 11 класс.	11	128.150000000000006
1043	Афанасьева О. В., Дули Д., Михеева И. В. и др.	Английский язык. Книга для учителя. 11 класс	11	464.75
1044	Мишин А. В.	Английский язык. Единый государственный экзамен. Устная часть	 10 - 11	242.550000000000011
1045	Мишин А.В., Воложанина Н.В., Жиганов В.В.	Английский язык. Единый государственный экзамен. Сборник готовых эссе	 10 - 11	175.449999999999989
1046	Мильруд Р. П.	Английский язык. Единый государственный экзамен. Пишем эссе.	11	331.649999999999977
1047	Мильруд Р. П.	Английский язык. Единый государственный экзамен. Грамматика и лексика	11	193.599999999999994
1048	Мишин А. В.	Английский язык. Эффективные приёмы подготовки к ЕГЭ.	11	182.050000000000011
1049	Абросимова Л. С., Долгопольская И. Б., Дули Д.	Английский язык. Курс на ЕГЭ. 10-11 классы.	 10 - 11	643.5
1050	\N	\N	\N	\N
1051	Лытаева М. А., Базина Н. В.	Немецкий язык. Рабочая тетрадь. 10 класс.	10	259.050000000000011
1052	Лытаева М. А., Ионова А. М.	Немецкий язык. Рабочая тетрадь. 11 класс.	11	259.050000000000011
1053	Фурманова С. Л., Бажанов А. Е.	Немецкий язык. Единый государственный экзамен. Устная часть.	 10 - 11	179.080000000000013
1054	Лытаева М. А., Сергеева В. С.	Немецкий язык. Единый государственный экзамен. Письменная часть	11	154.659999999999997
1055	\N	\N	\N	\N
1056	Григорьева Е. Я., Горбачева Е. Ю., Лисенко М. Р.	Французский язык. Сборник упражнений. 10-11 классы	 10 - 11	220.550000000000011
1057	Бубнова Г. И., Николаева В. В.	Французский язык. Единый государственный экзамен. Устная часть	10 - 11	237.930000000000007
1058	\N	\N	\N	\N
1059	\N	\N	\N	\N
1060	Афанасьева О. В. и др.	Английский язык. Контрольные задания. 10 класс.	10	156.199999999999989
1061	Афанасьева О. В., Михеева И. В., Баранова К. М. и др.	Английский язык. Рабочая тетрадь. 11 класс	11	154.550000000000011
1062	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 10 класс	10	296.449999999999989
1063	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Лексический практикум. 10 класс	10	153.449999999999989
1064	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Контрольные задания. 10 класс	10	138.599999999999994
1065	Мильруд Р. П.	Английский язык. Сборник грамматических упражнений. 10 класс	10	158.400000000000006
1066	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Рабочая тетрадь. 11 класс	11	296.449999999999989
1067	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Лексический практикум. 11 класс	11	153.449999999999989
1068	Баранова К. М., Дули Д., Копылова В. В. и др.	Английский язык. Контрольные задания. 11 класс	11	130.900000000000006
1072	Цыбанева В.А., Дули Д., Эванс В.	Английский язык. Второй иностранный язык. Рабочая тетрадь с грамматическим тренажером. 10 класс	10	385
1073	\N	\N	\N	\N
1074	Бажанов А. Е., Фурманова С. Л., Джин Ф. . и др.	Немецкий язык. Второй иностранный язык.  Рабочая тетрадь. 10 класс	10	342.100000000000023
1075	Аверин М.М. и др.	Немецкий язык. Второй иностранный язык. Тетрадь-тренажёр для подготовки к ЕГЭ. 11 класс	11	299.199999999999989
1076	\N	\N	\N	\N
1077	Григорьева Е. Я., Горбачева Е. Ю., Лисенко М. Р.	Французский язык. Второй иностранный язык. Сборник упражнений. 10 класс (базовый уровень)	10	306.899999999999977
1078	\N	\N	\N	\N
1079	Костылева С.В., Кондрашова Н.А., Лопес Барбера И. и др.	Испанский язык. Второй иностранный язык. Сборник упражнений.  10-11  классы (базовый уровень)	 10 - 11	337.699999999999989
1080	\N	\N	\N	\N
1081	\N	\N	\N	\N
1082	Данилов А. А., Косулина Л. Г., Макарова М. И. и др.	История. История России. Рабочая тетрадь. 10 класс. В 2-х частях. Часть 1.	10	151.800000000000011
1083	Данилов А. А., Косулина Л. Г., Макарова М. И. и др.	История. История России. Рабочая тетрадь. 10 класс. В 2-х частях. Часть 2	10	151.800000000000011
1084	Артасов И. А.	История России. Контрольные работы. 10 класс	10	126.5
1085	А.А. Вершинин	История России. Атлас. 10 класс	10	108.349999999999994
1086	Автор-сост. Тороп В. В.	История России. Контурные карты. 10 класс	10	45.1000000000000014
1087	Данилов А. А.	История России. Школьный словарь-справочник	10 - 11	216.699999999999989
1088	Несмелова М. Л., Середнякова Е. Г., Сороко-Цюпа А. О.	История. Всеобщая история. Новейшая история. Поурочные рекомендации. Рабочая программа. 10 класс. Базовый и углублённый уровни	10	219.449999999999989
1089	Артасов И. А., Мельникова О. Н.	Всероссийские проверочные работы. История. Рабочая тетрадь. 11 класс	11	112.75
1090	Макарова М. И.	История. Всероссийские проверочные работы. 15 типовых вариантов. 11 класс.	11	138.599999999999994
1091	\N	\N	\N	\N
1092	Гладкий Ю. Н., Николина В. В.	География.  Мой тренажер. 10-11 классы. Базовый уровень.	 10 - 11	157.849999999999994
1093	\N	География. Контурные карты. 10-11 классы.	 10 - 11	50.0499999999999972
1094	\N	География. Атлас. 10-11 классы	 10 - 11	112.75
1095	Заяц Д. В., Кузнецов А. П.	География. Атлас. 10-11 классы. Базовый уровень	 10 - 11	179.300000000000011
1096	Заяц Д. В.	География. Контурные карты. 10-11 классы. Базовый уровень	 10 - 11	92.4000000000000057
1097	Максаковкий В.П., Заяц Д.В.	География. Рабочая тетрадь. 10-11 класс	 10 - 11	145.199999999999989
1098	Автор-сост. Козаренко А. Е.	География. Атлас. 10-11 классы	 10 - 11	114.400000000000006
1099	Автор-сост. Козаренко А. Е.	География. Контурные карты. 10-11 кл.	 10 - 11	51.7000000000000028
1100	Максаковский В. П., Заяц Д. В.	География. Методические рекомендации. 10-11 классы.	 10 - 11	195.800000000000011
1101	\N	\N	\N	\N
1102	Боголюбов Л. Н., Аверьянов Ю. И., Басик Н. Ю. и др. / Под ред. Боголюбова Л. Н., Аверьянова Ю. И.	Обществознание. Школьный словарь. 10-11 классы	10 - 11	128.699999999999989
1103	Боголюбов Л. Н., Лазебникова А. Ю., Аверьянов Ю. И. и др.	Обществознаие. Рабочая программа. Поурочные рекомендации. 10 класс. Базовый уровень	10	231
1104	 Боголюбов Л. Н., Лазебникова А. Ю., Городецкая Н. И. и др.	Обществознаие. Рабочая программа. Поурочные рекомендации. 11 класс. Базовый уровень	11	231
1105	\N	\N	\N	\N
1106	\N	\N	\N	\N
1107	Шабунин М. И., Ткачева М. В., Федорова Н. Е.	Алгебра и начала математического анализа. Дидактические материалы. 10 класс. Базовый и углублённый уровни. 	10	163.349999999999994
1108	Глазков Ю. А., Юдина И. И., Бутузов В. Ф.	Геометрия. Рабочая тетрадь. 10 класс. Базовый и профильный уровни.	10	133.650000000000006
1109	Зив Б. Г.	Геометрия. Дидактические материалы. 10 класс. Базовый и профильный уровни.	10	136.949999999999989
1110	Иченская М. А.	Геометрия. Самостоятельные работы. 10 класс. 	10	88
1111	Иченская М. А.	Геометрия. Контрольные работы. 10-11 класс.	 10 - 11	75.3499999999999943
1112	Бутузов В. Ф., Глазков Ю. А., Юдина И. И.	Геометрия. Рабочая тетрадь. 11 класс. Базовый и профильный уровни.	11	133.650000000000006
1113	Зив Б. Г.	Геометрия. Дидактические материалы. 11 класс. Базовый и профильный уровни	11	136.949999999999989
1114	Иченская М. А.	Геометрия. Самостоятельные работы. 11 класс. 	11	100.099999999999994
1115	Бутузов В. Ф., Прасолов В. В.	Геометрия. Дидактические материалы. 10 класс. Базовый и углублённый уровни.	10	152.900000000000006
1116	Бутузов В. Ф., Прасолов В. В.	Геометрия. Методические рекомендации. 10 класс. Базовый и углублённый уровни.	10	193.050000000000011
1117	Шабунин М. И., Ткачева М. В., Фёдорова Н.Е. и др.	Алгебра и начала математического анализа. Дидактические материалы. 10 класс. Базовый и углублённый уровни..	10	162.25
1118	Шабунин М. И., Ткачева М. В., Федорова Н. Е.	Алгебра и начала математического  анализа. Дидактические материалы. 11 класс. Базовый уровень	11	163.349999999999994
1119	Шабунин М. И., Ткачева М. В., Федорова Н. Е. и др.	Алгебра и начала математического анализа. Дидактические материалы. 11 класс. Углубленный уровень.	11	151.800000000000011
1120	Шепелева Ю. В.	Алгебра и начала математического  анализа. Тематические тесты. 10 класс. Базовый и профильный уровни	10	129.25
1121	Потапов М. К., Шевкин А. В.	Алгебра и начала математического анализа. Дидактические материалы. 10 класс. Базовый и углублённый уровни.	10	155.650000000000006
1122	Шепелева Ю. В.	Алгебра и начала математического  анализа. Тематические тесты. 11 класс. Базовый и профильный уровни	11	129.25
1123	Потапов М. К., Шевкин А. В.	Алгебра и начала математического анализа. Дидактические материалы. 11 класс. Базовый и профильный уровни.	11	155.650000000000006
1124	Панчищина В. А.	Геометрия. Дидактические материалы. 10 класс.Базовый и углублённый уровни	10	92.4000000000000057
1125	Панчищина В. А.	Геометрия. Дидактические материалы. 11 класс.Базовый и углублённый уровни	11	92.4000000000000057
1126	Сост. Бурмистрова Т. А.	Математика: алгебра и начала математического анализа, геометрия. Геометрия. Сборник рабочих программ. 10-11 классы. Базовый и углублённый уровни.	 10 - 11	145.75
1127	Сост. Бурмистрова Т. А.	Математика: алгебра и начала математического анализа. Алгебра и начала математического анализа. Сборник рабочих программ. 10-11 классы. Базовый и углубленный уровни.	 10 - 11	150.150000000000006
1128	Ященко И. В., Шестаков С. А.	Алгебра и начала математического анализа. Универсальный многоуровневый сборник задач. 10-11 классы.	 10 - 11	293.699999999999989
1129	Ященко И. В., Шестаков С. А.	Геометрия. Универсальный многоуровневый сборник задач 10-11 классы.	 10 - 11	293.699999999999989
1130	\N	\N	\N	\N
1131	\N	\N	\N	\N
1132	Белага В. В. / Под ред. Панебратцева Ю. А.	Физика. Задачник. 10 класс. Базовый уровень.	10	143.550000000000011
1133	Парфентьева Н. А.	Физика. Тетрадь для лабораторных работ. 10 класс. 	10	84.7000000000000028
1134	Ерюткин Е.С., Ерюткина С.Г.	Физика. Cамостоятельные и контрольные и работы. 10 кл.	10	150.150000000000006
1135	Парфентьева Н. А.	Сборник задач по физике. 10-11 классы. Базовый уровень	 10 - 11	149.050000000000011
1136	Шаталина А.В.	Физика. Рабочие программы. Предметная линия учебников "Классический курс". 10-11 классы	 10 - 11	172.150000000000006
1137	Парфентьева Н. А.	Физика. Тетрадь для лабораторных работ. 11 класс.	11	84.7000000000000028
1138	Кулягина Г. П., Мещерякова Л. В., Миловзорова А. М. и др.	Биология. Физика. Химия. 10-11 класс. Сборник задач и упражнений	 10 - 11	376.199999999999989
1139	\N	\N	\N	\N
1140	Комолова Л. Ф., Коновалова Н. А. / Под ред. Пентина А. Ю.	Сборник задач и  упражнений. Физика. 10-11 классы. Углубленный уровень	 10 - 11	445.5
1141	\N	\N	\N	\N
1142	Кондакова Е. В., Чаругин В. М.	Астрономия. Тетрадь-практикум. 10-11 классы. Базовый уровень	 10 - 11	100.099999999999994
1143	Угольников О. С.	Астрономия. Задачник. 10-11 классы. Базовый уровень	 10 - 11	88
1144	Татарников А. М., Угольников О. С., Фадеев Е. Н.	Астрономия. Сборник задач и упражнений. 10-11 класс. Базовый уровень.	 10 - 11	297
1145	\N	\N	\N	\N
1146	Габриелян О.С., Сладков С.А.	Химия. Рабочие программы. Предметная линия учебников Габриеляна О.С. 10-11 классы. Базовый уровень	 10 - 11	119.349999999999994
1147	Радецкий А. М.	Химия. Дидактический материал. 10-11 классы.	 10 - 11	130.900000000000006
1148	Афанасьева М. Н.	Химия. Рабочие программы. Предметная линия учебников Г. Е. Рудзитиса, Ф. Г. Фельдмана. 10-11 классы	 10 - 11	158.949999999999989
1149	\N	\N	\N	\N
1150	Пузаков С. А., Попков В. А., Барышова И. В.	Химия. Сборник задач и упражнений. 10-11 классы. Углублённый уровень.	 10 - 11	297
1151	Червина В. В., Варламова А. В., Хасянова Т. В.	Химия. 10 -11 класс. Сборник задач и упражнений	 10 - 11	321.199999999999989
1152	\N	\N	\N	\N
1153	Саблина О. В., Дымшиц Г. М.	Биология. Рабочая тетрадь. 10-11 классы. Базовый уровень.	 10 - 11	83.5999999999999943
1154	Дымшиц Г. М., Саблина О. В.	Биология. Рабочие программы. Предметная линия учебников Д. К. Беляева. 10-11 классы	 10 - 11	125.400000000000006
1296	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. 1-7 классы. Сборник примерных рабочих программ.	1-7	107.25
1155	Пасечник В. В., Швецов Г. Г., Ефимова Т. М.	Биология. Рабочие программы. Предметная линия учебников "Линия жизни" 10-11 классы. Базовый уровень.	 10 - 11	125.400000000000006
1156	Сухорукова Л. Н., Кучменко В. С., Черняковская Е. Ф.	Биология. Тетрадь-практикум. 10-11 классы. Базовый уровень. 	 10 - 11	141.349999999999994
1157	Сухорукова Л. Н., Кучменко В. С., Власова Е. А.	Биология. Тетрадь-тренажёр. 10-11 класс. Базовый уровень.	 10 - 11	169.949999999999989
1158	Сухорукова Л. Н., Кучменко В. С., Сорокин В. В.	Биология. Тетрадь-экзаменатор. 10 - 11 класс. Базовый уровень.	 10 - 11	138.599999999999994
1159	\N	\N	\N	\N
1160	Дымшиц Г. М., Саблина О. В., Высоцкая Л. В. и др.	Биология. Практикум для учащихся 10-11 классов. Профильный уровень.	 10 - 11	190.849999999999994
1161	Дымшиц Г.М., Саблина О.В.	Биология. Рабочие программы. Предметная линия учебников под ред. Шумного В.К., Дымшица Г.М. 10-11 классы. Углубленный уровень	 10 - 11	189.199999999999989
1162	Пасечник В.В., Швецов Г.Г., Ефимова Т.М. 	Биология. Рабочие программы. Предметная линия учебников "Линия жизни". 10-11 кл. Углубленный уровень	 10 - 11	155.099999999999994
1163	Демьянков Е. Н., Соболев А. Н.	Биология. Сборник задач и упражнений. 10-11 класс. Углубленный уровень	 10 - 11	297
1164	\N	\N	\N	\N
1165	\N	\N	\N	\N
1166	Лях В. И.	Физическая культура. Рабочие программы. Предметная линия учебников В. И. Ляха.10-11 классы	 10 - 11	107.140000000000001
1167	\N	\N	\N	\N
1168	Аргунова М.В. и др.	Экология. Методические рекомендации. 10-11 классы	 10 - 11	187
1169	\N	\N	\N	\N
1170	Кузнецов К. Г., Серебряков А. Г., Биккулова О. С. и др.	Моя будущая профессия. Тесты по профессиональной ориентации школьников. 10-11 классы	 10 - 11	151.800000000000011
1171	\N	\N	\N	\N
1172	Лобанов И. А.	ЕГЭ-2019. Обществознание. 25 лучших вариантов	 10 - 11	138.599999999999994
1173	Коллектив авторов	ЕГЭ. Математика. 15 новых вариантов от «Просвещения».  Базовый уровень	 10 - 11	132
1174	Коллектив авторов	ЕГЭ. Математика. 15 лучших вариантов от "Просвещения". Профильный уровень	 10 - 11	121
1175	Нарушевич А. Г.	Русский язык. Твой курс подготовки к ЕГЭ. Задания для самоподготовки с комментированными ответами	 10 - 11	165
1176	Маслов В. В., Бондарцова Ю. Л.	Русский язык. Трудные задания ЕГЭ. Анализ текста	 10 - 11	143
1177	Маслов В. В., Бондарцова Ю. Л.	Русский язык. Трудные задания ЕГЭ. Сложные случаи орфографии и пунктуации.	 10 - 11	143
1178	Шевкин А.В.	Математика. Трудные задания ЕГЭ. Задачи с экономическим содержанием	 10 - 11	138.599999999999994
1179	Шевкин А.В.	Математика. Трудные задания ЕГЭ. Задачи с параметром.	 10 - 11	138.599999999999994
1180	Артасов И. А., Мельникова О. Н., Войцик Ю. Г.	История. Трудные задания ЕГЭ. Работа с картами	10 - 11	119.349999999999994
1181	Артасов И. А., Мельникова О. Н.  	История. Трудные задания ЕГЭ.  Работа с изображениями	 10 - 11	119.349999999999994
1182	Парфентьева Н. А.	Физика. Трудные задания ЕГЭ	 10 - 11	178.75
1183	Афанасьева О. В., Баранова К. М., Пушинина И. В.	Английский язык. Трудные задания ЕГЭ	 10 - 11	202.400000000000006
1184	\N	\N	\N	\N
1185	\N	\N	\N	\N
1186	Шматко Н. Д., Красильникова О. А.	Дети с нарушением слуха. Учебное пособие для общеобразовательных организаций	0 - 1	190.849999999999994
1187	Кудрина Т. П., Любимов А.А., Любимова М.П.	Дети с нарушением зрения. Учебное пособие для общеобразовательных организаций	0 - 1	165
1188	Китик Е. Е., Томме Л. Е.	Дети с тяжёлыми нарушениями речи. Учебное пособие для общеобразовательных организаций	0 - 1	143
1189	Кроткова А.А., Сатари В.В.        	Дети с нарушениями опорно-двигательного аппарата. Учебное пособие для общеобразовательных организаций      	0 - 1	143
1190	Инденбаум Е. Л., Коробейников И. А., Бабкина Н. В.	Дети с задержкой психического развития. Учебное пособие для общеобразовательных организаций       	0 - 1	132
1191	Коробейников И. А., Инденбаум Е. Л.	Дети с интеллектуальными нарушениями. Учебное пособие для общеобразовательных организаций       	0 - 1	132
1192	Никольская О. С., Розенблюм С. А.	Дети с расстройствами аутистического спектра. Учебное пособие для общеобразовательных организаций	0 - 1	143
1193	Баряева Л. Б., Волосовец Т. В., Гаврилушкина О. П.и др.	Адаптированная основная образовательная программа дошкольного образования детей с тяжёлыми нарушениями речи. С методическими рекомендациями	0 - 1	416.899999999999977
1297	Уманская Э. Э., Волкова Е. И., Прудникова Е. А.	Шахматы в школе. Рабочая тетрадь. 1 класс	1	169.400000000000006
1194	Екжанова Е. А., Стребелева Е. А.	Адаптированная основная образовательная программа дошкольного образования детей с умственной отсталостью (интеллектуальными нарушениями) с метод. рекомендациями	0 - 1	356.949999999999989
1195	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам НОО глухих обучающихся.  Вариант 1.2.  1 дополнительный,  1 классы	0 - 1	575.850000000000023
1196	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам НОО глухих обучающихся. Варианты 1.3, 1.4.  1 класс	0 - 1	504.899999999999977
1197	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам НОО слабослышащих и позднооглохших обучающихся. Вариант 2.2. 1 дополнительный,  1 классы	0 - 1	612.700000000000045
1198	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам НОО слабослышащих и позднооглохших обучающихся. Вариант 2.3. 1 дополнительный,  1 классы	0 - 1	441.649999999999977
1199	\N	Примерные рабочие  программы по учебным предметам и коррекционным курсам НОО слепых обучающихся. Варианты 3.2, 3.3, 3.4. 1 класс	1	441.649999999999977
1200	\N	Примерные рабочие  программы по учебным предметам и коррекционным курсам НОО слабовидящих обучающихся. Варианты 4.2, 4.3. 1 класс	1	378.949999999999989
1201	\N	Примерные рабочие  программы по учебным предметам и коррекционным курсам НОО обучающихся с тяжёлыми нарушениями речи. Вариант 5.2. 1 дополнительный, 1 классы	0 - 1	673.75
1202	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам НОО обучающихся с нарушениями опорно-двигательного аппарата. Варианты 6.2, 6.3. Подготовительный класс	0 - 1	636.899999999999977
1203	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам НОО обучающихся с нарушениями опорно-двигательного аппарата. Варианты 6.2, 6.3. 1 класс	1	583.220000000000027
1204	\N	Примерные рабочие  программы по учебным предметам и коррекционным курсам НОО обучающихся с задержкой психического развития. Вариант 7.2. 1 и 1 дополнительный  классы	0 - 1	396.439999999999998
1205	\N	Примерные рабочие  программы по учебным предметам и коррекционным курсам НОО обучающихся с расстройствами аутистического спектра. Вариант 8.2. 1 и 1 дополнительный классы	0 - 1	524.919999999999959
1206	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам образования обучающихся с интеллектуальными нарушениями. Вариант 1. 1 дополнительный, 1 классы	0 - 1	443.189999999999998
1207	\N	Примерные рабочие программы по учебным предметам и коррекционным курсам образования обучающихся с интеллектуальными нарушениями.  Вариант 2. 1 дополнительный, 1 классы	0 - 1	551.649999999999977
1208	\N	ФГОС образования обучающихся с умственной отсталостью (интеллектуальными нарушениями)	1 - 4	125.400000000000006
1209	\N	Примерная адаптированная основная общеобразовательная программа НОО глухих обучающихся	1 - 4	378.949999999999989
1210	\N	Примерная адаптированная основная общеобразовательная программа НОО слепых обучающихся	1 - 4	449.899999999999977
1211	\N	Примерная адаптированная основная общеобразовательная программа НОО обучающихся с задержкой психического развития	1 - 4	200.199999999999989
1212	\N	Примерная адаптированная основная общеобразовательная программа НОО обучающихся с нарушениями опорно-двигательного аппарата	1 - 4	265.100000000000023
1213	\N	Примерная адаптированная основная общеобразовательная программа НОО обучающихся с тяжелыми нарушениями речи	1 - 4	265.100000000000023
1214	\N	Примерная адаптированная основная общеобразовательная программа НОО обучающихся с расстройствами аутистического спектра	1 - 4	387.75
1215	\N	Примерная адаптированная основная общеобразовательная программа образования обучающихся с умственной отсталостью (интеллектуальными нарушениями)	1 - 4	345.399999999999977
1216	\N	Примерные адаптированные основные общеобразовательные программы НОО слабослышащих и позднооглохших обучающихся	1 - 4	378.949999999999989
1217	\N	Примерные адаптированные основные общеобразовательные программы НОО слабовидящих обучающихся	1 - 4	378.949999999999989
1218	\N	\N	\N	\N
1219	\N	\N	\N	\N
1220	\N	\N	\N	\N
1221	Ишимова О. А., Алмазова А. А.	Развитие речи. Письмо. Тетрадь-помощница. Пособие для учащихся начальных классов	1 - 4	214.5
1222	Ишимова О. А., Юсов И. Е.	Письмо. Понимаю и различаю текст, предложение, слово. Тетрадь-помощница. Учебное пособие для учащихся начальных классов	1 - 4	195.25
1342	\N	\N	\N	\N
1223	Ишимова О. А., Дерябина Е. В.	Письмо. Различаю гласные звуки. Правильно пишу. Тетрадь-помощница. Учебное пособие для учащихся начальных классов.	1 - 4	195.25
1224	Ишимова О. А., Алипченкова Н. Н.	Письмо. Различаю твёрдые и мягкие согласные звуки. Обозначаю мягкость согласных. Тетрадь-помощница. Учебное пособие для учащихся начальных классов	1 - 4	195.25
1225	Ишимова О. А., Подотыкина В. Д.	Письмо. Различаю твердые и мягкие согласные звуки. Правильно пишу. Тетрадь-помощница. Учебное пособие для учащихся начальных классов	1 - 4	195.25
1226	Ишимова О. А., Заббарова Е. Х.	Письмо. Различаю звонкие и глухие согласные звуки. Правильно пишу. Тетрадь-помощница. Учебное пособие для учащихся начальных классов.	1 - 4	195.25
1227	Ишимова О. А.	Чтение. От буквы к слогу и словам. Тетрадь-помощница. Пособие для учащихся начальных классов	1 - 4	171.599999999999994
1228	Ишимова О. А.	Чтение. От слога к слову. Тетрадь-помощница. Учебное пособие для учащихся начальных классов	1 - 4	172.150000000000006
1229	Ишимова О. А.	Чтение. Читаю словами. Тетрадь-помощница. Пособие для учащихся начальных классов	1 - 4	160.050000000000011
1230	Ишимова О. А., Сабельникова С. И.	Чтение. Читаю и понимаю. Тетрадь-помощница. Учебное пособие для учащихся начальных классов	1 - 4	160.050000000000011
1231	Ишимова О. А.	Логопедическое сопровождение учащихся начальных классов. Чтение. Программно-методические материалы. Пособие для учителя	1 - 4	231.550000000000011
1232	Ишимова О. А., Шаховская С. Н., Алмазова А. А.	Логопедическое сопровождение учащихся начальных классов. Письмо. Программно-методические материалы. Пособие для учителя	1 - 4	245.849999999999994
1233	Аксёнова А. К., Комарова С. В., Шишкова М. И.	Пропись для 1 класса. В 3 частях. Часть 1. (Пропись № 1) (для обучающихся с интеллектуальными нарушениями)	1	100.099999999999994
1234	Аксёнова А. К., Комарова С. В., Шишкова М. И.	Пропись для 1 класса. В 3 частях. Часть 2. (Пропись № 2) (для обучающихся с интеллектуальными нарушениями)	1	100.099999999999994
1235	Аксёнова А. К., Комарова С. В., Шишкова М. И.	Пропись для 1 класса. В 3 частях. Часть 3. (Пропись № 3) (для обучающихся с интеллектуальными нарушениями)	1	100.099999999999994
1236	Комарова С. В., Головкина Т. М., Саакян С. В.	Речевая практика. Рабочая тетрадь.1 класс. (для обучающихся с интеллектуальными нарушениями)	1	235.949999999999989
1237	Комарова С. В., Головкина Т. М.	Речевая практика. Рабочая тетрадь. 2 класс. (для обучающихся с интеллектуальными нарушениями)	2	237.599999999999994
1238	Комарова С. В.	Речевая практика. Рабочая тетрадь. 3 класс. (для обучающихся с интеллектуальными нарушениями)	3	237.599999999999994
1239	Комарова С. В.	Речевая практика. Рабочая тетрадь. 4 класс. (для обучающихся с интеллектуальными нарушениями)	4	237.599999999999994
1240	Якубовская Э. В.	Читай, думай, пиши. Рабочая тетрадь по русскому языку для учащихся 2 класса. В 2 частях. Часть 1 (для обучающихся с интеллектуальными нарушениями)	2	204.27000000000001
1241	Якубовская Э. В.	Читай, думай, пиши. Рабочая тетрадь по русскому языку для учащихся 2 класса. В 2 частях. Часть 2 (для обучающихся с интеллектуальными нарушениями)	2	204.27000000000001
1242	Аксёнова А. К., Галунчикова Н. Г., Якубовская Э. В.	Читай, думай, пиши. Рабочая тетрадь по русскому языку. 3 класс. В 2-х ч. Ч. 1. (для обучающихся с интеллектуальными нарушениями)	3	206.25
1243	Аксёнова А. К., Галунчикова Н. Г., Якубовская Э. В.	Читай, думай, пиши. Рабочая тетрадь по русскому языку. 3 класс. В 2-х ч. Ч. 2. (для обучающихся с интеллектуальными нарушениями)	3	206.25
1244	Аксёнова А. К., Галунчикова Н. Г., Якубовская Э. В.	Читай, думай, пиши. Рабочая тетрадь по русскому языку. 4 класс. В 2-х ч. Ч. 1. (для обучающихся с интеллектуальными нарушениями)	4	146.300000000000011
1245	Аксёнова А. К., Галунчикова Н. Г., Якубовская Э. В.	Читай, думай, пиши. Рабочая тетрадь по русскому языку. 4 класс. В 2-х ч. Ч. 2. (для обучающихся с интеллектуальными нарушениями)	4	146.300000000000011
1246	Инденбаум Е. Л., Позднякова И. О.	Русский язык. Тетрадка-плюс. 1 класс	1	252.449999999999989
1247	\N	\N	\N	\N
1248	\N	\N	\N	\N
1249	Головкина Т. М.	Чтение. Рабочая тетрадь. 2 класс. В 2 частях. Часть 1 (для обучающихся с интеллектуальными нарушениями)	2	200.199999999999989
1250	Головкина Т. М.	Чтение. Рабочая тетрадь. 2 класс. В 2 частях. Часть 2 (для обучающихся с интеллектуальными нарушениями)	2	200.199999999999989
1251	\N	\N	\N	\N
1252	\N	\N	\N	\N
1253	\N	\N	\N	\N
1254	Алышева Т. В., Эк В. В.	Математика. Рабочая тетрадь. 1 дополнительный класс. В 2 частях. Часть 1 (для обучающихся с интеллектуальными нарушениями)	0 - 1	209.110000000000014
1255	Алышева Т. В., Эк В. В.	Математика. Рабочая тетрадь. 1 дополнительный класс. В 2 частях. Часть 2 (для обучающихся с интеллектуальными нарушениями)	0 - 1	209.110000000000014
1256	Алышева Т. В.	Математика. Рабочая тетрадь. 1 класс. В 2  частях. Часть1 (для обучающихся с интеллектуальными нарушениями)	1	209
1257	Алышева Т. В.	Математика. Рабочая тетрадь. 1 класс. В 2 частях. Часть 2  (для обучающихся с интеллектуальными нарушениями)	1	209
1258	Алышева Т. В.	Математика. Рабочая тетрадь. 2 класс. В 2 ч. Ч. 1 (для обучающихся с интеллектуальными нарушениями)	2	209
1259	Алышева Т. В.	Математика. Рабочая тетрадь. 2 класс. В 2 ч. Ч. 2 (для обучающихся с интеллектуальными нарушениями)	2	209
1260	Алышева Т. В., Эк В. В.	Математика. Рабочая тетрадь. 3 класс. Ч. 1. (для обучающихся с интеллектуальными нарушениями)	3	209
1261	Алышева Т. В., Эк В. В.	Математика. Рабочая тетрадь. 3 класс. Ч. 2. (для обучающихся с интеллектуальными нарушениями)	3	209
1262	Перова М. Н., Яковлева И. М.	Математика. Рабочая тетрадь. 4 класс. В 2 частях. Часть1 (для обучающихся с интеллектуальными нарушениями)	4	157.849999999999994
1263	Перова М. Н., Яковлева И. М.	Математика. Рабочая тетрадь. 4 класс. В 2 частях. Часть 2 (для обучающихся с интеллектуальными нарушениями)	4	157.849999999999994
1264	Гостар А.А.	Математика. Тетрадка-плюс. 1 класс	1	164.449999999999989
1265	\N	\N	\N	\N
1266	\N	\N	\N	\N
1267	Рудченко Т. А., Семёнов А. Л.	Информатика. Рабочая тетрадь. 1 класс.	1	151.800000000000011
1268	Рудченко Т. А., Семёнов А.Л.	Информатика.Тетрадь проектов.1 класс.	1	128.150000000000006
1269	Рудченко Т. А., Семёнов А. Л.	Информатика. Рабочая тетрадь. 2 класс.	2	151.800000000000011
1270	Рудченко Т. А., Семёнов А. Л.	Информатика. Тетрадь проектов. 2 класс.	2	128.150000000000006
1271	Рудченко Т. А., Семёнов А. Л.	Информатика. Рабочая тетрадь. 3 класс.	3	151.800000000000011
1272	Рудченко Т. А., Семёнов А.Л.	Информатика. Тетрадь проектов. 3 класс.	3	128.150000000000006
1273	Рудченко Т. А., Семёнов А. Л.	Информатика. Рабочая тетрадь. 4 класс.	4	151.800000000000011
1274	Рудченко Т. А., Семёнов А. Л.	Информатика. Тетрадь проектов. 4 класс.	4	128.150000000000006
1275	Семёнов А.Л., Рудченко Т. А.	Информатика. Рабочая тетрадь. 3 класс. Ч. 1.	3	149.050000000000011
1276	Семёнов А.Л., Рудченко Т. А.	Информатика. Тетрадь проектов. 3 класс. Часть 1.	3	132
1277	Семёнов А.Л., Рудченко Т. А.	Информатика.  Тетрадь проектов. 3-4 классы. Ч.2.	 3 - 4	132
1278	Семёнов А. Л., Рудченко Т. А.	Информатика. Рабочая тетрадь. 3-4 классы. Ч. 2.	 3 - 4	149.050000000000011
1279	Семёнов А. Л., Рудченко Т. А.	Информатика. Рабочая тетрадь. 4 класс. Ч.3.	4	149.050000000000011
1280	Семёнов А. Л., Рудченко Т. А.	Информатика. Тетрадь проектов. 4 класс. Ч. 3.	4	132
1281	\N	\N	\N	\N
1282	\N	\N	\N	\N
1283	Матвеева Н. Б., Попова М. А.	Мир природы и человека. Рабочая тетрадь. 1 класс  (для обучающихся с интеллектуальными нарушениями)	1	233.310000000000002
1284	Матвеева Н. Б., Попова М. А.	Мир природы и человека. Рабочая тетрадь. 2 класс (для обучающихся с интеллектуальными нарушениями)	2	233.310000000000002
1285	Матвеева Н. Б., Попова М. А.	Мир природы и человека. Рабочая тетрадь. 3 класс. (для обучающихся с интеллектуальными нарушениями)	3	233.310000000000002
1286	Матвеева Н. Б., Попова М. А.	Мир природы и человека. Рабочая тетрадь. 4 класс. (для обучающихся с интеллектуальными нарушениями)	4	233.310000000000002
1287	Инденбаум Е. Л.	Окружающий мир. Тетрадка-плюс. 1 класс.	1	242.550000000000011
1288	\N	\N	\N	\N
1289	\N	\N	\N	\N
1290	Кузнецова Л. А.	Технология. Ручной труд. 1 класс. Рабочая тетрадь. В 2 частях. Часть. 1 (для обучающихся с интеллектуальными нарушениями)	1	150.699999999999989
1291	Кузнецова Л. А.	Технология. Ручной труд. 1 класс. Рабочая тетрадь. В 2 частях. Ч. 2. (для обучающихся с интеллектуальными нарушениями)	1	150.699999999999989
1292	Кузнецова Л. А.	Технология. Ручной труд. Рабочая тетрадь. 2 класс( для обучающихся с интеллектуальными нарушениями)	2	185.680000000000007
1293	Кузнецова Л. А.	Технология. Ручной труд. Рабочая тетрадь. 3 класс (для обучающихся с интеллектуальными нарушениями).	3	150.699999999999989
1294	Кузнецова Л. А.	Технология. Ручной труд. Рабочая тетрадь. 4 класс (для обучающихся с интеллектуальными нарушениями)	4	150.699999999999989
1295	\N	\N	\N	\N
1298	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Методическое пособие. 1 класс	1	234.300000000000011
1299	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Рабочая тетрадь. 2 класс	2	169.400000000000006
1300	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Методическое пособие. 2 класс	2	234.300000000000011
1301	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Рабочая тетрадь. 3 класс	3	169.400000000000006
1302	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Методическое пособие. 3 класс	3	234.300000000000011
1303	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Рабочая тетрадь. 4 класс	4	169.400000000000006
1304	Прудникова Е. А., Волкова Е. И.	Шахматы в школе. Методическое пособие. 4 класс	4	234.300000000000011
1305	\N	\N	\N	\N
1306	\N	\N	\N	\N
1307	\N	\N	\N	\N
1308	\N	\N	\N	\N
1309	Якубовская Э. В., Шишкова М. И., Бгажнокова И. М.	Рабочие программы к предметным линиям для обучающихся с интеллектуальными нарушениями. 5-9 кл. Русский язык. Чтение. Мир истории. История Отечества	5 - 9	243.099999999999994
1310	Якубовская Э. В., Галунчикова Н. Г., Коршунова Я. В.	Русский язык. Рабочая тетрадь. 5 класс. (для обучающихся с интеллектуальными нарушениями)	5	192.5
1311	Якубовская Э. В., Галунчикова Н. Г., Коршунова Я. В.	Русский язык. Рабочая тетрадь. 6 класс. (для обучающихся с интеллектуальными нарушениями)	6	192.5
1312	Якубовская Э. В., Галунчикова Н. Г., Коршунова Я. В.	Русский язык. Рабочая тетрадь. 7 класс. (для обучающихся с интеллектуальными нарушениями)	7	192.5
1313	Галунчикова Н. Г., Якубовская Э. В.	Русский язык. Рабочая тетрадь 1. Состав слова. Пособие для учащихся 5-9 кл. (для обучающихся с интеллектуальными нарушениями).	5 - 9	364.100000000000023
1314	Галунчикова Н. Г., Якубовская Э. В.	Русский язык. Рабочая тетрадь 2. Имя существительное. Пособие для учащихся 5-9 кл. (для обучающихся с интеллектуальными нарушениями).	5 - 9	364.100000000000023
1315	Галунчикова Н. Г., Якубовская Э. В.	Русский язык. Рабочая тетрадь 3. Имя прилагательное. Пособие для учащихся 5-9 кл. (для обучающихся с интеллектуальными нарушениями).	5 - 9	364.100000000000023
1316	Галунчикова Н. Г., Якубовская Э. В.	Русский язык. Рабочая тетрадь 4. Глагол. Пособие для учащихся 5-9 кл. (для обучающихся с интеллектуальными нарушениями).	5 - 9	364.100000000000023
1317	\N	\N	\N	\N
1318	\N	\N	\N	\N
1319	\N	\N	\N	\N
1320	Бгажнокова И. М., Смирнова Л. В., Фёдорова Е. Н.	Мир истории. Рабочая тетрадь. 6 класс (для обучающихся с интеллектуальными нарушениями)	6	240.900000000000006
1321	Бгажнокова И. М., Смирнова Л. В.        	История Отечества. Рабочая тетрадь. 7 класс  (для обучающихся с интеллектуальными нарушениями)            	7	242.550000000000011
1322	\N	\N	\N	\N
1323	\N	\N	\N	\N
1324	Лифанова Т. М., Соломина Е. Н., Шевырёва И. В. И др.	Рабочие программы к предметным линиям для обучающихся с интеллектуальными нарушениями. 5-9 классы. Природоведение. Биология. География	5 - 9	288.75
1325	Лифанова Т. М.	География. Рабочая тетрадь. 6 класс. (для обучающихся с интеллектуальными нарушениями)	6	315.149999999999977
1326	Лифанова Т. М.	География. Рабочая тетрадь. 7 класс. (для обучающихся с интеллектуальными нарушениями)	7	312.399999999999977
1327	Лифанова Т. М.	География. Рабочая тетрадь. 8 класс. (для обучающихся с интеллектуальными нарушениями).	8	315.149999999999977
1328	Лифанова Т. М.	География. Рабочая тетрадь. 9 класс (для обучающихся с интеллектуальными нарушениями)	9	311.850000000000023
1329	\N	\N	\N	\N
1330	\N	\N	\N	\N
1331	Чумаченко В.В., Горяев А.П.	Основы финансовой грамотности. Методические рекомендации. 8-9 классы	8 - 11	117.150000000000006
1332	Чумаченко В.В., Горяев А.П.	Основы Финансовой грамотности. Рабочая тетрадь  8-9 классы	8 - 11	67.0999999999999943
1333	\N	\N	\N	\N
1334	\N	\N	\N	\N
1335	\N	\N	\N	\N
1336	Алышева Т. В., Антропов А. П., Соловьева Д. Ю.	Рабочие программы к предметным линиям для обучающихся с интеллектуальными нарушениями. 5-9 классы. Математика	5 - 9	214.169999999999987
1337	Перова М. Н., Яковлева И. М.	Математика. Рабочая тетрадь. 5 класс. (для обучающихся с интеллектуальными нарушениями)	5	272.800000000000011
1338	Перова М. Н., Яковлева И. М.	Математика. Рабочая тетрадь. 6 класс. (для обучающихся с интеллектуальными нарушениями)	6	269.5
1339	Алышева Т. В.	Рабочая тетрадь по математике для учащихся 7 класса (для обучающихся с интеллектуальными нарушениями)	7	269.5
1340	Алышева Т. В.	Математика. Рабочая тетрадь. 8 класс. (для обучающихся с интеллектуальными нарушениями)	8	272.800000000000011
1341	\N	\N	\N	\N
1343	Лифанова Т. М., Дубровина О. А.	Природоведение. Рабочая тетрадь. 5 класс. (для обучающихся с интеллектуальными нарушениями)	5	289.850000000000023
1344	Клепинина З. А.	Биология. Растения. Бактерии. Грибы. Рабочая тетрадь для учащихся 7 класса (для обучающихся с интеллектуальными нарушениями)	7	202.949999999999989
1345	Никишов А. И.	Биология. Животные. Рабочая тетрадь. 8 класс (для обучающихся с интеллектуальными нарушениями)	8	202.949999999999989
1346	Соломина Е. Н., Шевырева Т. В.	Биология. Человек. Рабочая тетрадь. 9 класс. (для обучающихся с интеллектуальными нарушениями)	9	202.949999999999989
1347	\N	\N	\N	\N
1348	\N	\N	\N	\N
1349	\N	\N	\N	\N
1350	Ковалёва Е. А.	Технология. Сельскохозяйственный труд. Рабочая тетрадь. 8 класс. (для обучающихся с интеллектуальными нарушениями)	8	170.5
\.


--
-- Data for Name: book_prosvet_vu; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_prosvet_vu (id, author, name, grade, price) FROM stdin;
1	Лагутенко О. И., Алексашина И. Ю.	Что мы знаем про то, что нас окружает? 1-4 классы. В 2-х ч.. Ч.1	1 - 4	287.100000000000023
2	Лагутенко О.И., Алексашина И.Ю.	Что мы знаем про то, что нас окружает? 1-4 классы. В 2-х ч.. Ч.2	1 - 4	287.100000000000023
3	Прасолов В. В.	Решение задач повышенной сложности по геометрии. 7-9 классы.	7 - 9	345.399999999999977
4	Наместникова М. С.	Информационная безопасность или на расстоянии одного вируса. 7-9 классы.  (совместно с Лабораторией Касперского)	7 - 9	291.5
5	Марко А. А., Смирнов А. В.	Исследовательские и проектные работы по физике. 5-9 классы	5 - 9	286
6	Приорова  Е. М.	Экологическая культура и здоровье человека. Практикум.5-7 классы.	5 - 7 	379.5
7	Леонтович А. В., Смирнов И. А., Саввичев А. С.	Проектная мастерская. 5-9 классы.	5 - 9	299.199999999999989
8	Смирнов И. А., Мальцевская Н. В.	Исследовательские и проектные работы по биологии. 5-9 классы.	5 - 9	265.100000000000023
9	Пеньков А. М. , Покровский О. В.	Траектория личного качества жизни. 8-9 классы.	8 - 9	379.5
10	Смирнова Н.Ю., Смирнов И.А.	Исследовательские и проектные работы по химии. 5-9 классы.	5 - 9	286
11	Лавренова Е.Б., Лаврентьева О.Н.	Финансовая грамотность. Современный мир	8 - 9	376.199999999999989
12	Толкачева С.В.	Финансовая грамотность. Цифровой мир	10 - 11	323.399999999999977
13	Зобнина М.Р.	Интернет-предпринимательство.	10 - 11	376.199999999999989
14	Половкова М. В., Носов А. В., Половкова Т. В. и др.	Индивидуальный проект. 10-11 классы.	10 - 11	336.600000000000023
15	Антипова Н.В., Даянова Л. К., Пахомов А. А. и др.	Биохимия. 10-11 классы.	10 - 11	306.899999999999977
16	Белоногов В.А., Белоногова Г.У.	Физическая химия. 10-11 классы.	10 - 11	314.600000000000023
17	Хомутова И.В.	Экологическая безопасность. Школьный экологический мониторинг.Практикум. 10-11 классы.	10 - 11	343.199999999999989
18	Пономарев В.Е., Алексаненкова  М.В., Завалько Н.А.	Медицинская статистика. 10-11 классы.	10 - 11	313.5
19	Горбенко Н.В.	Биотехнология. 10-11 классы.	10 - 11	306.899999999999977
20	Генералов Г. М.	Математическое моделирование. 10-11 классы.	10 - 11	336.600000000000023
21	Ковган Т.В.	Журналистика для начинающих. 8-9 классы.	8 - 9	363
22	Аплевич О.А., Жадько Н. В.	Школа волонтёра. 10-11 классы.	10 - 11	315.699999999999989
23	Ивашев М.Н., Ивашева А.В.	Основы фармакологии. 10-11 классы.	10 - 11	363
24	Леонов К.А.	Основы компьютерной анимации. 10-11 классы	10 - 11	374.990000000000009
25	Алексашина И.Ю., Лагутенко О.И.	Чему природа учит человека? 5-6 классы.	5 - 6	287.100000000000023
26	Алексашина И.Ю., Лагутенко О.И.	Как сохранить нашу планету? 7-9 классы.	7 - 9	287.100000000000023
27	Селиванов Н.Л.,\nСеливанова Т.В.	Основы инфографики.  1-4 классы.	1 - 4	312.399999999999977
28	Селиванов Н.Л.,\nСеливанова Т.В.	Основы инфографики. 5-7 классы.	5 - 7	312.399999999999977
29	Алёша Ермолин	Основы инфографики. 8-9 классы.	8 - 9	312.399999999999977
30	Волкова С.И.	Геометрия вокруг нас. 1-2 классы.	1 - 2	283.800000000000011
31	Волкова С.И.	Геометрия вокруг нас. 3-4 классы.	3 - 4	283.800000000000011
32	Глаголева Ю.И.	Развитие математических способностей. 1-2 классы.	1 - 2	283.800000000000011
33	Глаголева Ю.И.	Развивитие математических способностей. 3-4 классы.	3 - 4	283.800000000000011
34	Антошин М.К.	Грамотный читатель. Обучение смысловому чтению. 1-2 классы.	1 - 2	294.800000000000011
35	Антошин М.К.	Грамотный читатель. Обучение смысловому чтению.3-4 классы.	3 - 4	294.800000000000011
36	Светухин В.В., Явтушенко И.О.	Основы нанотехнологий. 10-11 классы.	10 - 11	336.600000000000023
37	Под ред. Панебратцева Ю.А., Тихомирова Г.В. 	Ядерная физика. 10-11 классы.	10 - 11	336.600000000000023
38	Ольчак А.С., Муравьёв С.Е.	Прикладная механика. 10-11 классы.	10 - 11	336.600000000000023
39	Белага В. В. Татюшкина О.Ю.	Основы системного анализа 10-11 классы.	10 - 11	336.600000000000023
40	Дежурный Л.И.	Оказание первой помощи. 10-11 классы.	10 - 11	336.600000000000023
41	Дежурный Л.И.	Основы практической медицины. 10-11 классы.	10 - 11	393.800000000000011
42	Под ред. Онищенко Г.Г.	Здорово быть здоровым. 5-6 лет	5 - 6 лет	240.900000000000006
43	Под ред. Онищенко Г.Г.	Здорово быть здоровым. 1-4 классы 	1 - 4	246.400000000000006
44	Под ред. Онищенко Г.Г.	Здорово быть здоровым. 5-6 классы	5 - 6	246.400000000000006
45	Под ред. Онищенко Г.Г.	Здорово быть здоровым. 7-9 классы	7 - 9	246.400000000000006
46	Под ред. Онищенко Г.Г.	Здорово быть здоровым. 10-11 классы	10 - 11	246.400000000000006
47	Соковня И. И.	Неболейка	1 - 4	338.800000000000011
48	Корнева Т. А., Корнев О. А.	Проектная мастерская. 1 класс	1	132
49	Арсеньева Т. Н.	Школа волонтёра. 5-7 классы	5 - 7	220
50	Долина Н. В.	Я - лидер нового поколения. Учебное пособие	10 - 11	352
51	Лапина И.К. , Сурдин В.Г.	Школа юного астронома. 3-4 классы.	3 - 4	459.800000000000011
52	Гомулина Н.Н., Сурдин В.Г.	Введение в астрономию. 5-7 классы.	5 - 7	287.100000000000023
53	Духанина И.В.	Латинский язык для медицинских классов. 10-11 классы.	10 - 11	341
\.


--
-- Data for Name: book_ruword; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_ruword (id, author, grade, name, price) FROM stdin;
1	\N	1	Кибирева Л. В., Клейнфельд О. А., Мелихова Г. И. Русский язык. Букварь (обучение грамоте).1 кл.	297
2	\N	1	Мелихова Г. И.. Прописи.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Букварь». 1 кл. В 4-х частях. 1ч.	77
3	\N	1	Мелихова Г. И.. Прописи.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Букварь». 1 кл. В 4-х частях. 2ч.	77
4	\N	1	Мелихова Г. И.. Прописи.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Букварь». 1 кл. В 4-х частях. 3ч.	77
5	\N	1	Мелихова Г. И.. Прописи.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Букварь». 1 кл. В 4-х частях. 4ч.	77
6	\N	1	Кибирева Л. В., Клейнфельд О. А., Мелихова Г. И. Русский язык.1 кл.	297
7	\N	1	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 1 кл.	132
8	\N	2	Кибирева Л. В., Клейнфельд О. А., Мелихова Г. И. Русский язык (в 2 частях).2 кл.	528
9	\N	2	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 2 кл. В 2 ч. 1ч.	110
10	\N	2	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 2 кл. В 2 ч. 2ч.	110
11	\N	3	Кибирева Л. В., Клейнфельд О. А., Мелихова Г. И. Русский язык (в 2 частях).3 кл.	528
12	\N	3	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 3 кл. В 2-х ч. 1ч.	110
13	\N	3	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 3 кл. В 2-х ч. 2ч.	110
14	\N	4	Кибирева Л. В., Клейнфельд О. А., Мелихова Г. И. Русский язык (в 2 частях).4 кл.	528
15	\N	4	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 4 кл. В 2 ч. 1ч.	110
16	\N	4	Мелихова Г. И.. Рабочая тетрадь.к учебнику Л.В. Кибиревой, О.А. Клейнфельд, Г.И. Мелиховой «Русский язык». 4 кл. В 2 ч. 2ч.	110
17	\N	1	Кибирева Л. В., Мелихова Г. И., Склярова В. Л. Русский родной язык. Учебное пособие.1 кл.	297
18	\N	2	Кибирева Л. В., Мелихова Г. И., Склярова В. Л. Русский родной язык. Учебное пособие.2 кл.	297
19	\N	3	Кибирева Л. В., Мелихова Г. И., Склярова В. Л. Русский родной язык. Учебное пособие.3 кл.	297
20	\N	4	Кибирева Л. В., Мелихова Г. И., Склярова В. Л. Русский родной язык. Учебное пособие.4 кл.	297
21	\N	1	Меркин Г. С., Меркин Б. Г., Болотова С. А. Под ред. Меркина Г. С. Литературное чтение.1 кл.	319
22	\N	1	Болотова С. А.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 1 кл. В 2-х частях. 1ч.	110
23	\N	1	Болотова С. А.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 1 кл. В 2-х частях. 2ч.	110
24	\N	2	Меркин Г. С., Меркин Б. Г., Болотова С. А. Под ред. Меркина Г. С. Литературное чтение (в 2 частях).2 кл.	638
25	\N	2	Меркин Г. С., Меркин Г. С.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 2 кл. В 2 ч. 1ч.	110
26	\N	2	Меркин Г. С.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 2 кл. В 2 ч. 2ч.	110
27	\N	3	Меркин Г. С., Меркин Б. Г., Болотова С. А./  Под ред. Меркина Г. С. Литературное чтение (в 2 частях).3 кл.	638
28	\N	3	Меркин Г. С.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 3 кл. В 2-х частях. 1ч.	110
29	\N	3	Меркин Г. С.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 3 кл. В 2-х частях. 2ч.	110
30	\N	4	Меркин Г. С., Меркин Б. Г., Болотова С. А./  Под ред. Меркина Г. С. Литературное чтение (в 2 частях).4 кл.	638
31	\N	4	Меркин Г. С.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 4 кл. В 2-х частях. 1ч.	110
32	\N	4	Меркин Г. С.. Рабочая тетрадь.к учебнику Г.С. Меркина, Б.Г. Меркина, С.А. Болотовой «Литературное чтение». 4 кл. В 2-х частях. 2ч.	110
33	\N	2	Комарова Ю. А., Ларионова И. В.  Английский язык.2 кл.	627
34	\N	2	Комарова Ю. А., Сазонова А.Н.. Занимательные прописи.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 2 кл.	187
35	\N	2	Комарова Ю. А., Ларионова И. В., Перретт Ж. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 2 кл.	231
36	\N	2	Комарова Ю. А., Малова О.В.,Пособие по грамматике к учебнику Ю.А. Комаровой, И.В. Ларионовой и др. «Английский язык».2 кл.	330
37	\N	3	Комарова Ю. А., Ларионова И. В.  Английский язык.3 кл.	627
38	\N	3	Комарова Ю. А., Ларионова И. В., Перретт Ж. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 3 кл.	231
39	\N	3	Комарова Ю. А., Малова О.В.,Пособие по грамматике к учебнику Ю.А. Комаровой, И.В. Ларионовой и др. «Английский язык».3 кл.	330
40	\N	4	Комарова Ю. А., Ларионова И. В. Английский язык.4 кл.	627
41	\N	4	Комарова Ю. А., Малова О.В.,Пособие по грамматике к учебнику Ю.А. Комаровой, И.В. Ларионовой и др. «Английский язык».4 кл., В 2 ч. Ч.1	330
42	\N	4	Комарова Ю. А., Малова О.В.,Пособие по грамматике к учебнику Ю.А. Комаровой, И.В. Ларионовой и др. «Английский язык».4 кл., В 2 ч. Ч.2	330
43	\N	4	Комарова Ю. А., Ларионова И. В., Перретт Ж. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 4 кл.	231
44	\N	1	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н., Математика. (в 2 частях).1 кл.	704
45	\N	2	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н., Математика. (в 2 частях).2 кл.	704
46	\N	3	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н., Математика. (в 2 частях).3 кл.	704
47	\N	4	Аргинская И.И., Бененсон Е.П., Итина Л.С., Кормишина С.Н., Математика. (в 2 частях).4 кл.	704
48	\N	1	Самкова В. А., Романова Н. И. Окружающий мир.1 кл.	319
49	\N	1	Самкова В. А., Новикова С. Н.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир».1 кл.	110
50	\N	1	Самкова В. А., Романова Н. И. Окружающий мир (в 2 частях).2 кл.	528
51	\N	2	Гринёва Е. А., Самкова В. А., Романова Н. И.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир». 2 кл. В 2-х частях. 1ч.	110
52	\N	2	Гринёва Е. А., Самкова В. А., Романова Н. И.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир». 2 кл. В 2-х частях. 2ч.	110
53	\N	3	Самкова В. А., Романова Н. И. Окружающий мир (в 2 частях).3 кл.	528
54	\N	3	Самкова В. А., Романова Н. И., Назаренко Д. Д.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир». 3 кл. В 2-х частях. 1ч.	110
55	\N	3	Самкова В. А., Романова Н. И., Назаренко Д. Д.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир». 3 кл. В 2-х частях. 2ч.	110
56	\N	4	Самкова В. А., Романова Н. И. Окружающий мир (в 2 частях).4 кл.	528
57	\N	4	Самкова В. А., Макеева А.Г., Романова Н. И.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир». 4 кл. В 2-х частях. 1ч.	110
58	\N	4	Самкова В. А., Макеева А.Г., Романова Н. И.. Рабочая тетрадь.к учебнику В.А. Самковой, Н.И. Романовой «Окружающий мир». 4 кл. В 2-х частях. 2ч.	110
59	\N	4	Сахаров А. Н., Кочегаров К. А., / Под ред. Сахарова А. Н. Основы религиозных культур и светской этики. Основы религиозных культур народов России.4 кл.	440
60	\N	4	Кочегаров К. А.. Рабочая тетрадь.к учебнику А.Н. Сахарова, К.А. Кочегарова «Основы религиозных культур народов России». 4 кл.	143
61	\N	4	Студеникин М. Т. Основы религиозных культур и светской этики. Основы светской этики.4 кл.	440
62	\N	4	Студеникин М. Т.. Рабочая тетрадь.к учебнику М.Т. Студеникина  «Основы религиозных культур и светской этики.Основы светской этики». 4 кл.	143
63	\N	4	Бородина А. В. Основы религиозных культур и светской этики. Основы православной культуры.4 кл.	440
64	\N	4	Бородина А. В.. Рабочая тетрадь.к учебнику А.В. Бородиной «Основы религиозных культур и светской этики. Основы православной культуры». 4 кл.	143
65	\N	4	Янушкявичене О.Л., Васечко Ю.С., протоиерей Виктор Дорофеев, Яшина О.Н. Основы религиозных культур и светской этики. Основы православной культуры.4 кл.	440
66	\N	4	Янушкявичене О.Л., Комарова Т. В., Теплова Е. Ф., Васечко Ю.С.. Рабочая тетрадь.к учебнику О.Л. Янушкявичене, Ю.С. Васечко, протоиерея Виктора Дорофеева, О.Н. Яшиной «Основы православной культуры». 4 кл.	143
103	\N	8	Быстрова Е. А., Кибирева Л. В. и др. / Под ред. Быстровой Е. А. Русский язык (в 2 частях).8 кл.	594
67	\N	1	Савенкова Л. Г., Ермолинская Е.А., Селиванова Т. В., Селиванов Н. Л. / Под ред. Савенковой Л. Г. Изобразительное искусство.1 кл.	297
68	\N	1	Савенкова Л. Г., Ермолинская Е. А.. Рабочая тетрадь.к учебнику Л.Г. Савенковой, Е.А. Ермолинской ,Т.В. Селивановой Н.Л. Селиванова «Изобразительное искусство». 1 кл.	132
69	\N	2	Савенкова Л. Г., Ермолинская Е.А., Селиванова Т. В., Селиванов Н. Л. / Под ред. Савенковой Л. Г. Изобразительное искусство.2 кл.	297
70	\N	2	Савенкова Л. Г., Ермолинская Е. А.. Рабочая тетрадь.к учебнику Л.Г. Савенковой, Е.А. Ермолинской ,Т.В. Селивановой Н.Л. Селиванова «Изобразительное искусство». 2 кл.	132
71	\N	3	Савенкова Л. Г., Ермолинская Е.А., Селиванова Т. В., Селиванов Н. Л. / Под ред. Савенковой Л. Г. Изобразительное искусство.3 кл.	297
72	\N	3	Савенкова Л. Г., Ермолинская Е. А.. Рабочая тетрадь.к учебнику Л.Г. Савенковой, Е.А. Ермолинской ,Т.В. Селивановой Н.Л. Селиванова «Изобразительное искусство». 3 кл.	132
73	\N	4	Савенкова Л. Г., Ермолинская Е.А., Селиванова Т. В., Селиванов Н. Л.,/ Под ред. Савенковой Л. Г. Изобразительное искусство.4 кл.	297
74	\N	4	Савенкова Л. Г., Ермолинская Е.А.. Рабочая тетрадь.к учебнику Л.Г. Савенковой, Е.А. Ермолинской ,Т.В. Селивановой Н.Л. Селиванова «Изобразительное искусство». 4 кл.	132
75	\N	1	Огерчук Л. Ю. Технология.1 кл.	286
76	\N	1	Огерчук Л. Ю.. Рабочая тетрадь.к учебнику Л. Ю. Огерчук «Технология». 1 кл.	143
77	\N	2	Огерчук Л. Ю. Технология.2 кл.	330
78	\N	2	Огерчук Л. Ю.. Рабочая тетрадь.к учебнику Л. Ю. Огерчук «Технология». 2 кл.	143
79	\N	3	Огерчук Л. Ю. Технология.3 кл.	330
80	\N	3	Болотова С. А., Басаримова С.А.. Рабочая тетрадь.к учебнику Л. Ю. Огерчук «Технология». 3 кл.	143
81	\N	4	Огерчук Л. Ю. Технология (в 2 частях).4 кл.	352
82	\N	4	Болотова С. А., Басаримова С.А.. Рабочая тетрадь.к учебнику Л. Ю. Огерчук «Технология». 4 кл.	143
83	\N	 3-3	Барышников В. Я., Белоусов А. И. / Под ред. Виленского М. Я. Физическая культура.1-2 кл.	308
84	\N	 3-4	Барышников В. Я., Белоусов А. И. / Под ред. Виленского М. Я. Физическая культура.3-4 кл.	330
85	\N	1	Смирнова О. В., Песняева Н. А.,Комплексная проверочная работа* (1 уровень).1 кл.	88
86	\N	1	Смирнова О. В.,Комплексная проверочная работа**(2 уровень).1 кл.	88
87	\N	2	Смирнова О. В.,Комплексная проверочная работа.2 кл.	99
88	\N	3	Песняева Н. А.,Комплексная проверочная работа.3 кл.	99
89	\N	4	Песняева Н. А.,Комплексная проверочная работа.4 кл.	99
90	\N	5	Быстрова Е. А., Кибирева Л. В. и др. / Под ред. Быстровой Е. А. Русский язык (в 2 частях).5 кл.	594
91	\N	5	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 5 кл. В 4-х частях. 1ч.	66
92	\N	5	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 5 кл. В 4-х частях. 2ч.	66
93	\N	5	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 5 кл. В 4-х частях. 3ч.	66
94	\N	5	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 5 кл. В 4-х частях. 4ч.	66
95	\N	6	Быстрова Е. А., Кибирева Л. В. и др. / Под ред. Быстровой Е. А. Русский язык (в 2 частях).6 кл.	594
96	\N	6	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 6 кл. В 4-х частях. 1ч.	99
97	\N	6	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 6 кл. В 4-х частях. 2ч.	99
98	\N	6	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 6 кл. В 4-х частях. 3ч.	99
99	\N	6	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 6 кл. В 4-х частях. 4ч.	99
100	\N	7	Быстрова Е. А., Кибирева Л. В. и др. / Под ред. Быстровой Е. А. Русский язык (в 2 частях).7 кл.	594
101	\N	7	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 7 кл. В 2-х частях. 1ч.	165
102	\N	7	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 7 кл. В 2-х частях. 2ч.	165
104	\N	8	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 8 кл. В 2-х частях. 1ч.	165
105	\N	8	Склярова В. Л., Фомина Т. В.. Рабочая тетрадь.к учебнику «Русский язык» под редакцией Е.А. Быстровой. 8 кл. В 2-х частях. 2ч.	165
106	\N	9	Быстрова Е. А., Кибирева Л. В. и др. / Под ред. Быстровой Е. А. Русский язык (в 2 частях).9 кл.	594
107	\N	5	Воителева Т. М., Марченко О.Н., Текучёва И.В., Смирнова Л.Г. Русский родной язык. Учебное пособие.5 кл.	330
108	\N	6	Воителева Т. М., Марченко О.Н., Шамшин И. В., Смирнова Л.Г. Русский родной язык. Учебное пособие.6 кл.	330
109	\N	7	Воителева Т. М., Марченко О.Н., Шамшин И. В., Смирнова Л.Г. Русский родной язык. Учебное пособие.7 кл.	330
110	\N	8	Воителева Т. М., Марченко О.Н., Шамшин И. В., Смирнова Л.Г. Русский родной язык. Учебное пособие.8 кл.	330
111	\N	9	Воителева Т. М., Марченко О.Н., Шамшин И. В., Смирнова Л.Г. Русский родной язык. Учебное пособие.9 кл.	330
112	\N	5	Гулин А. В., Романова А. Н. Литература (в 2 частях).5 кл.	704
113	\N	5	Потехина Л.Л.  Рабочая тетрадь.к учебнику А.В. Гулина, А.Н. Романовой «Литература». 5 кл.	132
114	\N	6	Гулин А. В., Романова А. Н. Литература (в 2 частях).6 кл.	704
115	\N	6	Потехина Л.Л.  Романова А. Н.. Рабочая тетрадь.к учебнику А.В. Гулина, А.Н. Романовой «Литература». 6 кл.	132
116	\N	7	Гулин А. В., Романова А. Н. Литература (в 2 частях).7 кл.	704
117	\N	7	Романова А. Н.. Рабочая тетрадь.к учебнику А.В. Гулина, А.Н. Романовой «Литература». 7 кл.	132
118	\N	8	Гулин А. В., Романова А. Н. Литература (в 2 частях).8 кл.	704
119	\N	8	Романова А. Н.. Рабочая тетрадь.к учебнику А.В. Гулина, А.Н. Романовой «Литература». 8 кл.	132
120	\N	9	Гулин А. В., Романова А. Н., Фёдоров А. В. Литература (в 2 частях).9 кл.	704
121	\N	5	Меркин Г. С. Литература (в 2 частях).5 кл.	770
122	\N	5	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Меркина Г. С., Литература. (в 2 частях).5 кл. 1ч	121
123	\N	5	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Меркина Г. С., Литература. (в 2 частях).5 кл. 2ч	121
124	\N	6	Меркин Г. С. Литература (в 2 частях).6 кл.	770
125	\N	6	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Г.С. Меркина «Литература». 6 кл. В 2-х частях. 1ч.	121
126	\N	6	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Г.С. Меркина «Литература». 6 кл. В 2-х частях. 2ч.	121
127	\N	7	Меркин Г. С. Литература (в 2 частях).7 кл.	814
128	\N	7	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Г.С. Меркина «Литература». 7 кл. В 2-х частях. 1ч.	121
129	\N	7	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Г.С. Меркина «Литература». 7 кл. В 2-х частях. 2ч.	121
130	\N	8	Меркин Г. С. Литература (в 2 частях).8 кл.	814
131	\N	8	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Г.С. Меркина «Литература». 8 кл. В 2-х частях. 1ч.	121
132	\N	8	Соловьева Ф. Е.. Рабочая тетрадь.к учебнику Г.С. Меркина «Литература». 8 кл. В 2-х частях. 2ч.	121
133	\N	9	Зинин С. А., Сахаров В. И., Чалмаев В. А. Литература (в 2 частях).9 кл.	814
134	\N	5	Комарова Ю. А., Ларионова И. В. Английский язык.5 кл.	627
135	\N	5	Комарова Ю. А., Ларионова И. В., Стэннетт К., Маккей Б., Пелтерет Ш.. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 5 кл.	275
136	\N	6	Комарова Ю. А., Ларионова И. В. Английский язык.6 кл.	627
137	\N	6	Комарова Ю. А., Ларионова И. В., Билсборо К., Билсборо С.. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 6 кл.	275
138	\N	7	Комарова Ю. А., Ларионова И. В. Английский язык.7 кл.	638
139	\N	7	Комарова Ю. А., Ларионова И. В., Билсборо К.. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 7 кл.	275
140	\N	8	Комарова Ю. А., Ларионова И. В., Английский язык.8 кл.	638
141	\N	8	Комарова Ю. А., Ларионова И. В., Билсборо К., Билсборо С.. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 8 кл.	275
142	\N	9	Комарова Ю. А., Ларионова И. В. Английский язык.9 кл.	638
143	\N	9	Комарова Ю. А., Ларионова И. В., Билсборо К., Билсборо С.. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 9 кл.	275
267	\N	9	Гальскова Н.Д., Бартош Д.К., Харламова М.В., Немецкий язык.9 кл.	330
144	\N	6	Пчелов Е. В., Лукин П. В./Под ред. Петрова Ю. А. История России с древнейших времён до начала  XVI века.6 кл.	363
145	\N	6	Кочегаров К. А.. Рабочая тетрадь.к учебнику Е.В. Пчелова, П.В. Лукина «История России с древнейших времен до начала  XVI века». 6 кл.	132
146	\N	6	А/сост Пчелов Е. В.,. Атлас .История России с древнейших времен до начала XVI века. 6 кл.	77
147	\N	6	А/сост Пчелов Е. В.,. Контурные карты.История России с древнейших времен до начала XVI века. 6 кл.	33
148	\N	7	Пчелов Е. В., Лукин П. В./ Под ред. Петрова Ю. А. История России. XVI – XVII века.7 кл.	363
149	\N	7	Кочегаров К. А.. Рабочая тетрадь.к учебнику Е.В. Пчелова, П.В. Лукина «История России. XVI – XVII века». 7 кл.	132
150	\N	7	А/сост Лукин П.,. Атлас .История России XVI-ХVII века. 7 кл.	77
151	\N	7	А/сост Лукин П. В.,. Контурные карты.История России XVI-ХVII века. 7 кл.	33
152	\N	8	Захаров В.Н., Пчелов Е.В./ Под ред. Петрова Ю. А. История России. XVIII век.8 кл.	363
153	\N	8	Кочегаров К. А.. Рабочая тетрадь.к учебнику Е.В. Пчелова, В.Н. Захарова «История России. XVIII века». 8 кл.	132
154	\N	8	А/сост Хитров Д.,. Атлас .История России ХVIII век.. 8 кл.	77
155	\N	8	А/сост Хитров Д.,. Контурные карты.История России ХVIII век.. 8 кл.	33
156	\N	9	Соловьев К. А., Шевырёв А. П. /Под ред. Петрова Ю. А., История России.1801-1914.9 кл.	363
157	\N	9	Стафёрова Е.Л., Шевырёв А. П.. Рабочая тетрадь.к учебнику К.А. Соловьёва, А.П. Шевырёва «История России. 1801-1914 гг.». 9 кл.	132
158	\N	9	А/сост Шевырёв А. П.,. Атлас .История России.1801-1914гг.. 9 кл.	77
159	\N	9	А/сост Шевырёв А. П.,,. Контурные карты.к учебнику К.А. Соловьёва, А.П. Шевырёва «История России. 1801-1914 гг.». 9 кл.	33
160	\N	5	Никишин В.О., Стрелков А.В., Томашевич О.В., Михайловский Ф. А. Под ред. Карпова С.П. Всеобщая история. История Древнего мира.5 кл.	407
161	\N	5	Михайловский Ф. А.. Рабочая тетрадь.к учебнику Никишина В.О., Стрелкова  А.В., Томашевич О.В., Михайловского Ф. А. Всеобщая история. История Древнего мира.. 5 кл.	132
162	\N	6	Бойцов М. А., Шукуров Р. М. Под ред. Карпова С.П. Всеобщая история. История Средних веков.6 кл.	407
163	\N	6	Петрова Н. Г.. Рабочая тетрадь.к учебнику М.А. Бойцова, Р.М. Шукурова  Под ред. Карпова С.П. Всеобщая история. История Средних веков.. 6 кл.	132
164	\N	7	Дмитриева О.В. Под ред. Карпова С.П. Всеобщая история. История Нового времени. Конец XV-XVII век.7 кл.	407
165	\N	7	Стецюра Т. Д.. Рабочая тетрадь.к учебнику О.В. Дмитриевой «Всеобщая история.История нового времени.Конец XV — XVII век». 7 кл.	132
166	\N	8	Загладин Н. В., Белоусов Л.С., Пименова Л.А. Под ред. Карпова С.П. Всеобщая история. История Нового времени. XVIII век.8 кл.	429
167	\N	8	Стецюра Т. Д.. Рабочая тетрадь.к учебнику Н.В. Загладина, Л.С. Белоусова, Л.А. Пименовой  «Всеобщая история. История Нового времени. ХVIII век». 8 кл.	132
168	\N	9	Загладин Н. В., Белоусов Л.С. Под ред. Карпова С.П. Всеобщая история. История Нового времени.1801-1914.  9 кл.	429
169	\N	9	Лазарева А.В.. Рабочая тетрадь.к учебнику Н.В. Загладина «Всеобщая история. История Нового времени». 9 кл.	132
170	\N	6	Петрунин Ю.Ю., Логунова Л.Б., Рыбакова М.В., и др. Под ред Никонова В. А. Обществознание.6 кл.	374
171	\N	6	Хромова И. С.. Рабочая тетрадь.к учебнику  «Обществознание» под редакцией В.А.Никонова. 6 кл.	110
172	\N	7	Пушкарева Г.В., Судас Л.Г., и др. Под ред Никонова В. А. Обществознание.7 кл.	374
173	\N	7	Хромова И. С.. Рабочая тетрадь.к учебнику  «Обществознание» под редакцией В.А.Никонова. 7 кл.	110
174	\N	8	Лексин И.В., Черногор Н.Н. Под ред. Никонова В. А. Обществознание.8 кл.	374
175	\N	8	Хромова И. С.. Рабочая тетрадь.к учебнику  «Обществознание» под редакцией В.А.Никонова. 8 кл.	110
176	\N	9	Кудина М.В., Чурзина И.В. Под ред. Никонова В. А. Обществознание.9 кл.	374
177	\N	9	Хромова И. С.. Рабочая тетрадь.к учебнику  «Обществознание» под редакцией В.А.Никонова. 9 кл.	110
178	\N	5	Козлов В.В., Никитин А. А., Белоносов В.С. и др. / Под ред. Козлова В.В. и Никитина А.А. Математика.5 кл.	330
179	\N	5	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 5 кл. В 4-х частях. 1ч.	88
180	\N	5	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 5 кл. В 4-х частях. 2ч.	88
181	\N	5	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 5 кл. В 4-х частях. 3ч.	88
182	\N	5	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 5 кл. В 4-х частях. 4ч.	88
183	\N	6	Козлов В.В., Никитин А. А., Белоносов В.С. и др. / Под ред. Козлова В.В. и Никитина А.А. Математика.6 кл.	330
184	\N	6	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 6 кл. В 4-х частях. 1ч.	88
185	\N	6	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 6 кл. В 4-х частях. 2ч.	88
186	\N	6	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 6 кл. В 4-х частях. 3ч.	88
187	\N	6	Козлов В. В., Никитин А. А., Белоносов В. С.. Рабочая тетрадь.к учебнику «Математика» под ред. В.В. Козлова и А.А. Никитина. 6 кл. В 4-х частях. 4ч.	88
188	\N	7	Козлов В.В., Никитин А. А., Белоносов В.С., и др. / Под ред. Козлова В.В. и Никитина А.А. Математика: алгебра и геометрия.7 кл.	330
189	\N	7	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 7 кл. В 4-х частях. 3ч.	88
190	\N	7	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 7 кл. В 4-х частях. 1ч.	88
191	\N	7	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 7 кл. В 4-х частях. 2ч.	88
192	\N	7	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 7 кл. В 4-х частях. 4ч.	88
193	\N	8	Козлов В.В., Никитин А. А., Белоносов В.С., и др. / Под ред. Козлова В.В. и Никитина А.А. Математика: алгебра и геометрия.8 кл.	330
194	\N	8	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 8 кл. В 4-х частях. 1ч.	88
195	\N	8	Козлов В. В., Никитин А. А., Белоносов В. С., Мальцев А. А., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 8 кл. В 4-х частях. 2ч.	88
196	\N	8	Козлов В. В., Никитин А. А., Белоносов В. С., Мальцев А. А., Марковичев А. С., Михеев Ю.В., Фокин М. В.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 8 кл. В 4-х частях. 3ч.	88
197	\N	8	Козлов В. В., Никитин А. А., Белоносов В. С., Мальцев А. А., Марковичев А. С., Михеев Ю.В., Фокин М. В.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 8 кл. В 4-х частях. 4ч.	88
198	\N	9	Козлов В.В., Никитин А. А., Белоносов В.С., и др. / Под ред. Козлова В.В.,Никитина А.А. Математика: алгебра и геометрия.9 кл.	330
199	\N	9	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 9 кл. В 4-х частях. 1ч.	88
200	\N	9	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 9 кл. В 4-х частях. 2ч.	88
201	\N	9	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 9 кл. В 4-х частях. 3ч.	88
202	\N	9	Козлов В. В., Никитин А. А., Белоносов В. С., и др.. Рабочая тетрадь.к учебнику «Математика: алгебра и геометрия» под ред. В.В.Козлова и А.А.Никитина. 9 кл. В 4-х частях. 4ч.	88
203	\N	7	Изергин Э.Т. Физика.7 кл.	330
204	\N	8	Изергин Э.Т. Физика.8 кл.	330
205	\N	9	Изергин Э.Т. Физика.9 кл.	330
206	\N	5	Протоиерей Виктор Дорофеев, Янушкявичене О.Л. Основы духовно-нравственной культуры народов России. Основы православной культуры.5 кл.	440
207	\N	5	Янушкявичене О.Л., Комарова Т. В.. Рабочая тетрадь.к учебному изданию протоиерея Виктора Дорофеева, О.Л. Янушкявичене  «Основы православной культуры». 5 кл.	143
208	\N	6	Протоиерей Виктор Дорофеев, диакон Илья Кокин, Янушкявичене О.Л., Васечко Ю.С. Основы духовно-нравственной культуры народов России. Основы православной культуры.6 кл.	440
209	\N	6	Янушкявичене О.Л., Комарова Т. В.. Рабочая тетрадь.к учебному изданию протоиерея Виктора Дорофеева, диакона Ильи Кокина,О.Л. Янушкявичене,Ю.С. Васечко  «Основы православной культуры». 6 кл.	143
210	\N	5	Метлик И.В., Потаповская О.М. Основы духовно-нравственной культуры народов России. Православная культура. 5 кл.	484
211	\N	5	Комарова Т. В., Метлик И. В., под ред. Метлик И. В.. Рабочая тетрадь.Православная культура.Праздничный круг. 5 кл.	143
212	\N	5	Сахаров А. Н., Кочегаров К. А., Мухаметшин Р.М./ Под ред. Сахарова А. Н. Основы духовно-нравственной культуры народов России. Основы религиозных культур народов России.5 кл.	407
213	\N	5	Студеникин М.Т. Основы духовно-нравственной культуры народов России. Основы светской этики.5 кл.	407
214	\N	5	Студеникин М. Т.. Рабочая тетрадь.к учебнику М.Т. Студеникина  "Основы духовно-нравственной культуры народов России.Основы светской этики». 5 кл.	143
215	\N	5	Введенский Э.Л., Плешаков А. А. Естествознание. Введение в естественные науки.5 кл.	385
216	\N	5	Введенский Э. Л., Новикова С. Н.. Рабочая тетрадь.к учебнику Э.Л. Введенского, А.А. Плешакова «Естествознание. Введение в естественные науки». 5 кл.	55
217	\N	  10-11	Гольцова Н.Г., Шамшин И.В., Мищерина М.А. Русский язык (базовый уровень) (в 2 частях).10-11 кл.	770
218	\N	10	Зинин С.А., Сахаров В.И. Литература (базовый и углублённый уровни) (в 2 частях). 10 кл.	814
219	\N	11	Зинин С.А., Чалмаев В.А. Литература (базовый и углублённый уровни) (в 2 частях). 11 кл.	814
220	\N	10	Комарова Ю. А., Ларионова И. В. Английский язык (углублённый уровень).  10 кл.	649
221	\N	10	Комарова Ю. А., Ларионова И. В., Араванис Р., Кокрейн С. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 10 кл.,Углублённый уровень .	275
222	\N	10	Комарова Ю. А., Ларионова И. В., Араванис Р., Вассилакис Дж, Английский язык.(Базовый уровень.) Учебное пособие.10 кл.	583
223	\N	10	Комарова Ю. А., Ларионова И. В., Араванис Р., Кокрейн С. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 10 кл.,Базовый уровень .	275
224	\N	11	Комарова Ю.А., Ларионова И.В. Английский язык (углублённый уровень).   11 кл.	649
225	\N	11	Комарова Ю. А., Ларионова И. В., Араванис Р., Кокрейн С. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык». 11 кл.,Углублённый уровень .	275
226	\N	11	Комарова Ю. А., Ларионова И. В., Араванис Р., Кокрейн С, Английский язык.(Базовый уровень.) Учебное пособие.11 кл.	583
227	\N	11	Комарова Ю. А., Ларионова И. В., Стайлз Э.. Рабочая тетрадь.к учебнику Ю.А. Комаровой, И.В. Ларионовой, и др. «Английский язык» (Базовый уровень). 11 кл.	275
228	\N	10	Рахимбекова Л.Ш., Распертова С.Ю., Чечина Н.Ю., Дин Аньци / Под ред. Рахимбековой Л.Ш. Китайский язык. Второй иностранный (базовый уровень).10 кл.	561
229	\N	10	Рахимбекова Л.Ш., Распертова С.Ю., Чечина Н.Ю., Дин Аньци. Рабочая тетрадь.к учебному изданию Л.Ш.Рахимбековой,С.Ю. Распертовой, Н.Ю.Чечиной,Дин Аньци  «Китайский язык». 10 кл.,Базовый уровень.	286
230	\N	11	Рахимбекова Л.Ш., Распертова С.Ю., Чечина Н.Ю., Ци Шаоянь, Чжан Цзе / Под ред. Рахимбековой Л.Ш. Китайский язык. Второй иностранный ( базовый уровень ).11 кл.	561
231	\N	11	Чечина Н.Ю., Распертова С.Ю., Ван Дань. Рабочая тетрадь.к учебному изданию Л.Ш.Рахимбековой,С.Ю. Распертовой, Н.Ю.Чечиной, Ци Шаонянь, Чжан Цзе «Китайский язык. Второй иностранный язык». 11 кл.,Базовый уровень .	286
232	\N	 10-11	Загладин Н.В., Белоусов Л.С. Под ред. Карпова С.П. История. Всеобщая история. Новейшая история.1914г.-начало XXIв. (базовый и углублённый уровни).10-11 кл.	440
233	\N	10	Никонов В.А., Девятов С.В. Под ред. Карпова С.П. История. История России. 1914г.– начало XXI в. (базовый и углублённый уровни) (в 2 частях). 10 кл.	484
234	\N	 10-11	Сахаров А.Н., Загладин Н.В., Петров Ю.А. История (базовый и углублённый уровни) (в 2 частях). 10-11 кл.	858
235	\N	10	Загладин Н.В., Симония Н.А. История.Всеобщая история (углублённый уровень)10 кл.	440
236	\N	11	Загладин Н.В. История.Всеобщая история (углублённый уровень).11 кл.	440
237	\N	11	Кириллов В.В., Бравина М.А. / Под ред. Петрова Ю. А. История. История России до 1914 г. Повторительно-обобщающий курс (базовый и углублённый уровни).11 кл.	484
238	\N	 10-11	Домогацких Е.М., Алексеевский Н.И. География (базовый уровень) (в 2 частях).  10-11 кл.	770
239	\N	10	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География. ». 10 кл.,Базовый уровень. В 2-х частях. 1ч.	99
240	\N	10	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География. ». 10 кл.,Базовый уровень. В 2-х частях. 2ч.	99
241	\N	 10-11	А/сост Фетисов А.,Банников С. В.. Атлас. К учебнику "География". 10-11 кл.	176
242	\N	10	Домогацких Е.М., Алексеевский Н.И. География (углублённый уровень ).10 кл.	440
243	\N	10	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 10 кл.,Углубленный уровень. В 2-х частях. 1ч.	99
244	\N	10	Домогацких Е. М., Домогацких Е. М.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 10 кл.,Углубленный уровень. В 2-х частях. 2ч.	99
245	\N	10	А/сост Банников С. В.,Фетисов А.. Контурные карты.Экономическая и социальная география мира. Общая характеристика мира. 10 кл.	66
246	\N	11	А/сост Банников С. В.,Фетисов А.. Контурные карты.Экономическая и социальная география мира. Региональная характеристика мира. 11 кл.	66
247	\N	11	Домогацких Е.М., Алексеевский Н.И. География (углублённый уровень ).11 кл.	440
248	\N	11	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 11 кл.,Углубленный уровень. В 2-х частях. 1ч.	99
249	\N	11	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 11 кл.,Углубленный уровень. В 2-х частях. 2ч.	99
250	\N	10	Певцова Е. А., Право. Основы правовой культуры.(базовый и углублённый уровни) (в 2 частях).10 кл.	682
251	\N	11	Певцова Е.А. Право: основы правовой культуры (базовый и углублённый уровни)  (в 2 частях).11 кл.	682
252	\N	 10-11	Кудина М.В., Рыбакова М.В., Пушкарева Г.В., и др. Под ред. Никонова В. А. Обществознание (базовый уровень) (в 2 частях).10-11 кл.	770
253	\N	10	Козлов В.В., Никитин А. А., Белоносов В.С., и др. / Под ред. Козлова В.В. и Никитина А.А. Математика: алгебра и начала математического анализа, геометрия (базовый и углублённый уровни).10 кл.	385
254	\N	10	Козлов В. В., Никитин А. А.. Математический практикум.по курсу Математика: контрольно-измерительные материалы. 10 кл.	99
255	\N	10	Козлов В. В., Никитин А. А.. Сборник заданий и упражнений.к учебнику «Математика: алгебра и начала математического анализа, геометрия» под ред. В.В.Козлова и А.А.Никитина. 10 кл.	275
256	\N	11	Козлов В.В., Никитин А. А., Белоносов В.С., и др. / Под ред. Козлова В.В. и Никитина А.А. Математика: алгебра и начала математического анализа, геометрия ( базовый и углублённый уровни).11 кл.	385
257	\N	11	Козлов В. В., Никитин А. А., Белоносов В. С., и др., под ред. Козлова В. В.. Математический практикум.по курсу Математика: контрольно-измерительные материалы. 11 кл.	132
258	\N	 10-11	Андрюхина Т.В., Третьякова Н.В. /  Под ред. Виленского М. Я. Физическая культура (базовый уровень ).10-11 кл.	330
259	\N	10	Мамедов Н. М., Суравегина И. Т. Экология (базовый уровень).10 кл.	385
260	\N	10	А/сост Мамедов Н. М.,Суравегина И. Т.. Рабочая тетрадь.к учебнику Н.М. Мамедова, И.Т. Суравегиной «Экология». 10 кл.,Базовый уровень.	121
261	\N	11	Мамедов Н. М., Суравегина И. Т. Экология (базовый уровень).11 кл.	385
262	\N	11	А/сост Мамедов Н. М.,Суравегина И. Т.. Рабочая тетрадь.к учебнику Н.М. Мамедова, И.Т. Суравегиной «Экология». 11 кл.,Базовый уровень.	121
263	\N	5	Гальскова Н.Д., Бартош Д.К., Харламова М.В., Немецкий язык.5 кл.	330
264	\N	6	Гальскова Н.Д., Бартош Д.К., Харламова М.В., Немецкий язык.6 кл.	330
265	\N	7	Гальскова Н.Д., Демьяненко М.А., Сереброва О.Ф., Немецкий язык.7 кл.	330
266	\N	8	Гальскова Н.Д., Компаниец И.М., Компаниец Л.В., Немецкий язык.8 кл.	330
268	\N	5	Плешаков А. А., Введенский Э. Л., Биология.Введение в биологию.Учебное пособие.5 кл.	253
269	\N	5	Новикова С. Н., Романова Н. И.. Рабочая тетрадь.к учебнику А.А. Плешакова, Э.Л. Введенского «Биология.Введение в биологию». 5 кл.	110
270	\N	6	Исаева Т. А., Романова Н. И., Биология. Учебное пособие. 6 кл.	374
271	\N	6	Исаева Т. А., Романова Н. И.. Рабочая тетрадь.к учебнику Т.А. Исаевой, Н.И. Романовой «Биология». 6 кл.	110
272	\N	6	Амахина Ю. В.. Тетрадь для лабораторных работ.к учебнику Т.А. Исаевой, Н.И. Романовой «Биология». 6 кл.	110
273	\N	7	Тихонова Е. Т., Романова Н. И., Биология. Учебное пособие 7 кл.	374
274	\N	7	Тихонова Е. Т., Романова Н. И.. Рабочая тетрадь.к учебнику Е.Т. Тихоновой, Н.И. Романовой «Биология». 7 кл.	110
275	\N	7	Амахина Ю. В.. Тетрадь для лабораторных работ.к учебнику Е.Т. Тихоновой, Н.И. Романовой «Биология». 7 кл.	110
276	\N	8	Жемчугова М. Б., Романова Н. И., Биология. Учебное пособие. 8 кл.	374
277	\N	8	Жемчугова М. Б., Романова Н. И.. Рабочая тетрадь.к учебнику М.Б. Жемчуговой, Н.И. Романовой «Биология». 8 кл.	110
278	\N	8	Амахина Ю. В.. Тетрадь для лабораторных работ.к учебнику М.Б. Жемчуговой, Н.И. Романовой «Биология». 8 кл.	110
279	\N	9	Данилов С. Б., Романова Н. И., Владимирская А. И., Биология.Учебное пособие.9 кл.	374
280	\N	9	Новикова С. Н., Данилов С. Б.. Рабочая тетрадь.к учебнику С.Б. Данилова, Н.И. Романовой, А.И. Владимирской «Биология». 9 кл.	110
281	\N	9	Амахина Ю. В.. Тетрадь для лабораторных работ.к учебнику С.Б. Данилова, Н.И. Романовой, А.И. Владимирской «Биология». 9 кл.	110
282	\N	5	Домогацких Е. М., Введенский Э. Л., Плешаков А. А., География. Введение в географию. Учебное пособие 5 кл.	396
283	\N	5	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Э.Л. Введенского, А.А. Плешакова «География. Введение в географию». 5 кл.	132
284	\N	5	Молодцов Д. В.. Тетрадь-практикум.к учебнику Е.М. Домогацких, Э.Л. Введенского, А.А. Плешакова «География. Введение в географию». 5 кл.	121
285	\N	 5-6	А/сост Банников С. В.,Домогацких Е. М.. Атлас .География. Введение в географию. Физическая география.. 5-6 кл.	121
286	\N	5	А/сост Банников С. В.,Домогацких Е. М.. Контурные карты.Введение в географию. 5 кл.	66
287	\N	6	Домогацких Е. М., Алексеевский Н. И. География.Учебное пособие. 6 кл.	418
288	\N	6	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 6 кл.	132
289	\N	6	Болотникова Н. В.. Тетрадь-практикум.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 6 кл.	121
290	\N	6	А/сост Банников С. В.,Домогацких Е. М.. Контурные карты.Физическая география. 6 кл.	66
291	\N	7	Домогацких Е. М., Алексеевский Н. И., География. В 2-х частях. 1ч. Учебное пособие 7 кл.	396
292	\N	7	Домогацких Е. М., Алексеевский Н. И., География. В 2-х частях. 2 ч. Учебное пособие 7 кл.	396
293	\N	7	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География». 7 кл. В 2-х частях. 1ч.	132
294	\N	7	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География. ». 7 кл. В 2-х частях. 2ч.	132
295	\N	7	Пацукова Л. В.. Тетрадь-практикум.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География. ы». 7 кл.	220
296	\N	7	А/сост Банников С. В.,Домогацких Е. М.. Атлас .География. 7 кл.	121
297	\N	7	А/сост Банников С. В.,Домогацких Е. М.. Контурные карты. 7 кл.	66
298	\N	8	Домогацких Е. М., Алексеевский Н. И., География.Учебное пособие 8 кл.	440
299	\N	8	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География. ». 8 кл. В 2-х частях. 1ч.	132
300	\N	8	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского «География. ». 8 кл. В 2-х частях. 2ч.	132
301	\N	 8-9	А/сост Банников С. В.,Домогацких Е. М., Клюев Н. Н.. Атлас .География.  8-9 кл.	176
302	\N	8	А/сост Банников С. В.,Домогацких Е. М.. Контурные карты. 8 кл.	66
303	\N	9	Домогацких Е. М., Алексеевский Н. И., Клюев Н. Н., География. Учебное пособие 9 кл.	440
304	\N	9	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского, Н.Н. Клюева «География. . 9 кл. В 2-х частях. 1ч.	132
305	\N	9	Домогацких Е. М., Домогацких Е. Е.. Рабочая тетрадь.к учебнику Е.М. Домогацких, Н.И. Алексеевского, Н.Н. Клюева «География». 9 кл. В 2-х частях. 2ч.	132
306	\N	9	Банников С. В., Молодцов Д. В.. Тетрадь-практикум.к учебнику Е.М. Домогацких, Н.И. Алексеевского, Н.Н. Клюева «География». 9 кл. В 2-х частях. 1ч.	121
307	\N	9	Банников С. В., Молодцов Д. В.. Тетрадь-практикум.к учебнику Е.М. Домогацких, Н.И. Алексеевского, Н.Н. Клюева «География. ». 9 кл. В 2-х частях. 2ч.	121
308	\N	9	А/сост Банников С. В.,Домогацких Е. М., Клюев Н. Н.. Контурные карты.Население и хозяйство России. 9 кл.	66
309	\N	10	Данилов С. Б., Владимирская А. И., Романова Н. И., Биология.(базовый уровень.).Учебное пособие.10 кл.	374
310	\N	10	Данилов С. Б., Цибулевский А. Ю.. Рабочая тетрадь.к учебнику С.Б. Данилова, Н.И. Романовой, А.И. Владимирской «Биология». 10 кл.,Базовый уровень.	110
311	\N	11	Данилов С. Б., Владимирская А. И., Романова Н. И., Биология.(базовый уровень.) Учебное пособие.11 кл.	374
\.


--
-- Data for Name: book_ventana; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_ventana (id, author, name, grade, price) FROM stdin;
5	Журова Л.Е.,Евдокимова А.О.	Журова, Евдокимова. 1 класс. Букварь. Учебник. В 2 ч. Часть 1	1	335.939999999999998
6	Журова Л.Е.,Евдокимова А.О.	Журова, Евдокимова. 1 класс. Букварь. Учебник. В 2 ч. Часть 2	1	335.939999999999998
7	Безруких М.М., Кузнецова М.И.	Безруких, Кузнецова. 1 класс. Прописи. В 3 ч. Часть 1	1	152.900000000000006
8	Безруких М.М., Кузнецова М.И.	Безруких, Кузнецова. 1 класс. Прописи. В 3 ч. Часть 2	1	152.900000000000006
9	Безруких М.М., Кузнецова М.И.	Безруких, Кузнецова. 1 класс. Прописи. В 3 ч. Часть 3	1	152.900000000000006
10	Иванов С.В.,Евдокимова А.О.,Кузнецова М.И.;под ред. Иванова С.В.	Иванов, Евдокимова. Русский язык. 1 класс. Учебник	1	352.990000000000009
11	Иванов С.В., Евдокимова А.О., Кузнецова М.И.	Иванов, Евдокимова. Русский язык. 1 класс. Рабочая тетрадь. В 2 ч. Часть 1	1	152.900000000000006
12	Иванов С.В., Евдокимова А.О., Кузнецова М.И.	Иванов, Евдокимова. Русский язык. 1 класс. Рабочая тетрадь. В 2 ч. Часть 2	1	152.900000000000006
13	Кузнецова М.И.	Кузнецова. 1 класс. Учимся писать печатные буквы. Рабочая тетрадь	1	162.909999999999997
14	Кузнецова М.И.	Кузнецова. 1 класс. Я учусь писать и читать. Рабочая тетрадь	1	162.909999999999997
15	Евдокимова А.О., Кузнецова М.И.	Евдокимова, Кузнецова. Обучение грамоте. Русский язык. 1 класс. Тетрадь для проверочных работ	1	144.97999999999999
16	Петленко Л.В., Романова В.Ю.	Иванов, Евдокимова. Русский язык. 1-4 классы. Готовимся к всероссийской проверочной работе (ВПР). Справочник (Петленко, Романова)	1-4	151.909999999999997
17	Иванов С.В., Евдокимова А.О., Кузнецова М.И. и др.; под ред. Иванова С.В.	Иванов, Евдокимова. Русский язык. 2 класс. Учебник. В 2 ч. Часть 1	2	372.899999999999977
18	Иванов С.В., Евдокимова А.О., Кузнецова М.И. и др.; под ред. Иванова С.В.	Иванов, Евдокимова. Русский язык. 2 класс. Учебник. В 2 ч. Часть 2	2	372.899999999999977
19	Кузнецова М.И.	Кузнецова. Русский язык. 2 класс. Пишем грамотно. Рабочая тетрадь. В 2 ч. Часть 1	2	152.900000000000006
20	Кузнецова М.И.	Кузнецова. Русский язык. 2 класс. Пишем грамотно. Рабочая тетрадь. В 2 ч. Часть 2	2	152.900000000000006
21	Кузнецова М.И.	Кузнецова. Русский язык. 2 класс. Учусь писать без ошибок. Рабочая тетрадь	2	162.909999999999997
22	Романова В.Ю., Петленко Л.В.	Иванов, Евдокимова. Русский язык. 2 класс. Тетрадь для контрольных работ (Романова, Петленко)	2	158.949999999999989
23	Кузнецова М.И.	Кузнецова. Русский язык. 2 класс. Подготовка к всероссийским проверочным работам (ВПР). Разноуровневые проверочные работы	2	114.950000000000003
24	Иванов С.В., Евдокимова А.О., Кузнецова М.И. и др.; под ред. Иванова С.В.	Иванов, Евдокимова. Русский язык. 3 класс. Учебник. В 2 ч. Часть 1	3	377.95999999999998
25	Иванов С.В., Евдокимова А.О., Кузнецова М.И. и др.; под ред. Иванова С.В.	Иванов, Евдокимова. Русский язык. 3 класс. Учебник. В 2 ч. Часть 2	3	377.95999999999998
26	Кузнецова М.И.	Кузнецова. Русский язык. 3 класс. Пишем грамотно. Рабочая тетрадь. В 2 ч. Часть 1	3	152.900000000000006
27	Кузнецова М.И.	Кузнецова. Русский язык. 3 класс. Пишем грамотно. Рабочая тетрадь. В 2 ч. Часть 2	3	152.900000000000006
28	Кузнецова М.И.	Кузнецова. Русский язык. 3 класс. Учусь писать без ошибок. Рабочая тетрадь	3	162.909999999999997
29	Петленко Л.В., Романова В.Ю	Иванов, Евдокимова. Русский язык. 3 класс. Тетрадь для контрольных работ (Петленко, Романова)	3	158.949999999999989
30	Кузнецова М.И.	Кузнецова. Русский язык. 3 класс. Подготовка к всероссийским проверочным работам (ВПР). Разноуровневые проверочные работы	3	114.950000000000003
31	Иванов С.В.,Кузнецова М.И.,Петленко Л.В.,Романова В.Ю.;под ред. Иванова С.В.	Иванов, Кузнецова. Русский язык. 4 класс. Учебник. В 2 ч. Часть 1	4	377.95999999999998
32	Иванов С.В.,Кузнецова М.И.,Петленко Л.В.,Романова В.Ю.;под ред. Иванова С.В.	Иванов, Кузнецова. Русский язык. 4 класс. Учебник. В 2 ч. Часть 2	4	377.95999999999998
33	Кузнецова М.И	Кузнецова. Русский язык. 4 класс. Пишем грамотно. Рабочая тетрадь. В 2 ч. Часть 1	4	152.900000000000006
34	Кузнецова М.И	Кузнецова. Русский язык. 4 класс. Пишем грамотно. Рабочая тетрадь. В 2 ч. Часть 2	4	152.900000000000006
35	Кузнецова М.И	Кузнецова. Русский язык. 4 класс. Учусь писать без ошибок. Рабочая тетрадь	4	162.909999999999997
36	Романова В.Ю., Петленко Л.В.	Иванов, Кузнецова. Русский язык. 4 класс. Тетрадь для контрольных работ (Романова, Петленко)	4	158.949999999999989
140	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	152.900000000000006
37	Кузнецова М.И.	Иванов, Кузнецова. Русский язык. 4 класс. Подготовка к всероссийским проверочным работам (ВПР). Разноуровневые проверочные работы	4	114.950000000000003
39	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1 класс. Учебное пособие	1	339.899999999999977
40	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1 класс. Уроки слушания. Хрестоматия	1	401.939999999999998
41	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1 класс. Рабочая тетрадь	1	152.900000000000006
42	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1 класс. Уроки слушания. Рабочая тетрадь	1	161.919999999999987
43	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1 класс. Тетрадь для проверочных работ	1	133.97999999999999
44	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Учебное пособие. В 2 ч. Часть 1	2	363.990000000000009
45	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Учебное пособие. В 2 ч. Часть 2	2	363.990000000000009
46	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	152.900000000000006
47	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	152.900000000000006
48	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Тетрадь для контрольных работ	2	154.990000000000009
49	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Хрестоматия. В 2 ч. Часть 1	2	409.970000000000027
50	Ефросинина Л.А.	Ефросинина. Литературное чтение. 2 класс. Хрестоматия. В 2 ч. Часть 2	2	409.970000000000027
51	Ефросинина Л.А., Оморокова М.И.	Ефросинина. Литературное чтение. 3 класс. Учебное пособие. В 2 ч. Часть 1 (Оморокова)	3	363.990000000000009
52	Ефросинина Л.А., Оморокова М.И.	Ефросинина. Литературное чтение. 3 класс. Учебное пособие. В 2 ч. Часть 2 (Оморокова)	3	363.990000000000009
53	Ефросинина Л.А.	Ефросинина. Литературное чтение. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	152.900000000000006
54	Ефросинина Л.А.	Ефросинина. Литературное чтение. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	152.900000000000006
55	Ефросинина Л.А.	Ефросинина. Литературное чтение. 3 класс. Тетрадь для контрольных работ. В 2 ч. Часть 1	3	121
56	Ефросинина Л.А.	Ефросинина. Литературное чтение. 3 класс. Тетрадь для контрольных работ. В 2 ч. Часть 2	3	121
57	Ефросинина Л.А.	Ефросинина. Литературное чтение. 3 класс. Хрестоматия. В 2 ч. Часть 1	3	409.970000000000027
58	Ефросинина Л.А.	Ефросинина. Литературное чтение. 3 класс. Хрестоматия. В 2 ч. Часть 2	3	409.970000000000027
59	Ефросинина Л.А., Оморокова М.И.	Ефросинина. Литературное чтение. 4 класс. Учебное пособие. В 2 ч. Часть 1 (Оморокова)	4	363.990000000000009
60	Ефросинина Л.А., Оморокова М.И.	Ефросинина. Литературное чтение. 4 класс. Учебное пособие. В 2 ч. Часть 2 (Оморокова)	4	363.990000000000009
61	Ефросинина Л.А.	Ефросинина. Литературное чтение. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	152.900000000000006
62	Ефросинина Л.А.	Ефросинина. Литературное чтение. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	152.900000000000006
63	Ефросинина Л.А.	Ефросинина. Литературное чтение. 4 класс. Тетрадь для контрольных работ. В 2 ч. Часть 1	4	121
64	Ефросинина Л.А.	Ефросинина. Литературное чтение. 4 класс. Тетрадь для контрольных работ. В 2 ч. Часть 2	4	121
65	Ефросинина Л.А.	Ефросинина. Литературное чтение. 4 класс. Хрестоматия. В 2 ч. Часть 1	4	409.970000000000027
66	Ефросинина Л.А.	Ефросинина. Литературное чтение. 4 класс. Хрестоматия. В 2 ч. Часть 2	4	409.970000000000027
67	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1-4 классы. Словарь-справочник по литературному чтению "Книгочей"	1-4	161.919999999999987
68	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1-4 классы. Оценка достижения планируемых результатов. В 2 ч. Часть 1 (1-2 классы)	1-2	149.930000000000007
69	Ефросинина Л.А.	Ефросинина. Литературное чтение. 1-4 классы. Оценка достижения планируемых результатов. В 2 ч. Часть 2 (3-4 классы)	3-4	279.949999999999989
70	Оморокова М.И.	Ефросинина. Литературное чтение. 2-4 классы. Учимся читать выразительно. Учебное пособие (Оморокова)	2-4	161.919999999999987
71	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В. и др.;под ред. Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 1 класс. Учебник. В 2 ч. Часть 1	1	344.95999999999998
72	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В. и др.;под ред. Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 1 класс. Учебник. В 2 ч. Часть 2	1	344.95999999999998
38	\N	\N	\N	\N
160	\N	\N	\N	\N
73	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В. и др.;под ред. Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 2 класс. Учебник. В 2 ч. Часть 1	2	374
74	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В. и др.;под ред. Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 2 класс. Учебник. В 2 ч. Часть 2	2	374
75	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В.,Петрова В.И.;под ред.Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 3 класс. Учебник. В 2 ч. Часть 1	3	374
76	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В.,Петрова В.И.;под ред.Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 3 класс. Учебник. В 2 ч. Часть 2	3	374
77	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В.,Петрова В.И.;под ред.Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 4 класс. Учебник. В 3 ч. Часть 1	4	357.939999999999998
78	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В.,Петрова В.И.;под ред.Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 4 класс. Учебник. В 3 ч. Часть 2	4	357.939999999999998
79	Виноградова Н.Ф.,Хомякова И.С.,Сафонова И.В.,Петрова В.И.;под ред.Виноградовой Н.Ф.	Виноградова, Хомякова. Литературное чтение. 4 класс. Учебник. В 3 ч. Часть 3	4	357.939999999999998
83	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 2 класс. Учебник. В 2 ч. Часть 2	2	385
84	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 2 класс. Учебник. В 2 ч. Часть 1	2	385
85	Вербицкая М.В., Оралова О.В., Эббс Б., Уорелл Э., Уорд Э. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 2 класс. Рабочая тетрадь (Оралова)	2	237.930000000000007
86	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 3 класс. Учебник. В 2 ч. Часть 1	3	385
87	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 3 класс. Учебник. В 2 ч. Часть 2	3	385
88	Вербицкая М.В., Эббс Б., Уорелл Э., Уорд Э. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 3 класс. Рабочая тетрадь (Эббс)	3	237.930000000000007
89	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 4 класс. Учебник. В 2 ч. Часть 1	4	385
90	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 4 класс. Учебник. В 2 ч. Часть 2	4	385
91	Вербицкая М.В., Эббс Б., Уорелл Э., Уорд Э. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 4 класс. Рабочая тетрадь (Эббс)	4	237.930000000000007
93	Минаева С.С.,Рослова Л.О.,Рыдзе О.А. и др./Под ред. Булычева В.А.	Минаева, Рослова. Математика. 1 класс. Учебник. В 2 ч. Часть 1	1	364.980000000000018
94	Минаева С.С.,Рослова Л.О.,Рыдзе О.А. и др./Под ред. Булычева В.А.	Минаева, Рослова. Математика. 1 класс. Учебник. В 2 ч. Часть 2	1	364.980000000000018
95	Минаева С.С., Рослова Л.О, Фёдорова Л.И.	Минаева, Рослова. Математика. 1 класс. Рабочая тетрадь. В 3 ч. Часть 1	1	143.990000000000009
96	Минаева С.С., Рослова Л.О, Фёдорова Л.И.	Минаева, Рослова. Математика. 1 класс. Рабочая тетрадь. В 3 ч. Часть 2	1	143.990000000000009
97	Минаева С.С., Рослова Л.О, Рыдзе О.А.	Минаева, Рослова. Математика. 1 класс. Рабочая тетрадь. В 3 ч. Часть 3	1	143.990000000000009
98	Минаева С.С., Рослова Л.О, Рыдзе О.А.	Минаева, Рослова. Математика. 1 класс. Что умеет первоклассник.	1	146.960000000000008
99	Минаева С.С.,Рослова Л.О.,Рыдзе О.А./Под ред. Булычева В.А.	Минаева, Рослова. Математика. 2 класс. Учебник. В 2 ч. Часть 1	2	379.939999999999998
100	Минаева С.С.,Рослова Л.О.,Рыдзе О.А./Под ред. Булычева В.А.	Минаева, Рослова. Математика. 2 класс. Учебник. В 2 ч. Часть 2	2	379.939999999999998
101	Минаева С.С., Зяблова Е.Н.	Минаева, Рослова. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	143.990000000000009
102	Минаева С.С., Зяблова Е.Н.	Минаева, Рослова. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	143.990000000000009
103	Кузнецова М.И., Рыдзе О.А.	Комплексные проверочные работы. Работа с текстом и информацией. 2 класс (Кузнецова, Рыдзе)	2	139.919999999999987
104	Минаева С.С., Рослова Л.О, Рыдзе О.А.	Минаева, Рослова. Математика. 2 класс. Что умеет второклассник.	2	192.939999999999998
105	Минаева С.С.,Рослова Л.О.,Рыдзе О.А./Под ред. Булычева В.А. (часть 1), Минаева С.С., Рослова Л.О., Рыдзе О.А/Под ред. Булычева В.А. (часть 2)	Минаева, Рослова. Математика. 3 класс. Учебник. В 2 ч. Часть 1	3	379.939999999999998
80	\N	\N	\N	\N
81	\N	\N	\N	\N
82	\N	\N	\N	\N
92	\N	\N	\N	\N
266	\N	\N	\N	\N
106	Минаева С.С.,Рослова Л.О.,Рыдзе О.А./Под ред. Булычева В.А. (часть 1), Минаева С.С., Рослова Л.О., Рыдзе О.А/Под ред. Булычева В.А. (часть 2)	Минаева, Рослова. Математика. 3 класс. Учебник. В 2 ч. Часть 2	3	379.939999999999998
107	Минаева С.С., Рослова Л.О., Савельева И.В.	Минаева, Рослова. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1	3	143.990000000000009
108	Минаева С.С., Рослова Л.О., Савельева И.В.	Минаева, Рослова. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	143.990000000000009
109	Кузнецова М.И., Рыдзе О.А.	Комплексные проверочные работы. Работа с текстом и информацией. 3 класс (Кузнецова, Рыдзе)	3	139.919999999999987
110	Минаева С.С., Рослова Л.О, Рыдзе О.А.	Минаева, Рослова. Математика. 3 класс. Что умеет третьеклассник.	3	192.939999999999998
111	Минаева С.С.,Рослова Л.О. и др./Под ред. Булычева В.А.	Минаева, Рослова. Математика. 4 класс. Учебник. В 2 ч. Часть 1	4	379.939999999999998
112	Минаева С.С.,Рослова Л.О. и др./Под ред. Булычева В.А.	Минаева, Рослова. Математика. 4 класс. Учебник. В 2 ч. Часть 2	4	379.939999999999998
113	Минаева С.С., Рослова Л.О., Савельева И.В.	Минаева, Рослова. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	143.990000000000009
114	Минаева С.С., Рослова Л.О., Савельева И.В.	Минаева, Рослова. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	143.990000000000009
115	Кузнецова М.И., Рыдзе О.А.	Комплексные проверочные работы. Работа с текстом и информацией. 4 класс (Кузнецова, Рыдзе)	4	139.919999999999987
116	Минаева С.С., Рослова Л.О, Рыдзе О.А.	Минаева, Рослова. Математика. 4 класс. Что умеет четвероклассник.	4	192.939999999999998
117	Рудницкая В.Н.,Кочурова Е.Э.,Рыдзе О.А.	Рудницкая, Кочурова. Математика. 1 класс. Учебник. В 2 ч. Часть 1	1	346.939999999999998
118	Рудницкая В.Н.,Кочурова Е.Э.,Рыдзе О.А.	Рудницкая, Кочурова. Математика. 1 класс. Учебник. В 2 ч. Часть 2	1	346.939999999999998
119	Кочурова Е.Э.	Рудницкая, Кочурова. Математика. 1 класс. Рабочая тетрадь. В 3 ч. Часть 1	1	152.900000000000006
120	Кочурова Е.Э.	Рудницкая, Кочурова. Математика. 1 класс. Рабочая тетрадь. В 3 ч. Часть 2	1	152.900000000000006
121	Рудницкая В.Н	Рудницкая, Кочурова. Математика. 1 класс. Рабочая тетрадь. В 3 ч. Часть 3	1	152.900000000000006
122	Рудницкая В.Н.	Рудницкая, Кочурова. Математика. 1 класс. Тетрадь для проверочных работ	1	148.939999999999998
123	Кочурова Е.Э.	Рудницкая, Кочурова. Математика. 1 класс. Я учусь считать. Рабочая тетрадь	1	163.900000000000006
124	Рудницкая В.Н.	Рудницкая, Кочурова. Математика. 1 класс. Дидактические материалы. В 2 ч. Часть 1, 2. Комплект	1	321.970000000000027
125	Рыдзе О.А., Фатеева Т.С.	Рудницкая. Информатика. 1 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Рыдзе, Фатеева)	1	127.930000000000007
126	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 1 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Рыдзе, Позднева)	1	127.930000000000007
127	Рудницкая В.Н.,Юдачева Т.В.	Рудницкая, Юдачева. Математика. 2 класс. Учебник. В 2 ч. Часть 1	2	370.920000000000016
128	Рудницкая В.Н.,Юдачева Т.В.	Рудницкая, Юдачева. Математика. 2 класс. Учебник. В 2 ч. Часть 2	2	370.920000000000016
129	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	152.900000000000006
130	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	152.900000000000006
131	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 2 класс. Тетрадь для контрольных работ	2	148.939999999999998
132	Рыдзе О.А., Краснянская К.А.	Рудницкая. Математика. 2 класс. Подготовка к всероссийским проверочным работам (ВПР). Разноуровневые проверочные работы (Рыдзе, Краснянская)	2	114.950000000000003
133	Кочурова Е.Э.	Рудницкая, Юдачева. Математика. 2 класс. Дружим с математикой. Рабочая тетрадь (Кочурова)	2	163.900000000000006
134	Рудницкая В.Н.	Рудницкая, Юдачева. Математика. 2 класс. Дидактические материалы. В 2 ч. Часть 1	2	154.990000000000009
135	Рудницкая В.Н.	Рудницкая, Юдачева. Математика. 2 класс. Дидактические материалы. В 2 ч. Часть 2	2	154.990000000000009
136	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Рыдзе, Позднева)	2	137.939999999999998
137	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Рыдзе, Позднева)	2	137.939999999999998
138	Рудницкая В.Н.,Юдачева Т.В.	Рудницкая, Юдачева. Математика. 3 класс. Учебник. В 2 ч. Часть 1	3	370.920000000000016
139	Рудницкая В.Н.,Юдачева Т.В.	Рудницкая, Юдачева. Математика. 3 класс. Учебник. В 2 ч. Часть 2	3	370.920000000000016
267	\N	\N	\N	\N
268	\N	\N	\N	\N
286	\N	\N	\N	\N
287	\N	\N	\N	\N
141	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2	3	152.900000000000006
142	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 3 класс. Тетрадь для контрольных работ	3	148.939999999999998
143	Кочурова Е.Э	Рудницкая, Юдачева. Математика. 3 класс. Дружим с математикой. Рабочая тетрадь (Кочурова)	3	163.900000000000006
144	Рудницкая В.Н.	Рудницкая, Юдачева. Математика. 3 класс. Дидактические материалы. В 2 ч. Часть 1	3	154.990000000000009
145	Рудницкая В.Н.	Рудницкая, Юдачева. Математика. 3 класс. Дидактические материалы. В 2 ч. Часть 2	3	154.990000000000009
146	Рыдзе О.А., Краснянская К.А.	Рудницкая. Математика. 3 класс. Подготовка к всероссийским проверочным работам (ВПР). Разноуровневые проверочные работы (Рыдзе, Краснянская)	3	114.950000000000003
147	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Рыдзе, Позднева)	3	157.960000000000008
148	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Рыдзе, Позднева)	3	157.960000000000008
149	Рудницкая В.Н.,Юдачева Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Учебник. В 2 ч. Часть 1	4	370.920000000000016
150	Рудницкая В.Н.,Юдачева Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Учебник. В 2 ч. Часть 2	4	370.920000000000016
151	Рудницкая В.Н., Юдачёва Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1	4	152.900000000000006
152	Рудницкая В.Н., Юдачёва Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2	4	152.900000000000006
153	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Тетрадь для контрольных работ	4	148.939999999999998
154	Рыдзе О.А., Краснянская К.А.	Рудницкая, Юдачева. Математика. 4 класс. Подготовка к всероссийским проверочным работам (ВПР). Разноуровневые проверочные работы (Рыдзе, Краснянская)	4	114.950000000000003
155	Кочурова Е.Э.	Рудницкая, Юдачева. Математика. 4 класс. Дружим с математикой. Рабочая тетрадь (Кочурова)	4	163.900000000000006
156	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Дидактические материалы. В 2 ч. Часть 1	4	154.990000000000009
157	Рудницкая В.Н., Юдачева Т.В.	Рудницкая, Юдачева. Математика. 4 класс. Дидактические материалы. В 2 ч. Часть 2	4	154.990000000000009
158	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Рыдзе, Позднева)	4	157.960000000000008
159	Рыдзе О.А., Позднева Т.С.	Рудницкая. Информатика. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Рыдзе, Позднева)	4	157.960000000000008
161	Виноградова Н.Ф.	Виноградова. Окружающий мир. 1 класс. Учебник. В 2 ч. Часть 1	1	335.939999999999998
162	Виноградова Н.Ф.	Виноградова. Окружающий мир. 1 класс. Учебник. В 2 ч. Часть 2	1	335.939999999999998
163	Виноградова Н.Ф.	Виноградова. Окружающий мир. 1 класс. Рабочая тетрадь	1	152.900000000000006
164	Виноградова Н.Ф.	Виноградова. Окружающий мир. 1 класс. Тетрадь для проверочных работ. В 2 ч. Часть 1	1	161.919999999999987
165	Виноградова Н.Ф.	Виноградова. Окружающий мир. 1 класс. Тетрадь для проверочных работ. В 2 ч. Часть 2	1	161.919999999999987
166	Виноградова Н.Ф.	Виноградова. Окружающий мир. 2 класс. Учебник. В 2 ч. Часть 1	2	359.920000000000016
167	Виноградова Н.Ф.	Виноградова. Окружающий мир. 2 класс. Учебник. В 2 ч. Часть 2	2	359.920000000000016
168	Виноградова Н.Ф	Виноградова. Окружающий мир. 2 класс. Рабочая тетрадь. В 2 ч. Часть 1	2	152.900000000000006
169	Виноградова Н.Ф	Виноградова. Окружающий мир. 2 класс. Рабочая тетрадь. В 2 ч. Часть 2	2	152.900000000000006
170	Виноградова Н.Ф.	Виноградова. Окружающий мир. 2 класс. Тетрадь для проверочных работ. В 2 ч. Часть 1	2	161.919999999999987
171	Виноградова Н.Ф.	Виноградова. Окружающий мир. 2 класс. Тетрадь для проверочных работ. В 2 ч. Часть 2	2	161.919999999999987
172	Виноградова Н.Ф.	Виноградова. Окружающий мир. 2 класс. Атлас (Павлова)	2	110
173	Виноградова Н.Ф.,Калинова Г.С.	Виноградова. Окружающий мир. 3 класс. Учебник. В 2 ч. Часть 1 (Калинова)	3	359.920000000000016
174	Виноградова Н.Ф.,Калинова Г.С.	Виноградова. Окружающий мир. 3 класс. Учебник. В 2 ч. Часть 2 (Калинова)	3	359.920000000000016
175	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 3 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Калинова)	3	152.900000000000006
176	Виноградова Н.Ф.	Виноградова. Окружающий мир. 3 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Калинова)	3	152.900000000000006
177	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 3 класс. Тетрадь для проверочных работ. В 2 ч. Часть 1	3	161.919999999999987
178	Виноградова Н.Ф.	Виноградова. Окружающий мир. 3 класс. Тетрадь для проверочных работ. В 2 ч. Часть 2	3	161.919999999999987
179	Виноградова Н.Ф.	Виноградова. Окружающий мир. 3 класс. Атлас (Павлова)	3	110
180	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 4 класс. Учебник. В 2 ч. Часть 1 (Калинова)	4	359.920000000000016
181	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 4 класс. Учебник. В 2 ч. Часть 2 (Калинова)	4	359.920000000000016
182	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 4 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Калинова)	4	152.900000000000006
183	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 4 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Калинова)	4	152.900000000000006
184	Виноградова Н.Ф., Калинова Г.С.	Виноградова. Окружающий мир. 4 класс. Тетрадь для проверочных работ. В 2 ч. Часть 1	4	161.919999999999987
185	Виноградова Н.Ф.	Виноградова. Окружающий мир. 4 класс. Тетрадь для проверочных работ. В 2 ч. Часть 2	4	161.919999999999987
186	Виноградова Н.Ф.	Виноградова. Окружающий мир. 4 класс. Атлас (Павлова)	4	110
189	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 1 класс. Учебник	1	324.939999999999998
190	Савенкова Л.Г., Ермолинская Е.А., Н. В. Богданова	Савенкова, Ермолинская. ИЗО. 1 класс. Рабочая тетрадь	1	159.939999999999998
191	Ермолинская Е.А., Савенкова Л.Г.	Савенкова, Ермолинская. ИЗО. 1 класс. Рабочий альбом	1	212.960000000000008
192	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 2 класс. Учебник	2	352.990000000000009
193	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 2 класс. Рабочая тетрадь	2	159.939999999999998
194	Ермолинская Е.А., Савенкова Л.Г.	Савенкова, Ермолинская. ИЗО. 2 класс. Рабочий альбом	2	212.960000000000008
195	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 3 класс. Учебник	3	352.990000000000009
196	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 3 класс. Рабочая тетрадь	3	159.939999999999998
197	Ермолинская Е.А., Савенкова Л.Г.	Савенкова, Ермолинская. ИЗО. 3 класс. Рабочий альбом	3	212.960000000000008
198	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 4 класс. Учебник	4	352.990000000000009
199	Савенкова Л.Г., Ермолинская Е.А.	Савенкова, Ермолинская. ИЗО. 4 класс. Рабочая тетрадь	4	159.939999999999998
200	Ермолинская Е.А. , Савенкова Л.Г.	Савенкова, Ермолинская. ИЗО. 4 класс. Рабочий альбом	4	212.960000000000008
202	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 1 класс. Учебник	1	324.939999999999998
203	Усачёва В.О., Школяр Л. В., Кузьмина О.В.	Усачева, Школяр. Музыка. 1 класс. Рабочая тетрадь (Кузьмина)	1	158.949999999999989
204	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 2 класс. Учебник	2	348.920000000000016
205	Усачёва В.О., Школяр Л.В., Кузьмина О.В.	Усачева, Школяр. Музыка. 2 класс. Рабочая тетрадь	2	158.949999999999989
206	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 3 класс. Учебник	3	348.920000000000016
207	Кузьмина О.В., Усачёва В.О., Школяр Л.В.	Усачева, Школяр. Музыка. 3 класс. Рабочая тетрадь (Кузьмина)	3	111.980000000000004
208	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 4 класс. Учебник	4	348.920000000000016
209	Усачёва В.О., Школяр Л.В., Кузьмина О. В.	Усачева, Школяр. Музыка. 4 класс. Рабочая тетрадь	4	111.980000000000004
211	Лутцева Е.А.	Лутцева. Технология. 1 класс. Учебник	1	341.990000000000009
212	Лутцева Е.А., Зуева Т.П.	Лутцева. Технология. 1 класс. Рабочая тетрадь (Зуева)	1	165
213	Лутцева Е.А.	Лутцева. Технология. 2 класс. Учебник	2	365.970000000000027
214	Лутцева Е.А.	Лутцева. Технология. 2 класс. Рабочая тетрадь	2	165
215	Лутцева Е.А.	Лутцева. Технология. 3 класс. Учебник	3	365.970000000000027
216	Лутцева Е.А.	Лутцева. Технология. 3 класс. Рабочая тетрадь	3	165
217	Лутцева Е.А.	Лутцева. Технология. 4 класс. Учебник	4	365.970000000000027
218	Лутцева Е.А.	Лутцева. Технология. 4 класс. Рабочая тетрадь	4	165
219	Хохлова М.В.,Синица Н.В.,Симоненко В.Д. и др.	Хохлова, Синица. Технология. 1 класс. Учебник	1	339.899999999999977
220	Хохлова М.В.,Синица Н.В.,Симоненко В.Д. и др.	Хохлова, Синица. Технология. 2 класс. Учебник	2	361.899999999999977
221	Хохлова М.В.,Синица Н.В.,Симоненко В.Д. и др.	Хохлова, Синица. Технология. 3 класс. Учебник	3	361.899999999999977
222	Хохлова М.В.,Синица Н.В.,Симоненко В.Д. и др.	Хохлова, Синица. Технология. 4 класс. Учебник	4	361.899999999999977
187	\N	\N	\N	\N
188	\N	\N	\N	\N
201	\N	\N	\N	\N
210	\N	\N	\N	\N
223	\N	\N	\N	\N
224	Петрова Т.В., Копылов Ю.А., Полянская Н.В. И др.	Петрова, Копылов. Физическая культура. 1-2 классы. Учебник	1-2	352.990000000000009
225	Петрова Т.В., Копылов Ю.А., Полянская Н.В., Петров С.С.	Петрова, Копылов. Физическая культура. 3-4 классы. Учебник	3-4	365.970000000000027
229	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 5 класс. Учебник. В 2 ч. Часть 1	5	394.899999999999977
230	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 5 класс. Учебник. В 2 ч. Часть 2. Комплект (+ приложение)	5	394.899999999999977
231	Еремина О.А.	Шмелев, Флоренская. Русский язык. 5 класс. Словарные слова без ошибок. Рабочая тетрадь (Еремина)	5	145.969999999999999
232	Донскова О.В.	Шмелев, Флоренская. Русский язык. 5 класс. Контрольные и проверочные работы (Донскова)	5	89.980000000000004
233	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 6 класс. Учебник. В 2 ч. Часть 1	6	394.899999999999977
234	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 6 класс. Учебник. В 2 ч. Часть 2. Комплект (+ приложение)	6	394.899999999999977
235	Шапиро Н.А.	Шмелев, Флоренская. Русский язык. 6 класс. Рабочая тетрадь (Шапиро)	6	145.969999999999999
236	Еремина О.А.	Шмелев, Флоренская. Русский язык. 6 класс. Словарные слова без ошибок. Рабочая тетрадь (Еремина)	6	145.969999999999999
237	Донскова О.В.	Шмелев, Флоренская. Русский язык. 6 класс. Контрольные и проверочные работы (Донскова)	6	110.989999999999995
238	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 7 класс. Учебник. Комплект (+ приложение)	7	453.970000000000027
239	Шапиро Н.А.	Шмелев, Флоренская. Русский язык. 7 класс. Рабочая тетрадь (Шапиро)	7	145.969999999999999
240	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 8 класс. Учебник. Комплект (+ приложение)	8	453.970000000000027
241	Донскова О.В.	Шмелев, Флоренская. Русский язык. 8 класс. Контрольные и проверочные работы (Донскова)	8	110.989999999999995
242	Шмелев А.Д.,Флоренская Э.А.,Савчук Л.О. и др.;под ред. Шмелева А.Д.	Шмелев, Флоренская. Русский язык. 9 класс. Учебник. Комплект (+ приложение)	9	453.970000000000027
243	Шапиро Н.А.	Шмелев, Флоренская. Русский язык. 9 класс. Рабочая тетрадь (Шапиро)	9	138.930000000000007
244	Донскова О.В.	Шмелев, Флоренская. Русский язык. 9 класс. Контрольные и проверочные работы (Донскова)	9	110.989999999999995
246	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 5 класс. Учебное пособие. В 2 ч. Часть 1	5	350.899999999999977
247	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 5 класс. Учебное пособие. В 2 ч. Часть 2	5	350.899999999999977
248	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 6 класс. Учебное пособие. В 2 ч. Часть 1	6	350.899999999999977
249	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 6 класс. Учебное пособие. В 2 ч. Часть 2	6	350.899999999999977
250	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 7 класс. Учебное пособие. В 2 ч. Часть 1	7	350.899999999999977
251	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 7 класс. Учебное пособие. В 2 ч. Часть 2	7	350.899999999999977
252	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 8 класс. Учебное пособие. В 2 ч. Часть 1	8	365.970000000000027
253	Ланин Б.А., Устинова Л.Ю., Шамчикова В.М. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 8 класс. Учебное пособие. В 2 ч. Часть 2	8	365.970000000000027
254	Ланин Б.А., Устинова Л.Ю. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 9 класс. Учебное пособие. В 2 ч. Часть 1	9	365.970000000000027
255	Ланин Б.А., Устинова Л.Ю. / Под ред. Ланина Б.А.	Ланин, Устинова. Литература. 9 класс. Учебное пособие. В 2 ч. Часть 2	9	365.970000000000027
256	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 5 класс. Учебник. В 2 ч. Часть 1	5	353.980000000000018
257	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 5 класс. Учебник. В 2 ч. Часть 2	5	353.980000000000018
258	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 6 класс. Учебник. В 2 ч. Часть 1	6	377.95999999999998
226	\N	\N	\N	\N
227	\N	\N	\N	\N
228	\N	\N	\N	\N
245	\N	\N	\N	\N
298	\N	\N	\N	\N
259	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 6 класс. Учебник. В 2 ч. Часть 2	6	377.95999999999998
260	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 7 класс. Учебник. В 2 ч. Часть 1	7	377.95999999999998
261	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 7 класс. Учебник. В 2 ч. Часть 2	7	377.95999999999998
262	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 8 класс. Учебник. В 2 ч. Часть 1	8	377.95999999999998
263	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 8 класс. Учебник. В 2 ч. Часть 2	8	377.95999999999998
264	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 9 класс. Учебник. В 2 ч. Часть 1	9	397.980000000000018
265	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 9 класс. Учебник. В 2 ч. Часть 2	9	397.980000000000018
269	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 5 класс. Учебник. В 2 ч. Часть 1 (Эббс)	5	385
270	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 5 класс. Учебник. В 2 ч. Часть 2 (Эббс)	5	385
271	Вербицкая М.В., Твердохлебова И.П., Эббс Б., Уорелл Э., Уорд Э. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 5 класс. Рабочая тетрадь (Твердохлебова)	5	251.900000000000006
272	Вербицкая М.В., Твердохлебова И.П. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 5 класс. Практикум: лексика и грамматика. Сборник упражнений	5	180.949999999999989
273	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 6 класс. Учебник. В 2 ч. Часть 1 (Гаярделли)	6	394.899999999999977
274	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 6 класс. Учебник. В 2 ч. Часть 2 (Гаярделли)	6	394.899999999999977
275	Вербицкая М.В., Гаярделли М., Редли П., Миндрул О.С. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 6 класс. Рабочая тетрадь (Гаярделли, Миндрул)	6	251.900000000000006
276	Вербицкая М.В., Степанова М.В. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 6 класс. Практикум: лексика и грамматика. Сборник упражнений	6	180.949999999999989
277	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 7 класс. Учебник. В 2 ч. Часть 1 (Гаярделли)	7	394.899999999999977
278	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 7 класс. Учебник. В 2 ч. Часть 2 (Гаярделли)	7	394.899999999999977
279	Вербицкая М.В., Гаярделли М., Редли П., Миндрул О.С. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 7 класс. Рабочая тетрадь (Гаярделли)	7	251.900000000000006
280	Вербицкая М.В., Лубнина Е.Н.	Вербицкая. Forward. Английский язык. 7 класс. Практикум: лексика и грамматика. Сборник упражнений	7	180.949999999999989
281	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 8 класс. Учебник (Маккинли)	8	435.930000000000007
282	Вербицкая М.В., Уайт Л., Фрикер Р., Миндрул О.С., Нечаева Е.Н. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 8 класс. Рабочая тетрадь (Уайт)	8	251.900000000000006
283	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 9 класс. Учебник (Маккинли)	9	435.930000000000007
284	Вербицкая М.В., Уайт Л., Фрикер Р., Миндрул О.С., Нечаева Е.Н., Твердохлебова И.П. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 9 класс. Рабочая тетрадь (Уайт)	9	251.900000000000006
285	Вербицкая М.В., Миндрул О.С., Нечаева Е.Н.	Вербицкая. Forward. Английский язык. 8-9 классы. Устная часть ОГЭ. Практикум	8-9	259.930000000000007
288	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 5 класс. Учебник	5	558.909999999999968
289	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 5 класс. Рабочая тетрадь. В 2 ч. Часть 1	5	183.919999999999987
290	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 5 класс. Рабочая тетрадь. В 2 ч. Часть 2	5	183.919999999999987
291	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 6 класс. Учебник	6	558.909999999999968
292	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 6 класс. Рабочая тетрадь	6	251.900000000000006
293	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 7 класс. Учебник	7	558.909999999999968
294	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 7 класс. Рабочая тетрадь	7	251.900000000000006
295	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 8 класс. Учебник	8	558.909999999999968
296	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 8 класс. Рабочая тетрадь	8	251.900000000000006
297	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 9 класс. Учебник	9	558.909999999999968
299	Рукодельникова М.Б., Салазанова О.А., Ли Тао	Рукодельникова. Китайский язык. 5 класс. Учебник	5	510.949999999999989
300	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 5 класс. Рабочая тетрадь	5	292.930000000000007
301	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С.	Рукодельникова. Китайский язык. 5 класс. Прописи	5	178.969999999999999
302	Рукодельникова М.Б., Салазанова О.А., Ли Тао	Рукодельникова. Китайский язык. 6 класс. Учебник	6	510.949999999999989
303	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 6 класс. Рабочая тетрадь	6	292.930000000000007
304	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С.	Рукодельникова. Китайский язык. 6 класс. Прописи	6	178.969999999999999
305	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 7 класс. Учебник	7	510.949999999999989
306	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 7 класс. Рабочая тетрадь	7	292.930000000000007
307	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С.	Рукодельникова. Китайский язык. 7 класс. Прописи	7	178.969999999999999
308	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 8 класс. Учебник	8	510.949999999999989
309	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 8 класс. Рабочая тетрадь	8	292.930000000000007
310	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С.	Рукодельникова. Китайский язык. 8 класс. Прописи	8	178.969999999999999
311	Рукодельникова М.Б., Салазанова О.А., Холкина Л.С., Ли Тао	Рукодельникова. Китайский язык. 9 класс. Учебник	9	510.949999999999989
314	Вовина В.Г.,Баранов П.А.,Александрова С.В. и др.;под ред. Тишкова В.А.	Тишков. История России. 6 класс. Учебник (Баранов, Лебедева)	6	374
315	Майков А.Н.	История России с древнейших времён до XVI в. 6 кл. Атлас с контурными картами и проверочными работами. ИКС. 	6	111.980000000000004
316	Вовина В.Г.,Баранов П.А.,Пашкова Т.Н. и др.;под ред. Тишкова В.А.	Тишков. История России. 7 класс. Учебник (Баранов, Лебедева)	7	374
317	Александрова С.В.	История России.  XVI–XVII века. 7 класс. Атлас с контурными картами и проверочными работами. ИКС	7	111.980000000000004
318	Баранов П.А.,Вовина В.Г.;под общ. ред. Тишкова В.А.	Тишков. История России. 8 класс. Учебник (Баранов, Вовина)	8	374
319	Лазукова Н.Н.,Журавлева О.Н.;под ред. Тишкова В.А.	Тишков. История России. 9 класс. Учебник (Баранов, Вовина)	9	374
321	Майков А.Н.	Майков. Всеобщая история. 5 класс. Введение в историю. Учебное пособие	5	319.990000000000009
322	Майков А.Н.	Майков. Всеобщая история. 5 класс. Введение в историю. Рабочая тетрадь	5	130.900000000000006
323	Андреевская Т.П., Белкин М.В., Ванина Э.В. / Под ред. Мясникова В.С.	Андреевская, Белкин. Всеобщая история. 5 класс. История древнего мира. Учебное пособие	5	349.910000000000025
324	Ванина Э.В., Данилова А.К.	Андреевская, Белкин. Всеобщая история. 5 класс. История древнего мира. Рабочая тетрадь (Ванина, Данилова)	5	167.969999999999999
325	Саплина Е.В.	Андреевская, Белкин. Всеобщая история. 5 класс. История Древнего мира. Тематические контрольные работы (Саплина)	5	112.969999999999999
326	Искровская Л.В., Федоров С.Е., Гурьянова Ю.В. / Под ред. Мясникова В.С.	Искровская, Федоров. Всеобщая история. 6 класс. История средних веков. Учебное пособие	6	372.899999999999977
327	Баранов П.А.	Искровская, Федоров. Всеобщая история. 6 класс. История средних веков. Рабочая тетрадь (Баранов)	6	167.969999999999999
328	Саплина Е.В.	Искровская, Федоров. Всеобщая история. 6 класс. История Древнего мира. Тематические контрольные работы (Саплина)	6	112.969999999999999
329	Носков В.В., Андреевская Т.П.	Носков, Андреевская. Всеобщая история. 7 класс. Учебное пособие	7	372.899999999999977
330	Баранов П.А.	Носков, Андреевская. Всеобщая история. 7 класс. Рабочая тетрадь (Баранов)	7	167.969999999999999
331	Саплина Е.В., Гонтарь С. А.	Носков, Андреевская. Всеобщая история. 7 класс. История Древнего мира. Тематические контрольные работы (Саплина)	7	112.969999999999999
332	Носков В.В., Андреевская Т.П.	Носков, Андреевская. Всеобщая история. 8 класс. Учебное пособие	8	379.939999999999998
333	Саплина Е.В., Чиликин К.П.	Носков, Андреевская. Всеобщая история. 8 класс. История Древнего мира. Тематические контрольные работы (Саплина, Чиликин)	8	112.969999999999999
334	Хейфец В.Л., Хейфец Л.С., Северинов К.М. / Под ред. Мясникова В.С.	Хейфец. Всеобщая история. 9 класс. Учебное пособие	9	379.939999999999998
335	Саплина Е.В., Чиликин К.П.	Хейфец. Всеобщая история. 9 класс. История Древнего мира. Тематические контрольные работы (Саплина, Чиликин)	9	112.969999999999999
337	Насонова И.П.,Соболева О.Б.;под общ. ред. Тишкова В.А.	Тишков. Обществознание. 6 класс. Учебник (Насонова, Соболева)	6	369.930000000000007
338	Ковлер А.И.,Соболева О.Б.,Чайка В.Н.,Насонова И.П.;под общ. ред. Тишкова В.А.	Тишков. Обществознание. 7 класс. Учебник (Ковлер, Соболева)	7	369.930000000000007
339	Гринберг Р.С.,Королева Г.Э.,Соболева О.Б.;под общ. ред. Тишкова В.А.	Тишков. Обществознание. 8 класс. Учебник (Гринберг, Королёва)	8	369.930000000000007
340	Гаман-Голутвина О.В.,Корсун Р.П.,Соболева О.Б.;под общ. ред. Тишкова В.А.	Тишков. Обществознание. 9 класс. Учебник (Гаман-Голугвина, Корсун)	9	369.930000000000007
341	Тишков В.А.	Тишков. Обществознание. 5-11 классы. Мы – российский народ. Книга для учителя	5-11	238.919999999999987
343	Летягин А.А.	Роза ветров. Летягин. География. 5 класс. Учебник	5	372.899999999999977
344	Летягин А.А.	Роза ветров. Летягин. География. 5 класс. Дневник географа-следопыта. Рабочая тетрадь	5	157.960000000000008
345	Душина И.В., Летягин А.А.	Душина И. В. Начальный курс географии. 5 класс. Атлас(Инст.геогр. РАН)	5	110.989999999999995
346	Летягин А.А.	Летягин А.А. Начальный курс географии. 5 класс. Контурные карты(Инст.геогр. РАН)	5	80.9599999999999937
347	Крылова О.В.	Крылова. География. 5 класс. Картографический тренажёр	5	114.950000000000003
348	Летягин А.А.	Роза ветров. Летягин. География. 6 класс. Учебник	6	372.899999999999977
349	Летягин А.А.	Роза ветров. Летягин. География. 6 класс. Дневник географа-следопыта. Рабочая тетрадь	6	157.960000000000008
350	Душина И.В., Летягин А.А.	Душина И. В. Начальный курс географии. 6 класс. Атлас(Инст.геогр. РАН)	6	110.989999999999995
351	Летягин А.А.	Летягин А.А. Начальный курс географии. 6 класс. Контурные карты(Инст.геогр. РАН)	6	80.9599999999999937
352	Крылова О.В.	Крылова. География. 6 класс. Картографический тренажёр	6	114.950000000000003
353	Душина И.В.,Смоктунович Т.Л.	Роза ветров. Душина, Смоктунович. География. 7 класс. Учебник	7	372.899999999999977
354	Душина И.В	Роза ветров. Душина, Смоктунович. География. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	162.909999999999997
355	Душина И.В	Роза ветров. Душина, Смоктунович. География. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	162.909999999999997
356	Душина И.В., Летягин А.А.	Душина И. В. География. Материки, океаны, народы и страны. 7 класс. Атлас(Инст.геогр. РАН)	7	174.900000000000006
357	Душина И.В.	Душина И. В. География. Материки, океаны, народы и страны. 7 класс. Контурные карты(Инст.геогр. РАН)	7	80.9599999999999937
358	Крылова О.В.	Крылова. География. 7 класс. Картографический тренажёр	7	114.950000000000003
359	Пятунин В.Б.,Таможняя Е.А.	Роза ветров. Пятунин, Таможняя. География. 8 класс. Учебник	8	372.899999999999977
360	Пятунин В.Б., Таможняя Е.А	Роза ветров. Пятунин, Таможняя. География. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	157.960000000000008
361	Пятунин В.Б., Таможняя Е.А	Роза ветров. Пятунин, Таможняя. География. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	157.960000000000008
362	Без автора	Таможняя Е. А. География России. Природа. Население. 8 класс. Атлас(Инст.геогр. РАН)	8	194.919999999999987
363	Таможняя Е.А.	Таможняя Е. А. География России. Природа. Население. 8 класс. Контурные карты(Инст.геогр. РАН)	8	80.9599999999999937
364	Крылова О.В.	Крылова. География. 8 класс. Картографический тренажёр	8	114.950000000000003
365	Таможняя Е.А.,Толкунова С.Г.	Роза ветров. Таможняя, Толкунова. География. 9 класс. Учебник. Комплект (+ приложение)	9	449.899999999999977
366	Таможняя Е.А., Толкунова С.Г	Роза ветров. Таможняя, Толкунова. География. 9 класс. Рабочая тетрадь. В 2 ч. Часть 1	9	157.960000000000008
367	Таможняя Е.А., Толкунова С.Г	Роза ветров. Таможняя, Толкунова. География. 9 класс. Рабочая тетрадь. В 2 ч. Часть 2	9	157.960000000000008
368	Таможняя Е.А.	Таможняя Е. А. География России. Хозяйство. Регионы. 9 класс. Атлас(Инст.геогр. РАН)	9	152.900000000000006
369	Таможняя Е.А.	Таможняя Е. А. География России. Хозяйство. Регионы. 9 класс. Контурные карты(Инст.геогр. РАН)	9	80.9599999999999937
312	\N	\N	\N	\N
313	\N	\N	\N	\N
320	\N	\N	\N	\N
336	\N	\N	\N	\N
370	Неходцев В.А., Приваловский А.Н.	Крылова. География. 9 класс. Картографический тренажёр	9	114.950000000000003
373	Мерзляк А.Г., Полонский В.Б., Якир М.С./ Под ред. Подольского В.Е.	Мерзляк, Полонский. Математика. 5 класс. Учебник	5	374.990000000000009
374	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Математика. 5 класс. Дидактические материалы	5	145.969999999999999
375	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Математика. 5 класс. Рабочая тетрадь. В 2 ч. Часть 1	5	152.900000000000006
376	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Математика. 5 класс. Рабочая тетрадь. В 2 ч. Часть 2	5	152.900000000000006
377	Буцко Е.В.	Мерзляк, Полонский. Математика. 5 класс. Подготовка к всероссийским проверочным работам (ВПР) (Буцко)	5	146.960000000000008
378	Буцко Е.В., Мерзляк А.Г., В.Б. Полонский, М. С. Якир	Мерзляк, Полонский. Математика. 5 класс. Методическое пособие	5	220
379	Мерзляк А.Г., Полонский В.Б., Якир М.С./ Под ред. Подольского В.Е.	Мерзляк, Полонский. Математика. 6 класс. Учебник	6	374.990000000000009
380	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М., Якир М.С.	Мерзляк, Полонский. Математика. 6 класс. Дидактические материалы	6	145.969999999999999
381	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Математика. 6 класс. Рабочая тетрадь. В 3 ч. Часть 1	6	152.900000000000006
382	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Математика. 6 класс. Рабочая тетрадь. В 3 ч. Часть 2	6	152.900000000000006
383	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Математика. 6 класс. Рабочая тетрадь. В 3 ч. Часть 3	6	152.900000000000006
384	Буцко Е.В.	Мерзляк, Полонский. Математика. 6 класс. Подготовка к всероссийским проверочным работам (ВПР) (Буцко)	6	146.960000000000008
385	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Математика. 6 класс. Методическое пособие	6	224.949999999999989
386	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Математика. 5-11 классы. Программы	5-11	159.939999999999998
388	Мерзляк А.Г.,Полонский В.Б.,Якир М.С./Под ред. Подольского В.Е.	Мерзляк, Полонский. Алгебра. 7 класс. Учебник	7	374.990000000000009
389	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 7 класс. Дидактические материалы	7	140.909999999999997
390	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	160.930000000000007
391	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	160.930000000000007
392	Буцко Е.В.	Мерзляк, Полонский. Алгебра. 7 класс. Подготовка к всероссийским проверочным работам (ВПР) (Буцко)	7	138.930000000000007
393	Буцко Е.В., Мерзляк А.Г., Полонский В.Б,.Якир М.С.	Мерзляк, Полонский. Алгебра. 7 класс. Методическое пособие	7	157.960000000000008
394	Мерзляк А.Г.,Полонский В.Б.,Якир М.С./Под ред. Подольского В.Е.	Мерзляк, Полонский. Алгебра. 8 класс. Учебник	8	374.990000000000009
395	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Алгебра. 8 класс. Дидактические материалы	8	140.909999999999997
396	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	160.930000000000007
397	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	160.930000000000007
398	Буцко Е.В.	Мерзляк, Полонский. Алгебра. 8 класс. Подготовка к всероссийским проверочным работам (ВПР) (Буцко)	8	138.930000000000007
399	Буцко Е.В., Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 8 класс. Методическое пособие	8	171.930000000000007
400	Мерзляк А.Г.,Полонский В.Б.,Якир М.С./Под ред. Подольского В.Е.	Мерзляк, Полонский. Алгебра. 9 класс. Учебник	9	374.990000000000009
401	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М., Якир М.С.	Мерзляк, Полонский. Алгебра. 9 класс. Дидактические материалы	9	140.909999999999997
402	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 9 класс. Рабочая тетрадь. В 2 ч. Часть 1	9	160.930000000000007
403	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 9 класс. Рабочая тетрадь. В 2 ч. Часть 2	9	160.930000000000007
404	Буцко Е.В., Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Алгебра. 9 класс. Методическое пособие	9	162.909999999999997
405	Мерзляк А.Г.,Поляков В.М./Под ред. Подольского В.Е.	Мерзляк, Поляков. Алгебра. 7 класс. Учебник (углубленный)	7	392.920000000000016
406	Мерзляк А.Г., Полонский В.Б,Рабинович Е.М., Якир М.С	Мерзляк, Поляков. Алгебра. 7 класс. Самостоятельные и контрольные работы (углубленный)	7	139.919999999999987
407	Мерзляк А.Г.,Поляков В.М./Под ред. Подольского В.Е.	Мерзляк, Поляков. Алгебра. 8 класс. Учебник (углубленный)	8	392.920000000000016
408	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М., Якир М.С	Мерзляк, Поляков. Алгебра. 8 класс. Самостоятельные и контрольные работы (углубленный)	8	139.919999999999987
409	Мерзляк А.Г., Поляков В.М./Под ред. Подольского В.Е.	Мерзляк, Поляков. Алгебра. 9 класс. Учебник (углубленный)	9	392.920000000000016
410	Мерзляк А.Г., Полонский В.Б.\nРабинович Е.М., Якир М.С.,	Мерзляк, Поляков. Алгебра. 9 класс. Самостоятельные и контрольные работы (углубленный)	9	139.919999999999987
412	Мерзляк А.Г.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Геометрия. 7 класс. Учебник	7	370.920000000000016
413	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 7 класс. Дидактические материалы	7	141.900000000000006
414	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	162.909999999999997
415	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	162.909999999999997
416	Буцко Е.В., Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 7 класс. Методическое пособие	7	157.960000000000008
417	Мерзляк А.Г.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Геометрия. 8 класс. Учебник	8	370.920000000000016
418	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Геометрия. 8 класс. Дидактические материалы	8	141.900000000000006
419	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Геометрия. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	162.909999999999997
420	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Геометрия. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	162.909999999999997
421	Буцко Е.В., Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 8 класс. Методическое пособие	8	157.960000000000008
422	Мерзляк А.Г.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Геометрия. 9 класс. Учебник	9	370.920000000000016
423	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Геометрия. 9 класс. Дидактические материалы	9	141.900000000000006
424	Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 9 класс. Рабочая тетрадь. В 2 ч. Часть 1	9	162.909999999999997
425	Мерзляк А.Г., Полонский В.Б, Якир М.С.	Мерзляк, Полонский. Геометрия. 9 класс. Рабочая тетрадь. В 2 ч. Часть 2	9	162.909999999999997
426	Буцко Е.В., Мерзляк А.Г., Полонский В.Б., Якир М.С.	Мерзляк, Полонский. Геометрия. 9 класс. Методическое пособие	9	157.960000000000008
427	Мерзляк А.Г.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Геометрия. 7 класс. Учебник (углубленный)	7	391.930000000000007
428	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Поляков. Геометрия. 7 класс. Самостоятельные и контрольные работы (углубленный)	7	139.919999999999987
429	Мерзляк А.Г.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Геометрия. 8 класс. Учебник (углубленный)	8	391.930000000000007
430	Мерзляк А.Г.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Геометрия. 9 класс. Учебник (углубленный)	9	391.930000000000007
431	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Поляков. Геометрия. 9 класс. Самостоятельные и контрольные работы (углубленный)	9	139.919999999999987
434	Грачев А.В.,Погожев В.А.,Селиверстов А.В.	Грачев, Погожев. Физика. 7 класс. Учебник	7	381.920000000000016
435	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	141.900000000000006
436	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	141.900000000000006
437	Грачёв А.В., Погожев В.А.	Грачев, Погожев. Физика. 7 класс. Тетрадь для лабораторных работ	7	147.949999999999989
438	Грачев А.В.,Погожев В.А.,Вишнякова Е.А.	Грачев, Погожев. Физика. 8 класс. Учебник	8	381.920000000000016
439	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	141.900000000000006
440	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	141.900000000000006
441	Грачёв А.В., Погожев В.А.	Грачев, Погожев. Физика. 8 класс. Тетрадь для лабораторных работ	8	147.949999999999989
442	Грачев А.В.,Погожев В.А.,Боков П.Ю.	Грачев, Погожев. Физика. 9 класс. Учебник	9	381.920000000000016
342	\N	\N	\N	\N
371	\N	\N	\N	\N
372	\N	\N	\N	\N
387	\N	\N	\N	\N
411	\N	\N	\N	\N
443	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 9 класс. Рабочая тетрадь. В 3 ч. Часть 1	9	141.900000000000006
444	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 9 класс. Рабочая тетрадь. В 3 ч. Часть 2	9	141.900000000000006
445	Грачёв А.В., Погожев В.А., Боков П.Ю., Вишнякова Е.А.	Грачев, Погожев. Физика. 9 класс. Рабочая тетрадь. В 3 ч. Часть 3	9	141.900000000000006
446	Грачёв А.В., Погожев В.А. Тихонов П.С., Грачёва М.А.	Грачев, Погожев. Физика. 9 класс. Тетрадь для лабораторных работ	9	147.949999999999989
447	Хижнякова Л.С., Синявина А.А.	Хижнякова, Синявина. Физика. 7 класс. Учебное пособие	7	326.920000000000016
448	Хижнякова Л.С., Синявина А.А.	Хижнякова, Синявина. Физика. 8 класс. Учебное пособие	8	326.920000000000016
449	Хижнякова Л.С., Синявина А.А.	Хижнякова, Синявина. Физика. 9 класс. Учебное пособие	9	326.920000000000016
451	Пономарева И.Н.,Николаев И.В.,Корнилова О.А./Под ред. Пономаревой И.Н.	Биология. Концентрический курс. Пономарева, Николаев. 5 класс. Учебник	5	404.910000000000025
452	Корнилова О.А., Николаев И.В.	Биология. Концентрический курс. Пономарева, Николаев. 5 класс. Рабочая тетрадь (Корнилова, Симонова)	5	159.939999999999998
453	Пономарева И.Н.,Корнилова О.А.,Кучменко В.С./Под ред. Пономаревой И.Н.	Биология. Концентрический курс. Пономарева, Корнилова. 6 класс. Учебник	6	404.910000000000025
454	Пономарева И.Н., Корнилова О.А.	Биология. Концентрический курс. Пономарева, Корнилова. 6 класс. Рабочая тетрадь. В 2 ч. Часть 1	6	159.939999999999998
455	Пономарева И.Н., Корнилова О.А.	Биология. Концентрический курс. Пономарева, Корнилова. 6 класс. Рабочая тетрадь. В 2 ч. Часть 2	6	159.939999999999998
456	Константинов В.М.,Бабенко В.Г.,Кучменко В.С./Под ред. Константинова В.М.	Биология. Концентрический курс. Константинов, Бабенко. 7 класс. Учебник	7	404.910000000000025
457	Суматохин С.В., Кучменко В.С.	Биология. Концентрический курс. Константинов, Бабенко. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Суматохин, Кучменко)	7	159.939999999999998
458	Суматохин С.В., Кучменко В.С.	Биология. Концентрический курс. Константинов, Бабенко. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Суматохин, Кучменко)	7	159.939999999999998
459	Драгомилов А.Г.,Маш Р.Д.	Биология. Концентрический курс. Драгомилов, Маш. 8 класс. Учебник	8	404.910000000000025
460	Маш Р.Д., Драгомилов А.Г.	Биология. Концентрический курс. Драгомилов, Маш. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	159.939999999999998
461	Маш Р.Д., Драгомилов А.Г.	Биология. Концентрический курс. Драгомилов, Маш. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	159.939999999999998
462	Пономарева И.Н.,Корнилова О.А.,Чернова Н.М./Под ред. Пономаревой И.Н.	Биология. Концентрический курс. Пономарева, Корнилова. 9 класс. Учебник	9	404.910000000000025
463	Пономарева И.Н., Панина Г.Н., Корнилова О.А.	Биология. Концентрический курс. Пономарева, Корнилова. 9 класс. Рабочая тетрадь	9	159.939999999999998
464	Сухова Т.С., Строганов В.И.	Биология. Линейный курс. Сухова, Строганов. 5-6 классы. Учебник	5-6	418.990000000000009
465	Сухова Т.С., Строганов В. И	Биология. Линейный курс. Сухова, Строганов. 5-6 классы. Рабочая тетрадь. В 2 ч. Часть 1	5-6	156.969999999999999
466	Сухова Т.С., Строганов В. И	Биология. Линейный курс. Сухова, Строганов. 5-6 классы. Рабочая тетрадь. В 2 ч. Часть 2	5-6	156.969999999999999
467	Пономарева И.Н.,Корнилова О.А.,Кучменко В.С./Под ред. Пономаревой И.Н.	Биология. Линейный курс. Пономарева, Корнилова. 7 класс. Учебник	7	418.990000000000009
468	Пономарева И.Н., Корнилова О.А.	Биология. Линейный курс. Пономарева, Корнилова. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	156.969999999999999
469	Пономарева И.Н., Корнилова О.А.	Биология. Линейный курс. Пономарева, Корнилова. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	156.969999999999999
470	Константинов В.М.,Бабенко В.Г.,Кучменко В.С./Под ред. Бабенко В.Г.	Биология. Линейный курс. Константинов, Бабенко. 8 класс. Учебник	8	418
471	Суматохин С.В., Кучменко В.С.	Биология. Линейный курс. Константинов, Бабенко. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1 (Суматохин, Кучменко)	8	156.969999999999999
472	Суматохин С.В., Кучменко В.С.	Биология. Линейный курс. Константинов, Бабенко. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2 (Суматохин, Кучменко)	8	156.969999999999999
473	Драгомилов А.Г.,Маш Р.Д.	Биология. Линейный курс. Драгомилов, Маш. 9 класс. Учебник	9	418
474	Драгомилов А.Г., Маш Р.Д.	Биология. Линейный курс. Драгомилов, Маш. 9 класс. Рабочая тетрадь. В 2 ч. Часть 1	9	156.969999999999999
432	\N	\N	\N	\N
433	\N	\N	\N	\N
450	\N	\N	\N	\N
475	Драгомилов А.Г., Маш Р.Д.	Биология. Линейный курс. Драгомилов, Маш. 9 класс. Рабочая тетрадь. В 2 ч. Часть 2	9	156.969999999999999
476	Сухова Т.С.,Строганов В.И.	Сухова. Биология. Живая природа. 5 класс. Учебник	5	398.970000000000027
477	Сухова Т.С., Строганов В. И.	Сухова. Биология. Живая природа. 5 класс. Рабочая тетрадь	5	158.949999999999989
478	Сухова Т.С.,Дмитриева Т.А.	Сухова, Дмитриева. Биология. Живая природа. 6 класс. Учебник	6	398.970000000000027
479	Дмитриева Т.А	Сухова, Дмитриева. Биология. Живая природа. 6 класс. Рабочая тетрадь. В 2 ч. Часть 1	6	158.949999999999989
480	Сухова Т.С.	Сухова, Дмитриева. Биология. Живая природа. 6 класс. Рабочая тетрадь. В 2 ч. Часть 2	6	158.949999999999989
481	Шаталова С.П.,Сухова Т.С.	Сухова, Шаталова. Биология. Живая природа. 7 класс. Учебник	7	398.970000000000027
482	Сухова Т.С., Шаталова С.П.	Сухова, Шаталова. Биология. Живая природа. 7 класс. Рабочая тетрадь. В 2 ч. Часть 1	7	158.949999999999989
483	Сухова Т.С., Шаталова С.П.	Сухова, Шаталова. Биология. Живая природа. 7 класс. Рабочая тетрадь. В 2 ч. Часть 2	7	158.949999999999989
484	Каменский А.А.,Сарычева Н.Ю.,Сухова Т.С.	Сухова, Каменский. Биология. Живая природа. 8 класс. Учебник	8	398.970000000000027
485	Сухова Т.С., Сарычева Н.Ю.	Сухова, Каменский. Биология. Живая природа. 8 класс. Рабочая тетрадь. В 2 ч. Часть 1	8	158.949999999999989
486	Сухова Т.С., Сарычева Н.Ю.	Сухова, Каменский. Биология. Живая природа. 8 класс. Рабочая тетрадь. В 2 ч. Часть 2	8	158.949999999999989
487	Сухова Т.С.,Сарычева Н.Ю.,Шаталова С.П. и др.	Сухова, Сарычева. Биология. Живая природа. 9 класс. Учебник	9	398.970000000000027
488	Сухова Т.С	Сухова, Сарычева. Биология. Живая природа. 9 класс. Рабочая тетрадь. В 2 ч. Часть 1	9	158.949999999999989
489	Сухова Т.С	Сухова, Сарычева. Биология. Живая природа. 9 класс. Рабочая тетрадь. В 2 ч. Часть 2	9	158.949999999999989
491	Кузнецова Н.Е.,Титова И.М.,Гара Н.Н.	Кузнецова. Химия. 8 класс. Учебник	8	393.910000000000025
492	Кузнецова Н.Е., Левкин А.Н.	Кузнецова. Химия. 8 класс. Задачник (Левкин)	8	255.969999999999999
493	Гара Н.Н., Ахметов М.А.	Кузнецова. Химия. 8 класс. Рабочая тетрадь (Гара, Ахметов)	8	152.900000000000006
494	Гара Н.Н.	Кузнецова. Химия. 8 класс. Проверочные и контрольные работы (Гара)	8	134.969999999999999
495	Кузнецова Н.Е.,Титова И.М.,Гара Н.Н.	Кузнецова. Химия. 9 класс. Учебник	9	393.910000000000025
496	Кузнецова Н.Е., Левкин А.Н	Кузнецова. Химия. 9 класс. Задачник (Левкин)	9	255.969999999999999
497	Гара Н.Н., Ахметов М.А	Кузнецова. Химия. 9 класс. Рабочая тетрадь (Гара, Ахметов)	9	152.900000000000006
500	Ермолинская Е.А.,Медкова Е.С.,Савенкова Л.Г.	Ермолинская. ИЗО. 5 класс. Учебник (Медкова)	5	363
501	Ермолинская Е.А., Савенкова Л.Г.	Ермолинская. ИЗО. 5 класс. Рабочая тетрадь (Савенкова)	5	159.939999999999998
502	Ермолинская Е.А.,Медкова Е.С.,Савенкова Л.Г.	Ермолинская. ИЗО. 6 класс. Учебник (Медкова)	6	363
503	Ермолинская Е.А., Савенкова Л.Г.	Ермолинская. ИЗО. 6 класс. Рабочая тетрадь	6	159.939999999999998
504	Ермолинская Е.А.,Медкова Е.С.,Савенкова Л.Г.	Ермолинская. ИЗО. 7 класс. Учебник (Медкова)	7	363
505	Ермолинская Е.А., Медкова Е.С., Савенкова Л.Г.	Ермолинская. ИЗО. 8 класс. Учебное пособие (Медкова)	8	363
507	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 5 класс. Учебник	5	346.939999999999998
508	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 6 класс. Учебник	6	346.939999999999998
509	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 7 класс. Учебник	7	346.939999999999998
510	Усачева В.О.,Школяр Л.В.	Усачева, Школяр. Музыка. 8 класс. Учебник	8	346.939999999999998
512	Тищенко А.Т.,Синица Н.В.	Тищенко - Синицы. Технология. 5 кл. Учебник.	5	364.980000000000018
513	Тищенко А.Т.,Синица Н.В.	Тищенко - Синицы. Технология. 6 кл. Учебник.	6	364.980000000000018
514	Тищенко А.Т., Синица Н.В.	Тищенко - Синицы. Технология. 7 кл. Учебник.	7	364.980000000000018
515	Тищенко А.Т., Синица Н.В.	Тищенко - Синицы. Технология. 8-9 кл. Учебник.	8-9	379.939999999999998
516	Тищенко А.Т., Симоненко В.Д.	Технология. Традиционная линия. Тищенко, Симоненко. 5 класс. Индустриальные технологии. Учебное пособие	5	363
517	Синица Н.В., Симоненко В.Д.	Технология. Традиционная линия. Синица, Симоненко. 5 класс. Технологии ведения дома. Учебное пособие	5	363
518	Тищенко А.Т., Буглаева Н.А.	Технология. Традиционная линия. Тищенко, Симоненко. 5 класс. Индустриальные технологии. Рабочая тетрадь	5	163.900000000000006
490	\N	\N	\N	\N
498	\N	\N	\N	\N
519	Синица Н.В., Буглаева Н.А.	Технология. Традиционная линия. Синица, Симоненко. 5 класс. Технологии ведения дома. Рабочая тетрадь	5	163.900000000000006
520	Тищенко А.Т., Симоненко В.Д.	Технология. Традиционная линия. Тищенко, Симоненко. 6 класс. Индустриальные технологии. Учебное пособие	6	363
521	Синица Н.В., Симоненко В.Д.	Технология. Традиционная линия. Синица, Симоненко. 6 класс. Технологии ведения дома. Учебное пособие	6	363
522	Тищенко А.Т., Буглаева Н.А.	Технология. Традиционная линия. Тищенко, Симоненко. 6 класс. Индустриальные технологии. Рабочая тетрадь	6	163.900000000000006
523	Синица Н.В.	Технология. Традиционная линия. Синица, Симоненко. 6 класс. Технологии ведения дома. Рабочая тетрадь	6	163.900000000000006
524	Тищенко А.Т., Симоненко В.Д.	Технология. Традиционная линия. Тищенко, Симоненко. 7 класс. Индустриальные технологии. Учебное пособие	7	363
525	Синица Н.В., Симоненко В.Д.	Технология. Традиционная линия. Синица, Симоненко. 7 класс. Технологии ведения дома. Учебное пособие	7	363
526	Тищенко А.Т., Буглаева Н.А.	Технология. Традиционная линия. Тищенко, Симоненко. 7 класс. Индустриальные технологии. Рабочая тетрадь	7	163.900000000000006
527	Синица Н.В.	Технология. Традиционная линия. Синица, Симоненко. 7 класс. Технологии ведения дома. Рабочая тетрадь	7	163.900000000000006
528	Симоненко В.Д, Электов А.А., Гончаров Б.А., Очинин О.П., Елисеева Е.В., Богатырев А.Н.	Технология. Традиционная линия. Синица, Симоненко. 8 класс. Учебное пособие	8	363
529	Сасова И.А., Павлова М.Б., Гуревич М.И., Дж. Питт. / Под ред. Сасовой И.А.	Сасова, Павлова. Технология. Метод проектов. 5 класс. Учебное пособие	5	367.949999999999989
530	Сасова И.А., Павлова М.Б., Гуревич М.И. / Под ред. Сасовой И.А.	Сасова, Павлова. Технология. Метод проектов. 6 класс. Технологии ведения дома. Учебное пособие	6	367.949999999999989
531	Сасова И.А., Гуревич М.И., Павлова М.Б. / Под ред. Сасовой И.А.	Сасова, Павлова. Технология. Метод проектов. 6 класс. Индустриальные технологии. Учебное пособие	6	367.949999999999989
532	Сасова И.А., Павлова М.Б., Шарутина А.Ю., Гуревич М.И. / Под ред. Сасовой И.А.	Сасова, Павлова. Технология. Метод проектов. 7 класс. Технологии ведения дома. Учебное пособие	7	367.949999999999989
533	Сасова И.А., Гуревич М.И., Павлова М.Б. / Под ред. Сасовой И.А.	Сасова, Павлова. Технология. Метод проектов. 7 класс. Индустриальные технологии. Учебное пособие	7	367.949999999999989
534	Сасова И А., Леонтьев А.В., Капустин В.С. / Под ред. Сасовой И.А.	Сасова, Павлова. Технология. Метод проектов. 8 класс. Учебное пособие	8	367.949999999999989
535	Синица Н.В., Самородский П.С., Симоненко В.Д., Яковенко О.В.	Синица, Самородский. Технология. Универсальная линия. 5 класс. Учебное пособие	5	330.990000000000009
536	Синица Н.В., Самородский П.С., Симоненко В.Д., Яковенко О.В.	Синица, Самородский. Технология. Универсальная линия. 6 класс. Учебное пособие	6	330.990000000000009
537	Синица Н.В., Самородский П.С., Симоненко В.Д., Яковенко О.В.	Синица, Самородский. Технология. Универсальная линия. 7 класс. Учебное пособие	7	330.990000000000009
538	Матяш Н.В., Электов А.А., Симоненко В.Д., Гончаров Б.А., Елисеева Е.В., Богатырев А.Н., Очинин О.П.	Синица, Самородский. Технология. Универсальная линия. 8 класс. Учебное пособие (Матяш, Электов, Симоненко)	8	333.95999999999998
541	Петрова Т.В., Копылов Ю.А., Полянская Н.В., Петров С.С.	Петрова. Физическая культура. 5-7 классы. Учебник (Копылов)	5-7	377.95999999999998
542	Петрова Т.В., Копылов Ю.А., Полянская Н.В., Петров С.С.	Петрова. Физическая культура. 8-9 классы. Учебник (Копылов)	8-9	377.95999999999998
546	Гусарова И.В.	Гусарова. Русский язык. 10 класс. Учебник (базовый, углубленный)	10	390.939999999999998
547	Гусарова И.В., Иванов С.Л.	Гусарова. Русский язык. 10 класс. Рабочая тетрадь. В 2 ч. Часть 1 (базовый, углубленный) (Иванов)	10	224.949999999999989
548	Гусарова И.В., Иванов С.Л.	Гусарова. Русский язык. 10 класс. Рабочая тетрадь. В 2 ч. Часть 2 (базовый, углубленный) (Иванов)	10	224.949999999999989
549	Гусарова И.В.	Гусарова. Русский язык. 11 класс. Учебник (базовый, углубленный)	11	390.939999999999998
551	Ланин Б.А.,Устинова Л.Ю.,Шамчикова В.М.;под ред. Ланина Б.А.	Ланин, Устинова. Литература. 10 класс. Учебник. В 2 ч. Часть 1 (базовый, углубленный)	10	309.980000000000018
499	\N	\N	\N	\N
506	\N	\N	\N	\N
511	\N	\N	\N	\N
539	\N	\N	\N	\N
540	\N	\N	\N	\N
552	Ланин Б.А.,Устинова Л.Ю.,Шамчикова В.М.;под ред. Ланина Б.А.	Ланин, Устинова. Литература. 10 класс. Учебник. В 2 ч. Часть 2 (базовый, углубленный)	10	309.980000000000018
553	Ланин Б.А.,Устинова Л.Ю.,Шамчикова В.М.;под ред. Ланина Б.А.	Ланин, Устинова. Литература. 11 класс. Учебник (базовый, углубленный)	11	382.910000000000025
554	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л.	Москвин, Пуряева. Литература. 10 класс. Учебник	10	429
555	Москвин Г.В.,Пуряева Н.Н.,Ерохина Е.Л	Москвин, Пуряева. Литература. 11 класс. Учебник	11	429
559	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 10 класс. Учебник (базовый) (Маккинли)	10	435.930000000000007
560	Вербицкая М.В., Уайт Л., Фрикер Р., Миндрул О.С.	Вербицкая. Forward. Английский язык. 10 класс. Рабочая тетрадь (базовый) (Миндрул)	10	245.960000000000008
561	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 11 класс. Учебник (базовый) (Миндрул)	11	435.930000000000007
562	Вербицкая М.В., Фрикер Р., Миндрул О.С. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 11 класс. Рабочая тетрадь (базовый) (Миндрул)	11	245.960000000000008
563	Вербицкая М.В., Миндрул О.С., Нечаева Е.Н. / Под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 10-11 классы. Устная часть ЕГЭ по английскому языку. Практикум	10-11	202.949999999999989
566	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 10 класс. Учебник (углубленный)	10	490.930000000000007
567	Вербицкая М.В. и др.; под ред. Вербицкой М.В.	Вербицкая. Forward. Английский язык. 11 класс. Учебник (углубленный)	11	490.930000000000007
570	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 10 класс. Учебник	10	558.909999999999968
571	Дорофеева Н.С., Красова Г.А.	Дорофеева, Красова. Итальянский язык. 11 класс. Учебник	11	558.909999999999968
574	Хейфец В.Л., Федоров О.Д., Хейфец Л.С., Северинов К.М.; под общ. ред. Мясникова В.С.	Хейфец. Всеобщая история. 10 класс. Новейшая история. Учебник (базовый, углубленный)	10	432.95999999999998
575	Измозик В.С., Журавлева О.Н.,Рудник С.Н.;под общ. ред. Тишкова В.А.	Тишков. История России. 10 класс. Учебник. В 2 ч. Часть 1 (Измозик, Журавлева)	10	374
576	Измозик В.С., Журавлева О.Н.,Рудник С.Н.;под общ. ред. Тишкова В.А.	Тишков. История России. 10 класс. Учебник. В 2 ч. Часть 2 (Измозик, Журавлева)	10	374
577	Журавлева О.Н.,Пашкова Т.Н.;под общ. ред. Тишкова В.А.	Тишков. История России. 11 класс. Учебник. В 2 ч. Часть 1 (Журавлева, Пашкова)	11	374
578	Рудник С.Н.,Журавлева О.Н.,Кузин Д.В.;под общ. ред. Тишкова В.А.	Тишков. История России. 11 класс. Учебник. В 2 ч. Часть 2 (Рудник, Журавлева, Кузин)	11	374
580	Бахчиева О.А.	Роза ветров. Бахчиева. География. 10-11 классы. Учебник (базовый, углубленный)	10-11	462.990000000000009
581	Бахчиева О.А.	Бахчиева О.А. География. Экономическая и социальная география мира. 10-11 кл. Атлас(Инст.геогр. РАН)	10-11	166.97999999999999
582	Бахчиева О.А.	Бахчиева О.А. География. Экономическая и социальная география мира. 10-11 кл. Контурные карты.(Инст.геогр. РАН)	10-11	80.9599999999999937
584	Королёва Г.Э., Бурмистрова Т.В.	Королева. Экономика. 10-11 классы. Учебник (базовый) (Бурмистрова)	10-11	396.990000000000009
586	Гринберг Р.С.,Королева Г.Э.,Соболева О.Б.,Цыплакова О.Г.;под общ. ред. Тишкова В.А.	Тишков. Обществознание. 10 класс. Учебник (базовый) (Гринберг, Королёва)	10	419.980000000000018
587	Гаман-Голугвина О.В.,Ковлер А.И.,Пономарева Е.Г. и др.; под общ. ред. Тишкова В.А.	Тишков. Обществознание. 11 класс. Учебник (базовый) (Гаман-Голугвина, Ковлер)	11	419.980000000000018
588	Федоров И.Н., Федорова С.А.	Конституция Российской Федерации. 9-11 классы. Учебное пособие	9-11	279.949999999999989
591	Мерзляк А.Г.,Номировский Д.А.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Алгебра. 10 класс. Учебник (базовый)	10	403.920000000000016
592	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Полонский. Алгебра. 10 класс. Дидактические материалы (базовый)	10	155.97999999999999
593	Мерзляк А.Г.,Номировский Д.А.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Алгебра. 11 класс. Учебник (базовый)	11	403.920000000000016
677	Симоненко В.Д.,Очинин О.П.,Матяш Н.В. и др.	Симоненко, Очинин. Технология. 10-11 классы. Учебник (базовый)	10-11	381.920000000000016
594	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Полонский. Алгебра. 11 класс. Дидактические материалы (базовый)	11	145.969999999999999
595	Мерзляк А.Г.,Номировский Д.А.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Геометрия. 10 класс. Учебник (базовый)	10	380.930000000000007
596	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Полонский. Геометрия. 10 класс. Дидактические материалы (базовый)	10	141.900000000000006
597	Мерзляк А.Г.,Номировский Д.А.,Полонский В.Б.,Якир М.С.;под ред. Подольского В.Е.	Мерзляк, Полонский. Геометрия. 11 класс. Учебник (базовый)	11	380.930000000000007
598	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Полонский. Геометрия. 11 класс. Дидактические материалы (базовый)	11	141.900000000000006
600	Мерзляк А.Г.,Номировский Д.А.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Алгебра. 10 класс. Учебник (углубленный)	10	566.940000000000055
601	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Поляков. Алгебра. 10 класс. Самостоятельные и контрольные работы (углубленный)	10	139.919999999999987
602	Мерзляк А.Г.,Номировский Д.А.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Алгебра. 11 класс. Учебник (углубленный)	11	566.940000000000055
603	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Поляков. Алгебра. 11 класс. Самостоятельные и контрольные работы (углубленный)	11	139.919999999999987
604	Мерзляк А.Г.,Номировский Д.А.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Геометрия. 10 класс. Учебник (углубленный)	10	409.970000000000027
605	Мерзляк А.Г., Полонский В.Б., Рабинович Е.М.	Мерзляк, Поляков. Геометрия. 10 класс. Самостоятельные и контрольные работы (углубленный)	10	134.969999999999999
606	Мерзляк А.Г.,Номировский Д.А.,Поляков В.М.;под ред. Подольского В.Е.	Мерзляк, Поляков. Геометрия. 11 класс. Учебник (углубленный)	11	409.970000000000027
607	Мерзляк А.Г.; Полонский В.Б.; Рабинович Е.М.	Мерзляк, Поляков. Геометрия. 11 класс. Самостоятельные и контрольные работы (углубленный)	11	134.969999999999999
610	Грачёв А.В., Погожев В.А., Салецкий А.М., Боков П.Ю.	Грачев, Погожев. Физика. 10 класс. Учебник (базовый, углубленный)	10	459.910000000000025
611	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 10 класс. Рабочая тетрадь. В 4 ч. Часть 1 (углубленный)	10	146.960000000000008
612	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 10 класс. Рабочая тетрадь. В 4 ч. Часть 2 (углубленный)	10	146.960000000000008
613	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 10 класс. Рабочая тетрадь. В 4 ч. Часть 3 (углубленный)	10	146.960000000000008
614	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 10 класс. Рабочая тетрадь. В 4 ч. Часть 4 (углубленный)	10	146.960000000000008
615	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 10 класс. Тетрадь для лабораторных работ	10	168.960000000000008
616	Грачёв А.В., Погожев В.А., Салецкий А.М., Боков П.Ю.	Грачев, Погожев. Физика. 11 класс. Учебник (базовый, углубленный)	11	459.910000000000025
617	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 11 класс. Рабочая тетрадь. В 4 ч. Часть 1 (углубленный)	11	146.960000000000008
618	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 11 класс. Рабочая тетрадь. В 4 ч. Часть 2 (углубленный)	11	146.960000000000008
619	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 11 класс. Рабочая тетрадь. В 4 ч. Часть 3 (углубленный)	11	146.960000000000008
620	Грачёв А.В., Погожев В.А., Боков П.Ю. и др.	Грачев, Погожев. Физика. 11 класс. Рабочая тетрадь. В 4 ч. Часть 4 (углубленный)	11	146.960000000000008
621	Грачев А.В., Погожев В.А.	Грачев, Погожев. Физика. 11 класс. Тетрадь для лабораторных работ	11	168.960000000000008
623	Кузнецова Н.Е., Гара Н.Н.	Кузнецова. Химия. 10 класс. Учебное пособие (базовый) (Гара)	10	387.970000000000027
624	Кузнецова Н.Е., Левкин А.Н.	Кузнецова. Химия. 10 класс. Задачник (Левкин)	10	282.920000000000016
625	Кузнецова Н.Е., Левкин А.Н., Шаталов М.А.	Кузнецова. Химия. 11 класс. Учебное пособие (базовый) (Левкин)	11	387.970000000000027
626	Левкин А.Н., Кузнецова Н.Е.	Кузнецова. Химия. 11 класс. Задачник (базовый) (Левкин)	11	282.920000000000016
628	Кузнецова Н.Е., Гара Н.Н., Титова И.М.	Кузнецова. Химия. 10 класс. Учебное пособие (углубленный) (Гара)	10	427.899999999999977
629	Кузнецова Н.Е., Литвинова Т.Н., Левкин А.Н.	Кузнецова. Химия. 11 класс. Учебное пособие (углубленный) (Литвинова)	11	427.899999999999977
3	\N	\N	\N	\N
4	\N	\N	\N	\N
631	Пономарева И.Н.,Корнилова О.А.,Лощилина Т.Е. и др.;под ред. Пономаревой И.Н.	Пономарева, Корнилова. Биология. 10 класс. Учебник (базовый)	10	385
632	Козлова Т.А., Пономарева И.Н.	Пономарева, Козлова. Биология. 10 класс. Рабочая тетрадь	10	165.990000000000009
633	Пономарева И.Н.,Корнилова О.А.,Лощилина Т.Е. и др.;под ред. Пономаревой И.Н.	Корнилова, Лощилина. Биология. 11 класс. Учебник (базовый)	11	385
634	Пономарева И.Н., Козлова Т.А., Корнилова О.А.	Пономарева, Козлова. Биология. 11 класс. Рабочая тетрадь	11	165.990000000000009
635	Каменский А.А., Сарычева Н.Ю., Исакова С.Н.	Сухова, Каменский, Сарычева. Биология. Живая природа. 10 класс. Учебное пособие (базовый)	10	398.970000000000027
636	Каменский А.А., Сарычева Н.Ю., Исакова С.Н.	Сухова, Каменский, Сарычева. Биология. Живая природа. 11 класс. Учебное пособие (базовый)	11	398.970000000000027
638	Пономарева И.Н., Корнилова О.А., Симонова Л.В. / Под ред. И.Н. Пономаревой	Пономарева, Корнилова. Биология. 10 класс. Учебное пособие (углубленный)	10	429.990000000000009
639	Пономарева И.Н., Корнилова О.А., Симонова Л.В. / Под ред. Пономаревой И.Н.	Пономарева, Корнилова. Биология. 11 класс. Учебное пособие (углубленный)	11	429.990000000000009
642	Матвеев А.П., Палехова Е.С.	Матвеев. Физическая культура. 10-11 классы. Учебник (Палехова)	10-11	389.949999999999989
644	Миркин Б.М.,Наумова Л.Г.,Суматохин С.В.	Миркин. Экология. 10-11 классы. Учебник (базовый) (Наумова)	10-11	422.949999999999989
646	Ким С.В.,Горский В.А.	Ким, Горский. ОБЖ. 10-11 классы. Учебник	10-11	456.939999999999998
647	Алексеев С.В., Данченко С.П., Костецкая Г.А., Ладнов С.Н.	Алексеев. ОБЖ. 10-11 классы. Учебное пособие (базовый) (Данченко, Костецкая)	10-11	449.899999999999977
652	Виноградова Н.Ф., Власенко В.И., Поляков А.В.	Виноградова. Основы духовно-нравственной культуры народов России (ОДНК). 5 класс. Учебник	5	381.920000000000016
653	Виноградова Н.Ф.	Виноградова. Основы духовно-нравственной культуры народов России (ОДНК). 5 класс. Рабочая тетрадь	5	156.969999999999999
654	Виноградова Н.Ф.	Виноградова. Основы духовно-нравственной культуры народов России (ОДНК). 5 класс. 2й год обучения. Рабочая тетрадь	5	167.969999999999999
657	Былова А.М.,Шорина Н.И.;под ред. Черновой Н.М.	Экология. 6 класс. Экология растений. Учебник (Былова, Шорина)	6	372.899999999999977
658	Бабенко В.Г.,Богомолов Д.В.,Шаталова С.П.,Шубин А.О.;под ред. Бабенко В.Г.	Экология. 7 класс. Экология животных. Учебник (Бабенко, Богомолов)	7	372.899999999999977
659	Федорова М.З.,Кучменко В.С.,Воронина Г.А.	Экология. 8 класс. Экология человека. Культура здоровья. Учебник (Федорова, Кучменко)	8	372.899999999999977
660	Швец И.М.,Добротина Н.А.	Экология. 9 класс. Биосфера и человечество. Учебник (Швец, Добротина)	9	372.899999999999977
664	Преображенская Н.Г.,Кодукова И.В.	Преображенская. Черчение. 9 класс. Учебник	9	370.920000000000016
665	Преображенская Н.Г.	Преображенская. Черчение. 7-9 классы. Основные правила оформления чертежей. Построение чертежа "плоской" детали. Рабочая тетрадь №1	7-9	137.939999999999998
666	Преображенская Н.Г.	Преображенская. Черчение. 7-9 классы. Геометрические построения. Рабочая тетрадь №2	7-9	137.939999999999998
667	Преображенская Н.Г.	Преображенская. Черчение. 8-9 классы. Прямоугольное проецирование и построение комплексного чертежа. Рабочая тетрадь №3	7-9	137.939999999999998
668	Преображенская Н.Г., Кучукова Т.В.	Преображенская. Черчение. 7-9 классы. Аксонометрические проекции. Рабочая тетрадь №4 (Кучукова)	7-9	137.939999999999998
669	Преображенская Н.Г., Преображенская И.Ю	Преображенская. Черчение. 7-9 классы. Сечение. Рабочая тетрадь №5	7-9	137.939999999999998
670	Преображенская Н.Г., Кучукова Т.В.	Преображенская. Черчение. 7-9 классы. Разрезы. Рабочая тетрадь №6 (Кучукова)	7-9	137.939999999999998
671	Преображенская Н.Г., Кучукова Т.В.	Преображенская. Черчение. 9 класс. Чертежи типовых соединений деталей. Рабочая тетрадь №7 (Кучукова)	7-9	137.939999999999998
673	Виноградова Н.Ф.,Смирнов Д.В.,Сидоренко Л.В.,Таранин А.Б.	Виноградова. ОБЖ. 5-6 классы. Учебник	5-6	393.910000000000025
674	Виноградова Н.Ф.,Смирнов Д.В.,Сидоренко Л.В.,Таранин А.Б.	Виноградова. ОБЖ. 7-9 классы. Учебник	7-9	393.910000000000025
1	\N	\N	\N	\N
2	\N	\N	\N	\N
543	\N	\N	\N	\N
544	\N	\N	\N	\N
545	\N	\N	\N	\N
550	\N	\N	\N	\N
556	\N	\N	\N	\N
557	\N	\N	\N	\N
558	\N	\N	\N	\N
564	\N	\N	\N	\N
565	\N	\N	\N	\N
568	\N	\N	\N	\N
569	\N	\N	\N	\N
572	\N	\N	\N	\N
573	\N	\N	\N	\N
579	\N	\N	\N	\N
583	\N	\N	\N	\N
585	\N	\N	\N	\N
589	\N	\N	\N	\N
590	\N	\N	\N	\N
599	\N	\N	\N	\N
608	\N	\N	\N	\N
609	\N	\N	\N	\N
622	\N	\N	\N	\N
627	\N	\N	\N	\N
630	\N	\N	\N	\N
637	\N	\N	\N	\N
640	\N	\N	\N	\N
641	\N	\N	\N	\N
643	\N	\N	\N	\N
645	\N	\N	\N	\N
648	\N	\N	\N	\N
649	\N	\N	\N	\N
650	\N	\N	\N	\N
651	\N	\N	\N	\N
655	\N	\N	\N	\N
656	\N	\N	\N	\N
661	\N	\N	\N	\N
662	\N	\N	\N	\N
663	\N	\N	\N	\N
672	\N	\N	\N	\N
675	\N	\N	\N	\N
676	\N	\N	\N	\N
\.


--
-- Data for Name: book_xxi; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.book_xxi (id, author, name, grade, price) FROM stdin;
1	Соловейчик М.С., Бетенькова Н.М., Кузьменко Н.С., Курлыгина О.Е.	Букварь (в 2-х частях), ч. 1	1	410
2	Соловейчик М.С., Бетенькова Н.М., Кузьменко Н.С., Курлыгина О.Е.	Букварь (в 2-х частях), ч. 2	1	410
3	Соловейчик М.С., Кузьменко Н.С., 	Русский язык	1	410
4	Соловейчик М.С., Кузьменко Н.С., 	Русский язык  (в 2-х частях), ч. 1	2	410
5	Соловейчик М.С., Кузьменко Н.С., 	Русский язык  (в 2-х частях), ч. 2	2	410
6	Соловейчик М.С., Кузьменко Н.С., 	Русский язык  (в 2-х частях), ч. 1	3	410
7	Соловейчик М.С., Кузьменко Н.С., 	Русский язык  (в 2-х частях), ч. 2	3	410
8	Соловейчик М.С., Кузьменко Н.С., 	Русский язык  (в 2-х частях), ч. 1	4	410
9	Соловейчик М.С., Кузьменко Н.С., 	Русский язык  (в 2-х частях), ч. 2	4	410
10	Кубасова О.В.	Литературное чтение	1	410
11	Кубасова О.В.	Литературное чтение (в 3-х частях), ч. 1	2	395
12	Кубасова О.В.	Литературное чтение (в 3-х частях), ч. 2	2	395
13	Кубасова О.В.	Литературное чтение (в 3-х частях), ч. 3	2	395
14	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 1	3	392
15	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 2	3	392
16	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 3	3	392
17	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 4	3	392
18	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 1	4	392
19	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 2	4	392
20	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 3	4	392
21	Кубасова О.В.	Литературное чтение (в 4-х частях), ч. 4	4	392
22	Поглазова О.Т., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 1	1	420
23	Поглазова О.Т., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 2	1	420
24	Поглазова О.Т., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 1	2	420
25	Поглазова О.Т., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 2	2	420
26	Поглазова О.Т., Ворожейкина Н.И., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 1	3	416
27	Поглазова О.Т., Ворожейкина Н.И., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 2	3	416
28	Поглазова О.Т., Ворожейкина Н.И., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 1	4	416
29	Поглазова О.Т., Ворожейкина Н.И., Шилин В.Д.	Окружающий мир  (в 2-х частях), ч. 2	4	416
30	Конышева Н.М.	Технология	1	414
31	Конышева Н.М.	Технология	2	414
32	Конышева Н.М.	Технология	3	414
33	Конышева Н.М.	Технология	4	414
34	Красильникова М.С., Яшмолкина О.Н., Нехаева О.И.	Музыка	1	425
35	Красильникова М.С., Яшмолкина О.Н., Нехаева О.И.	Музыка	2	425
36	Красильникова М.С., Яшмолкина О.Н., Нехаева О.И.	Музыка	3	425
37	Красильникова М.С., Яшмолкина О.Н., Нехаева О.И.	Музыка	4	425
38	Нателаури Н.К., Маранин С.С.	Информатика (в 2-х частях), ч. 1	2	392
39	Нателаури Н.К., Маранин С.С.	Информатика (в 2-х частях), ч. 2	2	392
40	Нателаури Н.К., Маранин С.С.	Информатика (в 2-х частях), ч. 1	3	392
41	Нателаури Н.К., Маранин С.С.	Информатика (в 2-х частях), ч. 2	3	392
42	Нателаури Н.К., Маранин С.С.	Информатика (в 2-х частях), ч. 1	4	392
43	Нателаури Н.К., Маранин С.С.	Информатика (в 2-х частях), ч. 2	4	392
44	Истомина Н.Б.	Математика (в 2-х частях), ч. 1	1	367
45	Истомина Н.Б.	Математика (в 2-х частях), ч. 2	1	367
46	Истомина Н.Б.	Математика (в 2-х частях), ч. 1	2	367
47	Истомина Н.Б.	Математика (в 2-х частях), ч. 2	2	367
48	Истомина Н.Б.	Математика (в 2-х частях), ч. 1	3	367
49	Истомина Н.Б.	Математика (в 2-х частях), ч. 2	3	367
50	Истомина Н.Б.	Математика (в 2-х частях), ч. 1	4	367
51	Истомина Н.Б.	Математика (в 2-х частях), ч. 2	4	367
53	Истомина Н.Б.	Математика 	5	385
54	Истомина Н.Б.	Математика 	6	350
55	Конышева Н.М.	Технология ведения дома	5	360
56	Конышева Н.М.	Технология ведения дома	6	360
57	Конышева Н.М.	Технология ведения дома	7	360
58	Конышева Н.М.	Технология ведения дома	8	360
108	Кубасова О.В.	Литературное чтение	3	164
60	Кузьменко Н.С., Бетенькова Н.М.	Пропись (в 4-х частях), ч. 1	1	118
61	Кузьменко Н.С., Бетенькова Н.М.	Пропись (в 4-х частях), ч. 2	1	118
62	Кузьменко Н.С., Бетенькова Н.М.	Пропись (в 4-х частях), ч. 3	1	118
63	Кузьменко Н.С., Бетенькова Н.М.	Пропись (в 4-х частях), ч. 4	1	118
64	Соловейчик М.С., Кузьменко Н.С., Курлыгина О.Е., Самедова А.И.	Учусь быть читателем. Книга для чтения в период обучения грамоте	1	394
65	Соловейчик М.С., Кузьменко Н.С.	Русский язык	1	140
66	Соловейчик М.С., Кузьменко Н.С.	Играю и учусь. Тетрадь для внеурочной работы	1	170
67	Сычева М.В., Мали Л.Д., под ред. Соловейчик М.С.	Русский язык	1	164
68	Соловейчик М.С., Кузьменко Н.С.	Русский язык	1	150
69	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 1	2	164
70	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 2	2	164
71	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 2	2	164
72	Корешкова Т.В., под. Ред. Соловейчик М.С.	Потренируйся! (в 2-х частях), ч. 1	2	164
73	Корешкова Т.В., под. Ред. Соловейчик М.С.	Потренируйся! (в 2-х частях), ч. 2	2	164
74	Корешкова Т.В., под. Ред. Соловейчик М.С.	Русский язык (в 2-х частях), ч. 1. Тренировочные задания	2	164
75	Корешкова Т.В., под. Ред. Соловейчик М.С.	Русский язык (в 2-х частях), ч. 2. Контрольные задания	2	164
76	Соловейчик М.С., Кузьменко Н.С.	Русский язык	2	150
77	Харченко О.О., Кузьменко Н.С., Курлыгина О.Е.	Словесный конструктор. Тетрадь для внеурочной работы	2	150
78	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 1	3	164
79	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 2	3	164
80	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 2	3	164
81	Корешкова Т.В., под. Ред. Соловейчик М.С.	Потренируйся! (в 2-х частях), ч. 1	3	164
82	Корешкова Т.В., под. Ред. Соловейчик М.С.	Потренируйся! (в 2-х частях), ч. 2	3	164
83	Корешкова Т.В., под. Ред. Соловейчик М.С.	Русский язык (в 2-х частях), ч. 1. Тренировочные задания	3	164
84	Корешкова Т.В., под. Ред. Соловейчик М.С.	Русский язык (в 2-х частях), ч. 2. Контрольные задания	3	164
85	Соловейчик М.С., Кузьменко Н.С.	Русский язык	3	150
86	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 1	4	164
87	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 2	4	164
88	Соловейчик М.С., Кузьменко Н.С.	Русский язык (в 3-х частях), ч. 2	4	164
89	Корешкова Т.В., под. Ред. Соловейчик М.С.	Потренируйся! (в 2-х частях), ч. 1	4	164
90	Корешкова Т.В., под. Ред. Соловейчик М.С.	Потренируйся! (в 2-х частях), ч. 2	4	164
91	Корешкова Т.В., под. Ред. Соловейчик М.С.	Русский язык (в 2-х частях), ч. 1. Тренировочные задания	4	164
92	Корешкова Т.В., под. Ред. Соловейчик М.С.	Русский язык (в 2-х частях), ч. 2. Контрольные задания	4	164
93	Соловейчик М.С., Кузьменко Н.С.	Русский язык	4	150
94	Корешкова Т.В., под. Ред. Соловейчик М.С.	Совершенствуем свои умения	4	165
95	Соловейчик М.С., Кузьменко Н.С., Корешкова Т.В.	Совершенствуем орфографические умения	4	165
96	Кубасова О.В.	Литературное чтение	1	164
97	Кубасова О.В.	Я хочу читать. Книга для чтения к учебнику	1	407
98	Кубасова О.В.	Литературное чтение	1	164
99	Кубасова О.В.	Литературное чтение	1	150
100	Кубасова О.В.	Литературное чтение (в 2-х частях), ч. 1	2	164
101	Кубасова О.В.	Литературное чтение (в 2-х частях), ч. 2	2	164
102	Кубасова О.В.	Я хочу читать. Книга для чтения к учебнику	2	407
103	Кубасова О.В.	Литературное чтение	2	164
104	Кубасова О.В.	Литературное чтение	2	150
105	Кубасова О.В.	Литературное чтение (в 2-х частях), ч. 1	3	164
106	Кубасова О.В.	Литературное чтение (в 2-х частях), ч. 2	3	164
107	Кубасова О.В.	Я хочу читать. Книга для чтения к учебнику	3	407
109	Кубасова О.В.	Литературное чтение	3	150
110	Кубасова О.В.	Литературное чтение (в 2-х частях), ч. 1	4	164
111	Кубасова О.В.	Литературное чтение (в 2-х частях), ч. 2	4	164
112	Кубасова О.В.	Я хочу читать. Книга для чтения к учебнику	4	407
113	Кубасова О.В.	Литературное чтение	4	164
114	Кубасова О.В.	Литературное чтение	4	150
115	Кубасова О.В.	Проверочно-тренировочные работы	4	207
116	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 1	1	164
117	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 2	1	164
118	Истомина Н.Б., Шмырева Г.Г.	Мои учебные достижения	1	164
119	Истомина Н.Б., Виноградова Е.П., Редько З.Б.	Учимся решать комбинаторные  задачи	1-2	140
120	Истомина Н.Б., Тихонова Н.Б.	Учимся решать логические  задачи	1-2	140
121	Истомина Н.Б., Редько З.Б.	Наглядная геометрия	1	235
122	Истомина Н.Б.	Учимся решать задачи	1	140
123	Истомина Н.Б.	Математика	1	150
124	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 1	2	164
125	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 2	2	164
126	Истомина Н.Б., Редько З.Б., Шмырева Г.Г.	Мои учебные достижения	2	164
127	Истомина Н.Б., Горина О.П.	Математика	2	172
128	Истомина Н.Б.	Наглядная геометрия	2	218
129	Истомина Н.Б.	Учимся решать задачи	2	140
130	Истомина Н.Б.	Математика	2	150
131	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 1	3	164
132	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 2	3	164
133	Истомина Н.Б., Горина О.П., Шмырева Г.Г.	Мои учебные достижения	3	164
134	Истомина Н.Б., Горина О.П.	Математика	3	172
135	Истомина Н.Б., Виноградова Е.П., Редько З.Б.	Учимся решать комбинаторные  задачи	3	140
136	Истомина Н.Б., Тихонова Н.Б.	Учимся решать логические  задачи	3	140
137	Истомина Н.Б., Редько З.Б.	Наглядная геометрия	3	235
138	Истомина Н.Б.	Учимся решать задачи	3	140
139	Истомина Н.Б.	Математика	3	150
140	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 1	4	164
141	Истомина Н.Б., Редько З.Б.	Математика (в 2-х частях), ч. 2	4	164
142	Истомина Н.Б., Горина О.П., редько З.Б.	Мои учебные достижения	4	164
143	Истомина Н.Б., Горина О.П.	Математика	4	172
144	Истомина Н.Б., Виноградова Е.П., Редько З.Б., Тихонова Н.Б.	Учимся решать комбинаторные  задачи	4	140
145	Истомина Н.Б., Тихонова Н.Б.	Учимся решать логические  задачи	4	140
146	Истомина Н.Б., Редько З.Б.	Наглядная геометрия	4	235
147	Истомина Н.Б.	Учимся решать задачи	4	140
148	Истомина Н.Б.	Математика	4	150
149	Истомина Н.Б., Тихонова Н.Б.	Величины. Длина, площадь, объём (вместимость)	4	165
150	Истомина Н.Б., Тихонова Н.Б.	Величины. Время, масса	4	165
151	Истомина Н.Б., Тихонова Н.Б.	Развиваем пространственное мышление	4	165
152	Истомина Н.Б., Тихонова Н.Б.	Арифметические действия. Устные и письменные вычисления	4	165
153	Истомина Н.Б., Тихонова Н.Б., смолеусова Т.В.	Задачи. Нестандартные подходы к решению	4	165
154	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 1	1	165
155	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 2	1	165
156	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 1	2	165
157	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 2	2	165
158	Поглазова О.Т., Шилин В.Д.	Окружающий мир	2	165
159	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 1	3	165
160	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 2	3	165
161	Поглазова О.Т., Шилин В.Д.	Окружающий мир	3	175
162	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 1	4	165
163	Поглазова О.Т., Шилин В.Д.	Окружающий мир (в 2-х частях), ч. 2	4	165
164	Поглазова О.Т., Шилин В.Д.	Окружающий мир	4	175
165	Поглазова О.Т.	Окружающий мир	1-4	230
166	Поглазова О.Т., Миронова М.В.	Проверяем свои знания и умения	4	207
167	Конышева Н.М.	Технология (в 2-х частях), ч. 1	1	174
168	Конышева Н.М.	Технология (в 2-х частях), ч. 2	1	174
169	Конышева Н.М.	Технология (в 2-х частях), ч. 1	2	174
170	Конышева Н.М.	Технология (в 2-х частях), ч. 2	2	174
171	Конышева Н.М.	Технология (в 2-х частях), ч. 1	3	174
172	Конышева Н.М.	Технология (в 2-х частях), ч. 2	3	174
173	Конышева Н.М.	Технология (в 2-х частях), ч. 1	4	174
174	Конышева Н.М.	Технология (в 2-х частях), ч. 2	4	174
175	Конышева Н.М.	Технология 	1-4	207
176	Красильникова М.С., Яшмолкина О.Н., Нехаева О.И.	Музыкальный альбом  (в 2-х частях), ч. 1	1	136
177	Красильникова М.С., Яшмолкина О.Н., Нехаева О.И.	Музыкальный альбом  (в 2-х частях), ч. 2	1	136
178	Копцева Т.А.	Творческая папка	1	356
179	Копцева Т.А.	Творческая папка	2	356
180	Копцева Т.А.	Творческая папка	3	356
181	Копцева Т.А.	Творческая папка	4	356
182	Кондратьева О.Б.	Информатика	2	164
183	Кондратьева О.Б.	Информатика	3	164
184	Кондратьева О.Б.	Информатика	4	164
185	Истомина Н.Б., Воителева Г.В.	Математика (в 3-х частях), ч. 1	5	138
186	Истомина Н.Б., Воителева Г.В.	Математика (в 3-х частях), ч. 2	5	138
187	Истомина Н.Б., Воителева Г.В.	Математика (в 3-х частях), ч. 3	5	138
188	Истомина Н.Б., Воителева Г.В.	Математика (в 2-х частях), ч. 1	6	138
189	Истомина Н.Б., Воителева Г.В.	Математика (в 2-х частях), ч. 2	6	138
190	Истомина Н.Б., Подходова Н.С., Тихонова Н.Б.	Математика: Наглядная геометрия. Учебное пособие для 5 класса	5	235
52	\N	\N	\N	\N
59	\N	\N	\N	\N
\.


--
-- Data for Name: manager; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.manager (id, region, phone, email, name) FROM stdin;
1	Владимир	+7 (920) 924-31-17, (4922) 41-09-94	maria190110@yandex.ru	Гринь Мария Андреевна
2	Вязники	+7 (910) 772-61-29б (4922) 30-64-55	elena300388@yandex.ru	Панеева Елена Александровна
3	Гороховец	+7 (910) 772-61-29б (4922) 30-64-55	elena300388@yandex.ru	Панеева Елена Александровна
4	Ковров	+7 (910) 772-61-29б (4922) 30-64-55	elena300388@yandex.ru	Панеева Елена Александровна
5	Камешки	+7 (910) 772-61-29б (4922) 30-64-55	elena300388@yandex.ru	Панеева Елена Александровна
6	Суздаль	+7 (910) 772-61-29б (4922) 30-64-55	elena300388@yandex.ru	Панеева Елена Александровна
7	Гусь Хрустальный	+7 (915) 778-56-06, (4922) 31-29-82	katya302018@yandex.ry	Анохина Екатерина Константиновна
8	Муром	+7 (915) 778-56-06, (4922) 31-29-82	katya302018@yandex.ry	Анохина Екатерина Константиновна
9	Меленки	+7 (915) 778-56-06, (4922) 31-29-82	katya302018@yandex.ry	Анохина Екатерина Константиновна
10	Радужный	+7 (915) 778-56-06, (4922) 31-29-82	katya302018@yandex.ry	Анохина Екатерина Константиновна
11	Селиваново	+7 (915) 778-56-06, (4922) 31-29-82	katya302018@yandex.ry	Анохина Екатерина Константиновна
12	Судогда	+7 (915) 778-56-06, (4922) 31-29-82	katya302018@yandex.ry	Анохина Екатерина Константиновна
13	Александров	+7 (915) 760-43-08, (4922) 21-00-51	evgenia27092014@yandex.ru	Запруднова Евгения Владимировна
14	Киржач	+7 (915) 760-43-08, (4922) 21-00-51	evgenia27092014@yandex.ru	Запруднова Евгения Владимировна
15	Кольчугино	+7 (915) 760-43-08, (4922) 21-00-51	evgenia27092014@yandex.ru	Запруднова Евгения Владимировна
16	Петушки	+7 (915) 760-43-08, (4922) 21-00-51	evgenia27092014@yandex.ru	Запруднова Евгения Владимировна
17	Собинка	+7 (915) 760-43-08, (4922) 21-00-51	evgenia27092014@yandex.ru	Запруднова Евгения Владимировна
18	Юрьев Польский	+7 (915) 760-43-08, (4922) 21-00-51	evgenia27092014@yandex.ru	Запруднова Евгения Владимировна
\.


--
-- Data for Name: order; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public."order" (id, "user", date, publisher, formed) FROM stdin;
6	3	2020-04-03	7	t
5	3	2020-04-03	3	t
4	3	2020-04-03	7	t
7	3	2020-04-03	3	t
3	3	2020-04-03	3	t
2	3	2020-04-03	3	t
1	3	2020-04-03	3	t
8	3	2020-04-03	3	t
9	3	2020-04-07	3	f
10	3	2020-04-07	5	f
11	3	2020-04-22	1	f
12	3	2020-04-29	1	f
13	3	2020-04-29	1	f
\.


--
-- Data for Name: order_book; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.order_book (id, "order", book, count) FROM stdin;
3	5	1077	1
4	7	1077	2
5	8	1077	3
6	8	1079	1
7	8	1080	1
8	9	1077	1
9	9	1078	3
10	9	1079	2
14	10	8	1
15	10	9	2
16	10	20	1
17	12	5	1
18	12	71	1
19	13	7	1
20	13	8	1
21	13	9	2
22	13	12	1
\.


--
-- Data for Name: publisher; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.publisher (id, name, description, image) FROM stdin;
1	Вентана Граф	\N	/img/publisher/ventana.jpg
2	Академкнига	\N	/img/publisher/academ.jpg
3	Дрофа	\N	/img/publisher/drofa.jpg
4	Бином	\N	/img/publisher/binom.jpg
5	Ассоциация 21 век	\N	/img/publisher/XXI.jpg
6	Русское слово	\N	/img/publisher/rusword.jpg
7	Просвещение	Учебники ФП	/img/publisher/prosvet.jpg 
8	Просвещение	Шлейф	/img/publisher/prosvet.jpg 
9	Просвещение	Внеурочная деятельность	/img/publisher/prosvet.jpg 
10	Просвещение	Для слабовидящих	/img/publisher/prosvet.jpg 
11	Просвещение	Учебные пособия	/img/publisher/prosvet.jpg 
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: sidnystorm
--

COPY public.users (id, login, password, role, name, address, inn, kpp, ogrn, okpo, bank, bik, bank_address, checking_account, correspondent_account, phone, email, manager) FROM stdin;
3	admin	$2a$10$ENhm1qM8dRc1K36k5qoGjOkK.835kE1Aik9K2bI3HbnTuzNtuSAmm	ADMIN	test upd	sdf	1234567890	123456789	1234567890987	12345678	sdfsdf	123123123	sadfasdf	123asdf	asdf345	tel	mail	1
\.


--
-- Name: book_academ_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_academ_id_seq', 478, true);


--
-- Name: book_binom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_binom_id_seq', 64132, true);


--
-- Name: book_drofa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_drofa_id_seq', 1022, true);


--
-- Name: book_prosvet_bl_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_prosvet_bl_id_seq', 543, true);


--
-- Name: book_prosvet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_prosvet_id_seq', 821, true);


--
-- Name: book_prosvet_me_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_prosvet_me_id_seq', 144, true);


--
-- Name: book_prosvet_sh_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_prosvet_sh_id_seq', 1350, true);


--
-- Name: book_prosvet_vu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_prosvet_vu_id_seq', 53, true);


--
-- Name: book_ruword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_ruword_id_seq', 311, true);


--
-- Name: book_ventana_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_ventana_id_seq', 677, true);


--
-- Name: book_xxi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.book_xxi_id_seq', 63711, true);


--
-- Name: manager_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.manager_id_seq', 18, true);


--
-- Name: order_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.order_book_id_seq', 22, true);


--
-- Name: order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.order_id_seq', 13, true);


--
-- Name: publisher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.publisher_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sidnystorm
--

SELECT pg_catalog.setval('public.users_id_seq', 336, true);


--
-- Name: book_academ book_academ_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_academ
    ADD CONSTRAINT book_academ_pkey PRIMARY KEY (id);


--
-- Name: book_binom book_binom_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_binom
    ADD CONSTRAINT book_binom_pkey PRIMARY KEY (id);


--
-- Name: book_drofa book_drofa_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_drofa
    ADD CONSTRAINT book_drofa_pkey PRIMARY KEY (id);


--
-- Name: book_prosvet_bl book_prosvet_bl_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_bl
    ADD CONSTRAINT book_prosvet_bl_pkey PRIMARY KEY (id);


--
-- Name: book_prosvet_me book_prosvet_me_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_me
    ADD CONSTRAINT book_prosvet_me_pkey PRIMARY KEY (id);


--
-- Name: book_prosvet_fp book_prosvet_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_fp
    ADD CONSTRAINT book_prosvet_pkey PRIMARY KEY (id);


--
-- Name: book_prosvet_sh book_prosvet_sh_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_sh
    ADD CONSTRAINT book_prosvet_sh_pkey PRIMARY KEY (id);


--
-- Name: book_prosvet_vu book_prosvet_vu_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_prosvet_vu
    ADD CONSTRAINT book_prosvet_vu_pkey PRIMARY KEY (id);


--
-- Name: book_ruword book_ruword_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_ruword
    ADD CONSTRAINT book_ruword_pkey PRIMARY KEY (id);


--
-- Name: book_ventana book_ventana_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_ventana
    ADD CONSTRAINT book_ventana_pkey PRIMARY KEY (id);


--
-- Name: book_xxi book_xxi_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.book_xxi
    ADD CONSTRAINT book_xxi_pkey PRIMARY KEY (id);


--
-- Name: manager manager_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_pkey PRIMARY KEY (id);


--
-- Name: order_book order_book_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.order_book
    ADD CONSTRAINT order_book_pkey PRIMARY KEY (id);


--
-- Name: order order_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_pkey PRIMARY KEY (id);


--
-- Name: publisher publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (id);


--
-- Name: users users_login_key; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: order_book order_book_oorder; Type: FK CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.order_book
    ADD CONSTRAINT order_book_oorder FOREIGN KEY ("order") REFERENCES public."order"(id) ON DELETE CASCADE;


--
-- Name: order order_publiher; Type: FK CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_publiher FOREIGN KEY (publisher) REFERENCES public.publisher(id);


--
-- Name: order order_user; Type: FK CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public."order"
    ADD CONSTRAINT order_user FOREIGN KEY ("user") REFERENCES public.users(id) ON DELETE CASCADE;


--
-- Name: users users_manager; Type: FK CONSTRAINT; Schema: public; Owner: sidnystorm
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_manager FOREIGN KEY (manager) REFERENCES public.manager(id);


--
-- PostgreSQL database dump complete
--

