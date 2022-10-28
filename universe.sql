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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_unique integer,
    width numeric(10,10)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: hally; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.hally (
    hally_id integer NOT NULL,
    name character varying(30) NOT NULL,
    hally__unique integer
);


ALTER TABLE public.hally OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    moon_unique integer,
    area numeric(10,10)
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    radius numeric(10,5) NOT NULL,
    description text,
    distance_from_earth integer NOT NULL,
    has_life boolean NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    star_unique integer,
    area numeric(10,10)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'first', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'second', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'third', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'third', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'third', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'third', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'third', false, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'third', false, NULL, NULL);


--
-- Data for Name: hally; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.hally VALUES (1, 'hello', NULL);
INSERT INTO public.hally VALUES (2, 'second', NULL);
INSERT INTO public.hally VALUES (3, 'third', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'first_moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'second_moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'third_moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'second_moon', 1, 2, NULL);
INSERT INTO public.moon VALUES (5, 'second_moon', 1, 4, NULL);
INSERT INTO public.moon VALUES (6, 'second_moon', 1, 12, NULL);
INSERT INTO public.moon VALUES (7, 'second_moon', 1, 312, NULL);
INSERT INTO public.moon VALUES (8, 'second_moon', 1, 31422, NULL);
INSERT INTO public.moon VALUES (9, 'second_moon', 1, 311222, NULL);
INSERT INTO public.moon VALUES (10, 'second_moon', 1, 311, NULL);
INSERT INTO public.moon VALUES (11, 'second_moon', 1, 3141, NULL);
INSERT INTO public.moon VALUES (12, 'second_moon', 1, 3121, NULL);
INSERT INTO public.moon VALUES (13, 'second_moon', 1, 346821, NULL);
INSERT INTO public.moon VALUES (14, 'second_moon', 1, 346871, NULL);
INSERT INTO public.moon VALUES (15, 'second_moon', 1, 34561, NULL);
INSERT INTO public.moon VALUES (17, 'second_moon', 1, 3456341, NULL);
INSERT INTO public.moon VALUES (18, 'second_moon', 1, 33541, NULL);
INSERT INTO public.moon VALUES (19, 'second_moon', 1, 3357891, NULL);
INSERT INTO public.moon VALUES (20, 'second_moon', 1, 3355671, NULL);
INSERT INTO public.moon VALUES (21, 'second_moon', 1, 3356871, NULL);
INSERT INTO public.moon VALUES (22, 'second_moon', 1, 33991, NULL);
INSERT INTO public.moon VALUES (23, 'second_moon', 1, 37691, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'first_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (2, 'second_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (3, 'third_planet', 132, 1235.23000, NULL, 1235, false, 2);
INSERT INTO public.planet VALUES (4, '4_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (5, '5_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (6, '6_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (7, '7_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (8, '8_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (9, '9_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (10, '10_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (11, '11_planet', 132, 1235.23000, NULL, 1235, false, 1);
INSERT INTO public.planet VALUES (12, '12_planet', 132, 1235.23000, NULL, 1235, false, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'first_star', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'second_star', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'third_star', 2, NULL, NULL);
INSERT INTO public.star VALUES (4, 'third_star', 2, NULL, NULL);
INSERT INTO public.star VALUES (5, 'third_star', 2, NULL, NULL);
INSERT INTO public.star VALUES (6, 'third_star', 2, NULL, NULL);
INSERT INTO public.star VALUES (7, 'third_star', 2, NULL, NULL);
INSERT INTO public.star VALUES (8, 'third_star', 2, NULL, NULL);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 8, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 23, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: galaxy galaxy_galaxy_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_unique_key UNIQUE (galaxy_unique);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: hally hally_hally__unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hally
    ADD CONSTRAINT hally_hally__unique_key UNIQUE (hally__unique);


--
-- Name: hally hally_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.hally
    ADD CONSTRAINT hally_pkey PRIMARY KEY (hally_id);


--
-- Name: moon moon_moon_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_unique_key UNIQUE (moon_unique);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_unique_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_unique_key UNIQUE (star_unique);


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

