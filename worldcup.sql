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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (97, 2018, 'Final', 1014, 1015, 4, 2);
INSERT INTO public.games VALUES (98, 2018, 'Third Place', 1016, 1017, 2, 0);
INSERT INTO public.games VALUES (99, 2018, 'Semi-Final', 1015, 1017, 2, 1);
INSERT INTO public.games VALUES (100, 2018, 'Semi-Final', 1014, 1016, 1, 0);
INSERT INTO public.games VALUES (101, 2018, 'Quarter-Final', 1015, 1018, 3, 2);
INSERT INTO public.games VALUES (102, 2018, 'Quarter-Final', 1017, 1019, 2, 0);
INSERT INTO public.games VALUES (103, 2018, 'Quarter-Final', 1016, 1020, 2, 1);
INSERT INTO public.games VALUES (104, 2018, 'Quarter-Final', 1014, 1021, 2, 0);
INSERT INTO public.games VALUES (105, 2018, 'Eighth-Final', 1017, 1022, 2, 1);
INSERT INTO public.games VALUES (106, 2018, 'Eighth-Final', 1019, 1023, 1, 0);
INSERT INTO public.games VALUES (107, 2018, 'Eighth-Final', 1016, 1024, 3, 2);
INSERT INTO public.games VALUES (108, 2018, 'Eighth-Final', 1020, 1025, 2, 0);
INSERT INTO public.games VALUES (109, 2018, 'Eighth-Final', 1015, 1026, 2, 1);
INSERT INTO public.games VALUES (110, 2018, 'Eighth-Final', 1018, 1027, 2, 1);
INSERT INTO public.games VALUES (111, 2018, 'Eighth-Final', 1021, 1028, 2, 1);
INSERT INTO public.games VALUES (112, 2018, 'Eighth-Final', 1014, 1029, 4, 3);
INSERT INTO public.games VALUES (113, 2014, 'Final', 1030, 1029, 1, 0);
INSERT INTO public.games VALUES (114, 2014, 'Third Place', 1031, 1020, 3, 0);
INSERT INTO public.games VALUES (115, 2014, 'Semi-Final', 1029, 1031, 1, 0);
INSERT INTO public.games VALUES (116, 2014, 'Semi-Final', 1030, 1020, 7, 1);
INSERT INTO public.games VALUES (117, 2014, 'Quarter-Final', 1031, 1032, 1, 0);
INSERT INTO public.games VALUES (118, 2014, 'Quarter-Final', 1029, 1016, 1, 0);
INSERT INTO public.games VALUES (119, 2014, 'Quarter-Final', 1020, 1022, 2, 1);
INSERT INTO public.games VALUES (120, 2014, 'Quarter-Final', 1030, 1014, 1, 0);
INSERT INTO public.games VALUES (121, 2014, 'Eighth-Final', 1020, 1033, 2, 1);
INSERT INTO public.games VALUES (122, 2014, 'Eighth-Final', 1022, 1021, 2, 0);
INSERT INTO public.games VALUES (123, 2014, 'Eighth-Final', 1014, 1034, 2, 0);
INSERT INTO public.games VALUES (124, 2014, 'Eighth-Final', 1030, 1035, 2, 1);
INSERT INTO public.games VALUES (125, 2014, 'Eighth-Final', 1031, 1025, 2, 1);
INSERT INTO public.games VALUES (126, 2014, 'Eighth-Final', 1032, 1036, 2, 1);
INSERT INTO public.games VALUES (127, 2014, 'Eighth-Final', 1029, 1023, 1, 0);
INSERT INTO public.games VALUES (128, 2014, 'Eighth-Final', 1016, 1037, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (1014, 'France');
INSERT INTO public.teams VALUES (1015, 'Croatia');
INSERT INTO public.teams VALUES (1016, 'Belgium');
INSERT INTO public.teams VALUES (1017, 'England');
INSERT INTO public.teams VALUES (1018, 'Russia');
INSERT INTO public.teams VALUES (1019, 'Sweden');
INSERT INTO public.teams VALUES (1020, 'Brazil');
INSERT INTO public.teams VALUES (1021, 'Uruguay');
INSERT INTO public.teams VALUES (1022, 'Colombia');
INSERT INTO public.teams VALUES (1023, 'Switzerland');
INSERT INTO public.teams VALUES (1024, 'Japan');
INSERT INTO public.teams VALUES (1025, 'Mexico');
INSERT INTO public.teams VALUES (1026, 'Denmark');
INSERT INTO public.teams VALUES (1027, 'Spain');
INSERT INTO public.teams VALUES (1028, 'Portugal');
INSERT INTO public.teams VALUES (1029, 'Argentina');
INSERT INTO public.teams VALUES (1030, 'Germany');
INSERT INTO public.teams VALUES (1031, 'Netherlands');
INSERT INTO public.teams VALUES (1032, 'Costa Rica');
INSERT INTO public.teams VALUES (1033, 'Chile');
INSERT INTO public.teams VALUES (1034, 'Nigeria');
INSERT INTO public.teams VALUES (1035, 'Algeria');
INSERT INTO public.teams VALUES (1036, 'Greece');
INSERT INTO public.teams VALUES (1037, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 128, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 1037, true);


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

