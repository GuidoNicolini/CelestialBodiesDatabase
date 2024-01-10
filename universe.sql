--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: animal; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.animal (
    animal_id integer NOT NULL,
    name character varying(60) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.animal OWNER TO freecodecamp;

--
-- Name: animals_animals_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.animals_animals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.animals_animals_id_seq OWNER TO freecodecamp;

--
-- Name: animals_animals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.animals_animals_id_seq OWNED BY public.animal.animal_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_anomalies integer,
    has_quasar boolean,
    aproximated_age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    temperature numeric(10,2),
    has_aliens boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_species integer,
    temperature numeric(10,2),
    description text,
    is_dangerous boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    galaxy_id integer,
    temperature numeric(10,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: animal animal_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal ALTER COLUMN animal_id SET DEFAULT nextval('public.animals_animals_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: animal; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.animal VALUES (1, ' Humano  ', 1);
INSERT INTO public.animal VALUES (2, ' Marciano  ', 2);
INSERT INTO public.animal VALUES (3, ' Jupitarences  ', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Via Lactea', 2, false, 7500);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 7, false, 9845);
INSERT INTO public.galaxy VALUES (3, 'Calios', 9, false, 984);
INSERT INTO public.galaxy VALUES (4, 'Shamisen', 0, true, 14572);
INSERT INTO public.galaxy VALUES (5, 'Paradian', 89, true, 3679);
INSERT INTO public.galaxy VALUES (6, 'Newman', 700, false, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, ' Tierra  ', 10.10, true, 6);
INSERT INTO public.moon VALUES (2, ' Marte  ', 20.20, false, 7);
INSERT INTO public.moon VALUES (3, ' Jupiter  ', 30.30, true, 8);
INSERT INTO public.moon VALUES (4, ' Luna  ', 40.40, false, 1);
INSERT INTO public.moon VALUES (5, ' Io  ', 50.50, true, 2);
INSERT INTO public.moon VALUES (6, ' Yuno  ', 60.60, false, 3);
INSERT INTO public.moon VALUES (7, ' Espert  ', 70.70, true, 4);
INSERT INTO public.moon VALUES (8, ' Zenox  ', 80.80, false, 5);
INSERT INTO public.moon VALUES (9, ' Changlas  ', 90.90, true, 6);
INSERT INTO public.moon VALUES (10, ' Hkieun  ', 100.10, false, 7);
INSERT INTO public.moon VALUES (11, ' Runman  ', 110.11, true, 8);
INSERT INTO public.moon VALUES (12, ' Kalisto  ', 120.12, false, 9);
INSERT INTO public.moon VALUES (13, ' Yenasti  ', 130.13, true, 10);
INSERT INTO public.moon VALUES (14, ' qopsel  ', 130.14, false, 11);
INSERT INTO public.moon VALUES (15, ' cospel  ', 130.15, true, 12);
INSERT INTO public.moon VALUES (16, ' Mercaio  ', 130.16, false, 13);
INSERT INTO public.moon VALUES (17, ' Luvina  ', 130.17, true, 1);
INSERT INTO public.moon VALUES (18, ' Rimbonets  ', 130.18, false, 2);
INSERT INTO public.moon VALUES (19, ' Camai  ', 130.19, true, 3);
INSERT INTO public.moon VALUES (20, ' Roer  ', 130.20, false, 4);
INSERT INTO public.moon VALUES (21, ' Jala  ', 130.21, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, ' Tierra  ', 1, 10.10, ' Es un planeta  ', true, 1);
INSERT INTO public.planet VALUES (2, ' Marte  ', 2, 20.20, ' Es un planeta  ', false, 2);
INSERT INTO public.planet VALUES (3, ' Jupiter  ', 3, 30.30, ' Es un planeta  ', true, 3);
INSERT INTO public.planet VALUES (4, ' Saturno  ', 4, 40.40, ' Es un planeta  ', false, 4);
INSERT INTO public.planet VALUES (5, ' lucena  ', 5, 50.50, ' Es un planeta  ', true, 5);
INSERT INTO public.planet VALUES (6, ' Maron  ', 6, 60.60, ' Es un planeta  ', false, 6);
INSERT INTO public.planet VALUES (7, ' Rapsodia  ', 7, 70.70, ' Es un planeta  ', true, 1);
INSERT INTO public.planet VALUES (8, ' Pluton  ', 8, 80.80, ' Es un planeta  ', false, 2);
INSERT INTO public.planet VALUES (9, ' Venus  ', 9, 90.90, ' Es un planeta  ', true, 3);
INSERT INTO public.planet VALUES (10, ' Meriland  ', 10, 100.10, ' Es un planeta  ', false, 4);
INSERT INTO public.planet VALUES (11, ' Inperno  ', 11, 110.11, ' Es un planeta  ', true, 5);
INSERT INTO public.planet VALUES (12, ' Rodas  ', 12, 120.12, ' Es un planeta  ', false, 6);
INSERT INTO public.planet VALUES (13, ' Luliendo  ', 13, 130.13, ' Es un planeta  ', true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, ' Sol  ', '  Es una estrella  ', 1, 10.10);
INSERT INTO public.star VALUES (2, ' Sagitario    ', '  Es una estrella  ', 2, 20.20);
INSERT INTO public.star VALUES (3, ' Alpha Centauri   ', '  Es una estrella  ', 3, 30.30);
INSERT INTO public.star VALUES (4, ' Invernal     ', '  Es una estrella  ', 4, 40.40);
INSERT INTO public.star VALUES (5, ' Ar-268   ', '  Es una estrella  ', 5, 50.50);
INSERT INTO public.star VALUES (6, ' Micien   ', '  Es una estrella  ', 6, 60.60);


--
-- Name: animals_animals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.animals_animals_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: animal animals_animal_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animals_animal_id_key UNIQUE (animal_id);


--
-- Name: animal animals_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.animal
    ADD CONSTRAINT animals_pkey PRIMARY KEY (animal_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

