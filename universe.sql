--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(24) NOT NULL,
    is_spherical boolean,
    distance_from_earth_au integer,
    age_in_millions_of_years integer,
    diameter_in_km numeric(4,2),
    description text
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
-- Name: lifeforms; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeforms (
    lifeforms_id integer NOT NULL,
    name character varying(24) NOT NULL,
    planet_id integer,
    intelligent boolean,
    space_faring boolean,
    description text
);


ALTER TABLE public.lifeforms OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeforms_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeforms_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeforms_lifeform_id_seq OWNED BY public.lifeforms.lifeforms_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(24) NOT NULL,
    is_spherical boolean,
    distance_from_earth_au integer,
    age_in_millions_of_years integer,
    diameter_in_km numeric(4,2),
    planet_id integer,
    description text
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
    name character varying(24) NOT NULL,
    is_spherical boolean,
    distance_from_earth_au integer,
    age_in_millions_of_years integer,
    diameter_in_km numeric(4,2),
    star_id integer,
    description text
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
    name character varying(24) NOT NULL,
    is_spherical boolean,
    distance_from_earth_au integer,
    age_in_millions_of_years integer,
    diameter_in_km numeric(4,2),
    galaxy_id integer,
    description text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lifeforms lifeforms_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeforms ALTER COLUMN lifeforms_id SET DEFAULT nextval('public.lifeforms_lifeform_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Bill', false, 34, 450, 35.00, 'Red Hair');
INSERT INTO public.galaxy VALUES (5, 'Percy', false, 30, 475, 50.00, 'Red Hair');
INSERT INTO public.galaxy VALUES (6, 'Fred', false, 25, 500, 65.00, 'Red Hair');
INSERT INTO public.galaxy VALUES (7, 'George', false, 20, 515, 80.00, 'Red Hair');
INSERT INTO public.galaxy VALUES (8, 'Ron', false, 15, 530, 95.00, 'Red Hair');
INSERT INTO public.galaxy VALUES (9, 'Ginny', false, 10, 535, 11.00, 'Red Hair');


