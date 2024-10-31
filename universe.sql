--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    earth_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    name character varying(50) NOT NULL,
    galaxy_id integer
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES ('home', true, 10, 10, 'earth1', 7, 1);
INSERT INTO public.earth VALUES ('second home', true, 20, 20, 'earth2', 8, 2);
INSERT INTO public.earth VALUES ('third home', true, 30, 30, 'earth3', 9, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('not far away', true, 100, 100, 'grey', 1);
INSERT INTO public.galaxy VALUES ('far away', true, 200, 200, 'blue', 2);
INSERT INTO public.galaxy VALUES ('really far away', true, 300, 300, 'red', 3);
INSERT INTO public.galaxy VALUES ('unknown', false, 400, 400, 'black', 4);
INSERT INTO public.galaxy VALUES ('know much', true, 600, 600, 'yellow', 5);
INSERT INTO public.galaxy VALUES ('know a little', true, 500, 500, 'pink', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'not far away, shine, pretty and white', false, 50, 50, 'white', 1);
INSERT INTO public.moon VALUES (2, 'far away, not shine, normal and blue', false, 100, 100, 'blue', 2);
INSERT INTO public.moon VALUES (3, 'really far away, dark, danger and black', false, 200, 200, 'black', 3);
INSERT INTO public.moon VALUES (4, 'broken land', true, 300, 300, 'land', 4);
INSERT INTO public.moon VALUES (5, 'full of water', true, 400, 400, 'ocean', 4);
INSERT INTO public.moon VALUES (6, 'vocano', true, 500, 500, 'earthquake', 4);
INSERT INTO public.moon VALUES (7, 'humans', true, 600, 600, 'civilize', 4);
INSERT INTO public.moon VALUES (8, 'animals', true, 700, 700, 'no sign of human', 4);
INSERT INTO public.moon VALUES (9, 'plant', true, 800, 800, 'no sign of other animals', 4);
INSERT INTO public.moon VALUES (10, 'poison air', false, 900, 900, 'gas', 4);
INSERT INTO public.moon VALUES (11, 'robots', false, 1000, 1000, 'enemy', 4);
INSERT INTO public.moon VALUES (12, 'gohst', false, 1100, 1100, 'spirit', 4);
INSERT INTO public.moon VALUES (14, 'river', false, 1300, 1300, 'water', 6);
INSERT INTO public.moon VALUES (15, 'cats land', true, 1400, 1400, 'cats', 6);
INSERT INTO public.moon VALUES (16, 'lion land', true, 1500, 1500, 'lions', 6);
INSERT INTO public.moon VALUES (17, 'monley land', true, 1600, 1600, 'monkey', 6);
INSERT INTO public.moon VALUES (18, 'turtle land', true, 1700, 1700, 'turtle', 6);
INSERT INTO public.moon VALUES (19, 'brids land', true, 1800, 1800, 'bird', 6);
INSERT INTO public.moon VALUES (20, 'hrouse land', true, 1900, 1900, 'hrouse', 6);
INSERT INTO public.moon VALUES (13, 'rocks', false, 1200, 1200, 'metal', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'not far away, shine and pretty', true, 100, 100, 'pretty', 1);
INSERT INTO public.planet VALUES (2, 'fat away, not shine and normal', true, 100, 100, 'normal', 2);
INSERT INTO public.planet VALUES (3, 'really far away, dark and danger', true, 200, 200, 'danger', 3);
INSERT INTO public.planet VALUES (4, 'broken land', true, 300, 300, 'land', 5);
INSERT INTO public.planet VALUES (5, 'full of water', true, 400, 400, 'ocean', 5);
INSERT INTO public.planet VALUES (6, 'vocano', true, 500, 500, 'earthquake', 5);
INSERT INTO public.planet VALUES (7, 'humans', true, 600, 600, 'civilize', 5);
INSERT INTO public.planet VALUES (8, 'animals', true, 700, 700, 'no sign of human', 5);
INSERT INTO public.planet VALUES (9, 'plant', true, 800, 800, 'no sign of other animals', 5);
INSERT INTO public.planet VALUES (10, 'poison air', false, 900, 900, 'gas', 5);
INSERT INTO public.planet VALUES (11, 'robots', false, 1000, 1000, 'enemy', 6);
INSERT INTO public.planet VALUES (12, 'gohst', false, 1100, 1100, 'spirit', 6);
INSERT INTO public.planet VALUES (13, 'rocks', false, 1200, 1200, 'metal', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'not far away and shine', true, 100, 100, 'shine', 1);
INSERT INTO public.star VALUES (2, 'far away and not shine', true, 200, 200, 'not shine', 2);
INSERT INTO public.star VALUES (3, 'really far away and dark', true, 300, 300, 'dark', 3);
INSERT INTO public.star VALUES (5, 'snowing', true, 500, 500, 'snow', 4);
INSERT INTO public.star VALUES (4, 'firing', false, 400, 400, 'fire', 5);
INSERT INTO public.star VALUES (6, 'stroming', false, 600, 600, 'strom', 5);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 9, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: earth constraint_earth_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT constraint_earth_id UNIQUE (earth_id);


--
-- Name: galaxy constraint_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon constraint_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_moon_id UNIQUE (moon_id);


--
-- Name: planet constraint_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_planet_id UNIQUE (planet_id);


--
-- Name: star constraint_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_star_id UNIQUE (star_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: earth earth_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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
-- PostgreSQL database dump complete
--

