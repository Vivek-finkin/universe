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
    name character varying(30) NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL,
    is_spherical boolean,
    galaxytypes_id integer
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
-- Name: galaxytypes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxytypes (
    galaxytypes_id integer NOT NULL,
    name character varying NOT NULL,
    "none" integer
);


ALTER TABLE public.galaxytypes OWNER TO freecodecamp;

--
-- Name: galaxytypes_galaxytypes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxytypes_galaxytypes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxytypes_galaxytypes_id_seq OWNER TO freecodecamp;

--
-- Name: galaxytypes_galaxytypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxytypes_galaxytypes_id_seq OWNED BY public.galaxytypes.galaxytypes_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    distance_from_earth integer,
    planet_id integer,
    moon_id integer NOT NULL,
    name character varying NOT NULL,
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
    planet_types character varying NOT NULL,
    has_life boolean,
    star_id integer,
    planet_id integer NOT NULL,
    name character varying
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric,
    star_id integer NOT NULL,
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxytypes galaxytypes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytypes ALTER COLUMN galaxytypes_id SET DEFAULT nextval('public.galaxytypes_galaxytypes_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES ('Andromeda', 'It is also known as MESSIER 31(M31). A spiral galaxy', 1, true, NULL);
INSERT INTO public.galaxy VALUES ('cygnus A', 'it is a radio galaxy.it have a black hole. An elliptical galaxy', 2, false, NULL);
INSERT INTO public.galaxy VALUES ('virgo A', 'it is from a brightest virgo constilation.An elliptical galaxy', 3, false, 2);
INSERT INTO public.galaxy VALUES ('milkyway', 'it is the home of solar system. its center is black hole .An spiral galaxy', 4, false, 1);
INSERT INTO public.galaxy VALUES ('maffei 1', 'it is named after Paolo maffei. it is in constellation cassiopeia.An elliptical galaxy', 5, false, 2);
INSERT INTO public.galaxy VALUES ('magellanic cloud', 'it oorbits moilkyway. it is two dwarf galaxies.An irregular galaxy', 6, false, 4);


--
-- Data for Name: galaxytypes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxytypes VALUES (1, 'spiral', NULL);
INSERT INTO public.galaxytypes VALUES (2, 'elliptical', NULL);
INSERT INTO public.galaxytypes VALUES (3, 'peculiar', NULL);
INSERT INTO public.galaxytypes VALUES (4, 'irregular', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (0, 3, 1, 'moon', NULL);
INSERT INTO public.moon VALUES (77, 4, 2, 'phobos', NULL);
INSERT INTO public.moon VALUES (77, 4, 3, 'deimos', NULL);
INSERT INTO public.moon VALUES (628, 4, 4, 'lo', NULL);
INSERT INTO public.moon VALUES (628, 4, 5, 'europa', NULL);
INSERT INTO public.moon VALUES (628, 4, 6, 'ganymede', NULL);
INSERT INTO public.moon VALUES (628, 5, 7, 'callisto', NULL);
INSERT INTO public.moon VALUES (1272, 6, 8, 'enceladus', NULL);
INSERT INTO public.moon VALUES (746, 6, 9, 'titan', NULL);
INSERT INTO public.moon VALUES (1365, 7, 10, 'ariel', NULL);
INSERT INTO public.moon VALUES (1365, 7, 11, 'belinda', NULL);
INSERT INTO public.moon VALUES (1365, 7, 12, 'caliban', NULL);
INSERT INTO public.moon VALUES (2375, 8, 13, 'despiner', NULL);
INSERT INTO public.moon VALUES (2375, 8, 14, 'galatea', NULL);
INSERT INTO public.moon VALUES (2375, 8, 15, 'halimede', NULL);
INSERT INTO public.moon VALUES (2375, 8, 16, 'naiad', NULL);
INSERT INTO public.moon VALUES (4956, 9, 17, 'hydra', NULL);
INSERT INTO public.moon VALUES (4956, 9, 18, 'nix', NULL);
INSERT INTO public.moon VALUES (4956, 9, 19, 'styx', NULL);
INSERT INTO public.moon VALUES (6985, 11, 20, 'tide', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('terrestrial', false, 6, 1, 'mercury');
INSERT INTO public.planet VALUES ('terrestrial', false, 6, 2, 'venus');
INSERT INTO public.planet VALUES ('rocky', true, 6, 3, 'earth');
INSERT INTO public.planet VALUES ('rocky', false, 6, 4, 'mars');
INSERT INTO public.planet VALUES ('gas gaint', false, 6, 5, 'jupiter');
INSERT INTO public.planet VALUES ('gas gaint', false, 6, 6, 'saturn');
INSERT INTO public.planet VALUES ('ice gaint', false, 6, 7, 'uranus');
INSERT INTO public.planet VALUES ('ice gaint', false, 6, 8, 'neptune');
INSERT INTO public.planet VALUES ('dwarf', false, 6, 9, 'pluto');
INSERT INTO public.planet VALUES ('dwarf', false, 6, 10, 'eris');
INSERT INTO public.planet VALUES ('super earth', false, 7, 11, 'proxima centauri b');
INSERT INTO public.planet VALUES ('candidate', false, 7, 12, 'proxima centauri d');
INSERT INTO public.planet VALUES ('mini neptune', false, 7, 13, 'proxima centauri c');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('HD16175', 3200, 196, 1, 1);
INSERT INTO public.star VALUES ('DENEB', 10, 2616, 4, 2);
INSERT INTO public.star VALUES ('epsilon virginis', 560, 110, 5, 3);
INSERT INTO public.star VALUES ('sun', 4543, 0.00157, 6, 4);
INSERT INTO public.star VALUES ('proxima centauri', 4853, 4.2, 7, 4);
INSERT INTO public.star VALUES ('canopus', 310, 25.14, 8, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 2, true);


--
-- Name: galaxytypes_galaxytypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxytypes_galaxytypes_id_seq', 1, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxytypes galaxytypes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytypes
    ADD CONSTRAINT galaxytypes_name_key UNIQUE (name);


--
-- Name: galaxytypes galaxytypes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxytypes
    ADD CONSTRAINT galaxytypes_pkey PRIMARY KEY (galaxytypes_id);


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
-- Name: star star_distance_from_earth_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_distance_from_earth_key UNIQUE (distance_from_earth);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxytypes_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxytypes_fkey FOREIGN KEY (galaxytypes_id) REFERENCES public.galaxytypes(galaxytypes_id);


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

