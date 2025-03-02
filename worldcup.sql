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
    round character varying(20) NOT NULL,
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
    name character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (250, 2018, 'Final', 190, 191, 4, 2);
INSERT INTO public.games VALUES (251, 2018, 'Third Place', 192, 193, 2, 0);
INSERT INTO public.games VALUES (252, 2018, 'Semi-Final', 191, 193, 2, 1);
INSERT INTO public.games VALUES (253, 2018, 'Semi-Final', 190, 192, 1, 0);
INSERT INTO public.games VALUES (254, 2018, 'Quarter-Final', 191, 194, 3, 2);
INSERT INTO public.games VALUES (255, 2018, 'Quarter-Final', 193, 195, 2, 0);
INSERT INTO public.games VALUES (256, 2018, 'Quarter-Final', 192, 196, 2, 1);
INSERT INTO public.games VALUES (257, 2018, 'Quarter-Final', 190, 197, 2, 0);
INSERT INTO public.games VALUES (258, 2018, 'Eighth-Final', 193, 198, 2, 1);
INSERT INTO public.games VALUES (259, 2018, 'Eighth-Final', 195, 199, 1, 0);
INSERT INTO public.games VALUES (260, 2018, 'Eighth-Final', 192, 200, 3, 2);
INSERT INTO public.games VALUES (261, 2018, 'Eighth-Final', 196, 201, 2, 0);
INSERT INTO public.games VALUES (262, 2018, 'Eighth-Final', 191, 202, 2, 1);
INSERT INTO public.games VALUES (263, 2018, 'Eighth-Final', 194, 203, 2, 1);
INSERT INTO public.games VALUES (264, 2018, 'Eighth-Final', 197, 204, 2, 1);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 190, 205, 4, 3);
INSERT INTO public.games VALUES (266, 2014, 'Final', 206, 205, 1, 0);
INSERT INTO public.games VALUES (267, 2014, 'Third Place', 207, 196, 3, 0);
INSERT INTO public.games VALUES (268, 2014, 'Semi-Final', 205, 207, 1, 0);
INSERT INTO public.games VALUES (269, 2014, 'Semi-Final', 206, 196, 7, 1);
INSERT INTO public.games VALUES (270, 2014, 'Quarter-Final', 207, 208, 1, 0);
INSERT INTO public.games VALUES (271, 2014, 'Quarter-Final', 205, 192, 1, 0);
INSERT INTO public.games VALUES (272, 2014, 'Quarter-Final', 196, 198, 2, 1);
INSERT INTO public.games VALUES (273, 2014, 'Quarter-Final', 206, 190, 1, 0);
INSERT INTO public.games VALUES (274, 2014, 'Eighth-Final', 196, 209, 2, 1);
INSERT INTO public.games VALUES (275, 2014, 'Eighth-Final', 198, 197, 2, 0);
INSERT INTO public.games VALUES (276, 2014, 'Eighth-Final', 190, 210, 2, 0);
INSERT INTO public.games VALUES (277, 2014, 'Eighth-Final', 206, 211, 2, 1);
INSERT INTO public.games VALUES (278, 2014, 'Eighth-Final', 207, 201, 2, 1);
INSERT INTO public.games VALUES (279, 2014, 'Eighth-Final', 208, 212, 2, 1);
INSERT INTO public.games VALUES (280, 2014, 'Eighth-Final', 205, 199, 1, 0);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 192, 213, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (190, 'France');
INSERT INTO public.teams VALUES (191, 'Croatia');
INSERT INTO public.teams VALUES (192, 'Belgium');
INSERT INTO public.teams VALUES (193, 'England');
INSERT INTO public.teams VALUES (194, 'Russia');
INSERT INTO public.teams VALUES (195, 'Sweden');
INSERT INTO public.teams VALUES (196, 'Brazil');
INSERT INTO public.teams VALUES (197, 'Uruguay');
INSERT INTO public.teams VALUES (198, 'Colombia');
INSERT INTO public.teams VALUES (199, 'Switzerland');
INSERT INTO public.teams VALUES (200, 'Japan');
INSERT INTO public.teams VALUES (201, 'Mexico');
INSERT INTO public.teams VALUES (202, 'Denmark');
INSERT INTO public.teams VALUES (203, 'Spain');
INSERT INTO public.teams VALUES (204, 'Portugal');
INSERT INTO public.teams VALUES (205, 'Argentina');
INSERT INTO public.teams VALUES (206, 'Germany');
INSERT INTO public.teams VALUES (207, 'Netherlands');
INSERT INTO public.teams VALUES (208, 'Costa Rica');
INSERT INTO public.teams VALUES (209, 'Chile');
INSERT INTO public.teams VALUES (210, 'Nigeria');
INSERT INTO public.teams VALUES (211, 'Algeria');
INSERT INTO public.teams VALUES (212, 'Greece');
INSERT INTO public.teams VALUES (213, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 281, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 213, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams uname; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT uname UNIQUE (name);


--
-- Name: games fk_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