--
-- Data for Name: lifeforms; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeforms VALUES (1, 'Wizard', 1, true, true, 'Wandy');
INSERT INTO public.lifeforms VALUES (2, 'Goblin', 2, true, false, 'Greedy');
INSERT INTO public.lifeforms VALUES (3, 'House Elf', 3, true, true, 'Servants');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Acromantula', true, 80, 450, 35.00, 1, 'somedescrption');
INSERT INTO public.moon VALUES (2, 'Ashwinder', true, 75, 475, 50.00, 2, 'somedescrption');
INSERT INTO public.moon VALUES (3, 'Augurey', true, 70, 500, 65.00, 3, 'somedescrption');
INSERT INTO public.moon VALUES (4, 'Basilisk', true, 65, 515, 80.00, 3, 'somedescrption');
INSERT INTO public.moon VALUES (5, 'Bicorn', true, 60, 530, 95.00, 4, 'somedescrption');
INSERT INTO public.moon VALUES (6, 'Billywig', true, 50, 535, 11.00, 4, 'somedescrption');
INSERT INTO public.moon VALUES (7, 'Bowtruckle', true, 45, 550, 15.00, 5, 'somedescrption');
INSERT INTO public.moon VALUES (8, 'Bundimun', true, 40, 565, 33.00, 5, 'somedescrption');
INSERT INTO public.moon VALUES (9, 'Centaur', true, 35, 580, 43.00, 6, 'somedescrption');
INSERT INTO public.moon VALUES (10, 'Crup', true, 30, 595, 69.00, 6, 'somedescrption');
INSERT INTO public.moon VALUES (11, 'Demiguise', true, 25, 610, 72.00, 7, 'somedescrption');
INSERT INTO public.moon VALUES (12, 'Diricawl', true, 20, 625, 12.00, 7, 'somedescrption');
INSERT INTO public.moon VALUES (13, 'Doxy', true, 15, 640, 22.00, 8, 'somedescrption');
INSERT INTO public.moon VALUES (14, 'Dragon', true, 10, 655, 5.00, 8, 'somedescrption');
INSERT INTO public.moon VALUES (15, 'Dugbog', true, 5, 670, 92.00, 9, 'somedescrption');
INSERT INTO public.moon VALUES (16, 'Erumpent', true, 150, 695, 73.00, 9, 'somedescrption');
INSERT INTO public.moon VALUES (17, 'Fairy', true, 145, 710, 37.00, 10, 'somedescrption');
INSERT INTO public.moon VALUES (18, 'Flobberworm', true, 140, 725, 21.00, 10, 'somedescrption');
INSERT INTO public.moon VALUES (19, 'Gnome', true, 135, 740, 83.00, 11, 'somedescrption');
INSERT INTO public.moon VALUES (20, 'Griffin', true, 130, 755, 38.00, 11, 'somedescrption');
INSERT INTO public.moon VALUES (21, 'Hippogriff', true, 125, 770, 34.00, 12, 'somedescrption');
INSERT INTO public.moon VALUES (22, 'Knarl', true, 120, 795, 27.00, 12, 'somedescrption');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Dumbledore', true, 80, 450, 35.00, 1, 'Old');
INSERT INTO public.planet VALUES (2, 'Moody', true, 75, 475, 50.00, 1, 'Crazy');
INSERT INTO public.planet VALUES (3, 'Filch', true, 70, 500, 65.00, 2, 'Grumpy');
INSERT INTO public.planet VALUES (4, 'Flitwick', true, 65, 515, 80.00, 2, 'Short');
INSERT INTO public.planet VALUES (5, 'McGonnagall', true, 60, 530, 95.00, 3, 'Wise');
INSERT INTO public.planet VALUES (6, 'Quirrell', true, 50, 535, 11.00, 3, 'Evil');
INSERT INTO public.planet VALUES (7, 'Hagrid', true, 45, 550, 15.00, 4, 'Kind');
INSERT INTO public.planet VALUES (8, 'Snape', true, 40, 565, 33.00, 4, 'Brave');
INSERT INTO public.planet VALUES (9, 'Trelawny', true, 35, 580, 43.00, 5, 'Insightful');
INSERT INTO public.planet VALUES (10, 'Hooch', true, 30, 595, 69.00, 5, 'Sporty');
INSERT INTO public.planet VALUES (11, 'Pomfrey', true, 25, 610, 72.00, 6, 'Caring');
INSERT INTO public.planet VALUES (12, 'Sprout', true, 20, 625, 12.00, 6, 'Hands on');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Elm', true, 34, 450, 35.00, 1, 'Hot');
INSERT INTO public.star VALUES (2, 'Willow', true, 30, 475, 50.00, 5, 'Cold');
INSERT INTO public.star VALUES (3, 'Ash', true, 25, 500, 65.00, 6, 'Just right');
INSERT INTO public.star VALUES (4, 'Pine', true, 20, 515, 80.00, 7, 'Boring');
INSERT INTO public.star VALUES (5, 'Poplar', true, 15, 530, 95.00, 8, 'Really boring');
INSERT INTO public.star VALUES (6, 'Walnut', true, 10, 535, 11.00, 9, 'Too cool for you');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 9, true);


--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeforms_lifeform_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy distance_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT distance_unique UNIQUE (distance_from_earth_au);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lifeforms lifeforms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeforms
    ADD CONSTRAINT lifeforms_pkey PRIMARY KEY (lifeforms_id);


--
-- Name: moon moon_distance_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_distance_unique UNIQUE (distance_from_earth_au);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: lifeforms name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeforms
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_distance_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_distance_unique UNIQUE (distance_from_earth_au);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_distance_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_unique UNIQUE (distance_from_earth_au);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

