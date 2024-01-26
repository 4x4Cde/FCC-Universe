--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
-- Name: cylinder; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cylinder (
    cylinder_id integer NOT NULL,
    name character varying(5) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.cylinder OWNER TO freecodecamp;

--
-- Name: cylinder_cylinder_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cylinder_cylinder_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cylinder_cylinder_id_seq OWNER TO freecodecamp;

--
-- Name: cylinder_cylinder_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cylinder_cylinder_id_seq OWNED BY public.cylinder.cylinder_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    tickers text NOT NULL,
    founded_date date,
    age integer NOT NULL
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
    name character varying(40) NOT NULL,
    in_production boolean NOT NULL,
    class text,
    alt_name text,
    orbit boolean NOT NULL,
    planet_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    class text,
    inception_year integer,
    total_production integer,
    star_id integer NOT NULL
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
    name character varying(40) NOT NULL,
    country_of_origin text,
    number_of_model_produce integer,
    prev_yr_rev numeric(6,1),
    galaxy_id integer NOT NULL
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
-- Name: cylinder cylinder_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cylinder ALTER COLUMN cylinder_id SET DEFAULT nextval('public.cylinder_cylinder_id_seq'::regclass);


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
-- Data for Name: cylinder; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cylinder VALUES (1, '4', 3);
INSERT INTO public.cylinder VALUES (2, '6', 9);
INSERT INTO public.cylinder VALUES (3, '12', 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Volkswagen Grp', 'vwagy', '1937-05-28', 86);
INSERT INTO public.galaxy VALUES (2, 'Toyota Motor Corp.', 'tm', '1937-08-28', 86);
INSERT INTO public.galaxy VALUES (3, 'Hyundai Motor Grp', 'hmg', '1967-12-29', 56);
INSERT INTO public.galaxy VALUES (4, 'Mercedes-Benz AG', 'mbgyy', '1926-06-28', 97);
INSERT INTO public.galaxy VALUES (5, 'Ford Motor Co.', 'f', '1903-06-16', 120);
INSERT INTO public.galaxy VALUES (6, 'General Motor', 'gm', '1908-09-16', 115);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'passat', true, 'mid size sedan', 'dasher, santana, quantum, magotan, corsar, carat', true, 2);
INSERT INTO public.moon VALUES (2, 'lavida', true, 'crossover suv', NULL, true, 2);
INSERT INTO public.moon VALUES (3, 't-roc', true, 'compact sedan', NULL, true, 1);
INSERT INTO public.moon VALUES (4, 'yaris', true, 'compact sedan', 'vitz, platz, echo, belta, vios, charade, iA, mazada2', true, 3);
INSERT INTO public.moon VALUES (5, 'camry', true, 'mid size sedan', 'vista, scepter, vienta, aurion, altis, apollo', true, 3);
INSERT INTO public.moon VALUES (6, 'hilux', true, 'mid size pickup', 'pickup', true, 4);
INSERT INTO public.moon VALUES (7, 'creta', true, 'crossover suv', 'ix24, cantus', true, 5);
INSERT INTO public.moon VALUES (8, 'i10', true, 'compact sedan', 'xcent, aura', true, 6);
INSERT INTO public.moon VALUES (9, 'kona', true, 'crossover suv', 'kauai', true, 5);
INSERT INTO public.moon VALUES (10, 'c-class', true, 'full size sedan', NULL, true, 7);
INSERT INTO public.moon VALUES (11, 'glb', true, 'crossover suv', NULL, true, 8);
INSERT INTO public.moon VALUES (12, 'gls', true, 'full size suv', NULL, true, 7);
INSERT INTO public.moon VALUES (13, 'escort', true, 'compact sedan', NULL, true, 10);
INSERT INTO public.moon VALUES (14, 'model-t', false, 'compact sedan', NULL, false, 10);
INSERT INTO public.moon VALUES (15, 'mustang', true, 'roadster sport', NULL, true, 10);
INSERT INTO public.moon VALUES (16, 'focus', true, 'compact sedan', NULL, true, 10);
INSERT INTO public.moon VALUES (17, 'caprice', false, 'full size sedan', NULL, false, 12);
INSERT INTO public.moon VALUES (18, 'cavalier', true, 'compact sedan', NULL, true, 12);
INSERT INTO public.moon VALUES (19, 'impala', false, 'full size sedan', NULL, false, 12);
INSERT INTO public.moon VALUES (20, 'highlander', true, 'crossover suv', 'kluger, crown kluger', true, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'tiguan', 'crossover suv', 2007, 604539, 1);
INSERT INTO public.planet VALUES (2, 'polo', 'supercompact', 1975, 48043, 1);
INSERT INTO public.planet VALUES (3, 'corolla', 'compact sedan', 1966, 222216, 2);
INSERT INTO public.planet VALUES (4, 'rav4', 'crossover suv', 1994, 399941, 2);
INSERT INTO public.planet VALUES (5, 'tucson', 'crossover suv', 2004, 209624, 3);
INSERT INTO public.planet VALUES (6, 'elantra', 'compact sedan', 1990, 134149, 3);
INSERT INTO public.planet VALUES (7, 'glc', 'crossover suv', 2015, 51805, 4);
INSERT INTO public.planet VALUES (8, 'gle', 'mid size suv', 2015, 40322, 4);
INSERT INTO public.planet VALUES (9, 'f-series', 'full size pickup', 1948, 750789, 5);
INSERT INTO public.planet VALUES (10, 'puma', 'crossover suv', 2019, 136956, 5);
INSERT INTO public.planet VALUES (11, 'silverado', 'full size pickup', 1998, 555148, 6);
INSERT INTO public.planet VALUES (12, 'camaro', 'roadster sport', 1966, 31028, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Volkswagen', 'Germany', 32, 335.0, 1);
INSERT INTO public.star VALUES (2, 'Toyota', 'Japan', 70, 274.9, 2);
INSERT INTO public.star VALUES (3, 'Hyundai', 'Korea', 30, 121.4, 3);
INSERT INTO public.star VALUES (4, 'Mercedes-Benz', 'Germany', 35, 164.6, 4);
INSERT INTO public.star VALUES (5, 'Ford', 'United States', 29, 174.2, 5);
INSERT INTO public.star VALUES (6, 'Chevrolet', 'United States', 30, 44.1, 6);


--
-- Name: cylinder_cylinder_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cylinder_cylinder_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cylinder cylinder_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cylinder
    ADD CONSTRAINT cylinder_name_key UNIQUE (name);


--
-- Name: cylinder cylinder_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cylinder
    ADD CONSTRAINT cylinder_pkey PRIMARY KEY (cylinder_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_tickers_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_tickers_key UNIQUE (tickers);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: cylinder cylinder_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cylinder
    ADD CONSTRAINT cylinder_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

