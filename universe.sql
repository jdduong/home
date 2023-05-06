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
    lightyears_from_earth integer,
    number_of_stars integer,
    name character varying(60) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    water_present boolean,
    planet_id integer,
    km_from_planet numeric,
    radius_in_km numeric,
    name character varying(60) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    radius_in_km numeric,
    star_id integer,
    moons_orbiting integer,
    has_water boolean NOT NULL,
    name character varying(60) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    classification text,
    planets_orbit boolean,
    galaxy_id integer,
    name character varying(60) NOT NULL,
    description character varying(30)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_class; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star_class (
    name character varying(60) NOT NULL,
    description character varying(60),
    star_class_id integer NOT NULL,
    heat character varying(30)
);


ALTER TABLE public.star_class OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, NULL, NULL, 'Milky Way', NULL);
INSERT INTO public.galaxy VALUES (2, NULL, NULL, 'ES', NULL);
INSERT INTO public.galaxy VALUES (3, NULL, NULL, 'MS', NULL);
INSERT INTO public.galaxy VALUES (4, NULL, NULL, 'IE', NULL);
INSERT INTO public.galaxy VALUES (5, NULL, NULL, 'DS', NULL);
INSERT INTO public.galaxy VALUES (6, NULL, NULL, 'FY', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, NULL, 3, NULL, NULL, 'Moon', NULL);
INSERT INTO public.moon VALUES (2, NULL, 2, NULL, NULL, 'Phobos', NULL);
INSERT INTO public.moon VALUES (3, NULL, 2, NULL, NULL, 'Deimos', NULL);
INSERT INTO public.moon VALUES (4, NULL, 5, NULL, NULL, 'Io', NULL);
INSERT INTO public.moon VALUES (5, NULL, 5, NULL, NULL, 'Europa', NULL);
INSERT INTO public.moon VALUES (6, NULL, 5, NULL, NULL, 'Ganymede', NULL);
INSERT INTO public.moon VALUES (7, NULL, 5, NULL, NULL, 'Callisto', NULL);
INSERT INTO public.moon VALUES (8, NULL, 5, NULL, NULL, 'Amalthea', NULL);
INSERT INTO public.moon VALUES (9, NULL, 5, NULL, NULL, 'Himalia', NULL);
INSERT INTO public.moon VALUES (10, NULL, 5, NULL, NULL, 'Elara', NULL);
INSERT INTO public.moon VALUES (11, NULL, 5, NULL, NULL, 'Pasiphae', NULL);
INSERT INTO public.moon VALUES (12, NULL, 5, NULL, NULL, 'Sinope', NULL);
INSERT INTO public.moon VALUES (13, NULL, 5, NULL, NULL, 'Lysithea', NULL);
INSERT INTO public.moon VALUES (14, NULL, 5, NULL, NULL, 'Carme', NULL);
INSERT INTO public.moon VALUES (15, NULL, 5, NULL, NULL, 'Ananke', NULL);
INSERT INTO public.moon VALUES (16, NULL, 5, NULL, NULL, 'Leda', NULL);
INSERT INTO public.moon VALUES (17, NULL, 5, NULL, NULL, 'Thebe', NULL);
INSERT INTO public.moon VALUES (18, NULL, 5, NULL, NULL, 'Adrastea', NULL);
INSERT INTO public.moon VALUES (19, NULL, 5, NULL, NULL, 'Metis', NULL);
INSERT INTO public.moon VALUES (20, NULL, 5, NULL, NULL, 'Themisto', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 1, NULL, false, 'Mercury', NULL);
INSERT INTO public.planet VALUES (2, NULL, 1, NULL, false, 'Venus', NULL);
INSERT INTO public.planet VALUES (3, NULL, 1, NULL, true, 'Earth', NULL);
INSERT INTO public.planet VALUES (4, NULL, 1, NULL, true, 'Mars', NULL);
INSERT INTO public.planet VALUES (5, NULL, 1, NULL, false, 'Jupiter', NULL);
INSERT INTO public.planet VALUES (6, NULL, 1, NULL, false, 'Saturn', NULL);
INSERT INTO public.planet VALUES (7, NULL, 1, NULL, false, 'Uranus', NULL);
INSERT INTO public.planet VALUES (8, NULL, 1, NULL, false, 'Neptune', NULL);
INSERT INTO public.planet VALUES (9, NULL, 2, NULL, false, 'NL', NULL);
INSERT INTO public.planet VALUES (10, NULL, 2, NULL, false, 'AP', NULL);
INSERT INTO public.planet VALUES (11, NULL, 3, NULL, true, 'RK', NULL);
INSERT INTO public.planet VALUES (12, NULL, 5, NULL, true, 'AA', NULL);
INSERT INTO public.planet VALUES (13, NULL, 5, NULL, false, 'MX', NULL);
INSERT INTO public.planet VALUES (14, NULL, 5, NULL, false, 'YM', NULL);
INSERT INTO public.planet VALUES (15, NULL, 5, NULL, false, 'BH', NULL);
INSERT INTO public.planet VALUES (16, NULL, 6, NULL, false, 'LD', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, NULL, 1, 'Sun', NULL);
INSERT INTO public.star VALUES (2, NULL, NULL, 2, 'PV', NULL);
INSERT INTO public.star VALUES (3, NULL, NULL, 3, 'MD', NULL);
INSERT INTO public.star VALUES (4, NULL, NULL, 4, 'NC', NULL);
INSERT INTO public.star VALUES (5, NULL, NULL, 5, 'AN', NULL);
INSERT INTO public.star VALUES (6, NULL, NULL, 6, 'DM', NULL);


--
-- Data for Name: star_class; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star_class VALUES ('white dwarf', NULL, 1, NULL);
INSERT INTO public.star_class VALUES ('normal giant', NULL, 2, NULL);
INSERT INTO public.star_class VALUES ('luminous supergiant', NULL, 3, NULL);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_description_key UNIQUE (description);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_description_key UNIQUE (description);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star_class star_class_heat_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_class
    ADD CONSTRAINT star_class_heat_key UNIQUE (heat);


--
-- Name: star_class star_class_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star_class
    ADD CONSTRAINT star_class_pkey PRIMARY KEY (star_class_id);


--
-- Name: star star_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_description_key UNIQUE (description);


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

