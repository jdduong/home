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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (65, 65, 66, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (66, 67, 68, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (67, 66, 68, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (68, 65, 67, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (69, 66, 74, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (70, 68, 76, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (71, 67, 78, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (72, 65, 80, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (73, 68, 82, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (74, 76, 84, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (75, 67, 86, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (76, 78, 88, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (77, 66, 90, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (78, 74, 92, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (79, 80, 94, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (80, 65, 96, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (81, 97, 96, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (82, 99, 78, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (83, 96, 99, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (84, 97, 78, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (85, 99, 106, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (86, 96, 67, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (87, 78, 82, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (88, 97, 65, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (89, 78, 114, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (90, 82, 80, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (91, 65, 118, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (92, 97, 120, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (93, 99, 88, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (94, 106, 124, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (95, 96, 84, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (96, 67, 128, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (97, 65, 66, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (98, 67, 68, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (99, 66, 68, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (100, 65, 67, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (101, 66, 74, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (102, 68, 76, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (103, 67, 78, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (104, 65, 80, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (105, 68, 82, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (106, 76, 84, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (107, 67, 86, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (108, 78, 88, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (109, 66, 90, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (110, 74, 92, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (111, 80, 94, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (112, 65, 96, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (113, 97, 96, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (114, 99, 78, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (115, 96, 99, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (116, 97, 78, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (117, 99, 106, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (118, 96, 67, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (119, 78, 82, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (120, 97, 65, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (121, 78, 114, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (122, 82, 80, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (123, 65, 118, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (124, 97, 120, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (125, 99, 88, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (126, 106, 124, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (127, 96, 84, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (128, 67, 128, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (129, 65, 66, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (130, 67, 68, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (131, 66, 68, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (132, 65, 67, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (133, 66, 74, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (134, 68, 76, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (135, 67, 78, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (136, 65, 80, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (137, 68, 82, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (138, 76, 84, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (139, 67, 86, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (140, 78, 88, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (141, 66, 90, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (142, 74, 92, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (143, 80, 94, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (144, 65, 96, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (145, 97, 96, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (146, 99, 78, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (147, 96, 99, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (148, 97, 78, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (149, 99, 106, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (150, 96, 67, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (151, 78, 82, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (152, 97, 65, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (153, 78, 114, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (154, 82, 80, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (155, 65, 118, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (156, 97, 120, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (157, 99, 88, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (158, 106, 124, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (159, 96, 84, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (160, 67, 128, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (65, 'France');
INSERT INTO public.teams VALUES (66, 'Croatia');
INSERT INTO public.teams VALUES (67, 'Belgium');
INSERT INTO public.teams VALUES (68, 'England');
INSERT INTO public.teams VALUES (74, 'Russia');
INSERT INTO public.teams VALUES (76, 'Sweden');
INSERT INTO public.teams VALUES (78, 'Brazil');
INSERT INTO public.teams VALUES (80, 'Uruguay');
INSERT INTO public.teams VALUES (82, 'Colombia');
INSERT INTO public.teams VALUES (84, 'Switzerland');
INSERT INTO public.teams VALUES (86, 'Japan');
INSERT INTO public.teams VALUES (88, 'Mexico');
INSERT INTO public.teams VALUES (90, 'Denmark');
INSERT INTO public.teams VALUES (92, 'Spain');
INSERT INTO public.teams VALUES (94, 'Portugal');
INSERT INTO public.teams VALUES (96, 'Argentina');
INSERT INTO public.teams VALUES (97, 'Germany');
INSERT INTO public.teams VALUES (99, 'Netherlands');
INSERT INTO public.teams VALUES (106, 'Costa Rica');
INSERT INTO public.teams VALUES (114, 'Chile');
INSERT INTO public.teams VALUES (118, 'Nigeria');
INSERT INTO public.teams VALUES (120, 'Algeria');
INSERT INTO public.teams VALUES (124, 'Greece');
INSERT INTO public.teams VALUES (128, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 160, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 320, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

