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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (228, 79, 634);
INSERT INTO public.games VALUES (229, 79, 479);
INSERT INTO public.games VALUES (230, 80, 185);
INSERT INTO public.games VALUES (231, 80, 197);
INSERT INTO public.games VALUES (232, 79, 624);
INSERT INTO public.games VALUES (233, 79, 88);
INSERT INTO public.games VALUES (234, 79, 612);
INSERT INTO public.games VALUES (235, 81, 683);
INSERT INTO public.games VALUES (236, 81, 849);
INSERT INTO public.games VALUES (237, 82, 940);
INSERT INTO public.games VALUES (238, 82, 301);
INSERT INTO public.games VALUES (239, 81, 336);
INSERT INTO public.games VALUES (240, 81, 526);
INSERT INTO public.games VALUES (241, 81, 122);
INSERT INTO public.games VALUES (242, 83, 460);
INSERT INTO public.games VALUES (243, 83, 891);
INSERT INTO public.games VALUES (244, 84, 384);
INSERT INTO public.games VALUES (245, 84, 738);
INSERT INTO public.games VALUES (246, 83, 491);
INSERT INTO public.games VALUES (247, 83, 114);
INSERT INTO public.games VALUES (248, 83, 548);
INSERT INTO public.games VALUES (249, 85, 505);
INSERT INTO public.games VALUES (250, 85, 15);
INSERT INTO public.games VALUES (251, 86, 958);
INSERT INTO public.games VALUES (252, 86, 300);
INSERT INTO public.games VALUES (253, 85, 197);
INSERT INTO public.games VALUES (254, 85, 692);
INSERT INTO public.games VALUES (255, 85, 884);
INSERT INTO public.games VALUES (256, 87, 920);
INSERT INTO public.games VALUES (257, 87, 512);
INSERT INTO public.games VALUES (258, 88, 961);
INSERT INTO public.games VALUES (259, 88, 478);
INSERT INTO public.games VALUES (260, 87, 868);
INSERT INTO public.games VALUES (261, 87, 677);
INSERT INTO public.games VALUES (262, 87, 25);
INSERT INTO public.games VALUES (263, 89, 217);
INSERT INTO public.games VALUES (264, 89, 952);
INSERT INTO public.games VALUES (265, 90, 169);
INSERT INTO public.games VALUES (266, 90, 612);
INSERT INTO public.games VALUES (267, 89, 231);
INSERT INTO public.games VALUES (268, 89, 974);
INSERT INTO public.games VALUES (269, 89, 685);
INSERT INTO public.games VALUES (270, 91, 237);
INSERT INTO public.games VALUES (271, 91, 847);
INSERT INTO public.games VALUES (272, 92, 945);
INSERT INTO public.games VALUES (273, 92, 123);
INSERT INTO public.games VALUES (274, 91, 926);
INSERT INTO public.games VALUES (275, 91, 102);
INSERT INTO public.games VALUES (276, 91, 735);
INSERT INTO public.games VALUES (277, 93, 135);
INSERT INTO public.games VALUES (278, 93, 258);
INSERT INTO public.games VALUES (279, 94, 950);
INSERT INTO public.games VALUES (280, 94, 752);
INSERT INTO public.games VALUES (281, 93, 182);
INSERT INTO public.games VALUES (282, 93, 303);
INSERT INTO public.games VALUES (283, 93, 922);
INSERT INTO public.games VALUES (284, 95, 967);
INSERT INTO public.games VALUES (285, 95, 762);
INSERT INTO public.games VALUES (286, 96, 581);
INSERT INTO public.games VALUES (287, 96, 930);
INSERT INTO public.games VALUES (288, 95, 231);
INSERT INTO public.games VALUES (289, 95, 352);
INSERT INTO public.games VALUES (290, 95, 935);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'saly');
INSERT INTO public.users VALUES (2, 'user_1699813289967');
INSERT INTO public.users VALUES (3, 'user_1699813289966');
INSERT INTO public.users VALUES (4, 'user_1699813340179');
INSERT INTO public.users VALUES (5, 'user_1699813340178');
INSERT INTO public.users VALUES (6, 'user_1699814475454');
INSERT INTO public.users VALUES (7, 'user_1699814475453');
INSERT INTO public.users VALUES (8, 'user_1699814542584');
INSERT INTO public.users VALUES (9, 'user_1699814542583');
INSERT INTO public.users VALUES (10, 'user_1699814602772');
INSERT INTO public.users VALUES (11, 'user_1699814602771');
INSERT INTO public.users VALUES (12, 'user_1699814684922');
INSERT INTO public.users VALUES (13, 'user_1699814684921');
INSERT INTO public.users VALUES (14, 'user_1699814715095');
INSERT INTO public.users VALUES (15, 'user_1699814715094');
INSERT INTO public.users VALUES (16, 'user_1699814901800');
INSERT INTO public.users VALUES (17, 'user_1699814901799');
INSERT INTO public.users VALUES (18, 'user_1699815259279');
INSERT INTO public.users VALUES (19, 'user_1699815259278');
INSERT INTO public.users VALUES (20, 'user_1699815375081');
INSERT INTO public.users VALUES (21, 'user_1699815375080');
INSERT INTO public.users VALUES (22, 'user_1699815418155');
INSERT INTO public.users VALUES (23, 'user_1699815418154');
INSERT INTO public.users VALUES (24, 'user_1699815539896');
INSERT INTO public.users VALUES (25, 'user_1699815539895');
INSERT INTO public.users VALUES (26, 'user_1699815564868');
INSERT INTO public.users VALUES (27, 'user_1699815564867');
INSERT INTO public.users VALUES (28, 'user_1699815589252');
INSERT INTO public.users VALUES (29, 'user_1699815589251');
INSERT INTO public.users VALUES (30, 'user_1699815754707');
INSERT INTO public.users VALUES (31, 'user_1699815754706');
INSERT INTO public.users VALUES (32, 'user_1699815791790');
INSERT INTO public.users VALUES (33, 'user_1699815791789');
INSERT INTO public.users VALUES (34, 'user_1699815890629');
INSERT INTO public.users VALUES (35, 'user_1699815890628');
INSERT INTO public.users VALUES (36, 'user_1699815936912');
INSERT INTO public.users VALUES (37, 'user_1699815936911');
INSERT INTO public.users VALUES (38, 'user_1699815949266');
INSERT INTO public.users VALUES (39, 'user_1699815949265');
INSERT INTO public.users VALUES (40, 'user_1699815966565');
INSERT INTO public.users VALUES (41, 'user_1699815966564');
INSERT INTO public.users VALUES (42, 'user_1699815990998');
INSERT INTO public.users VALUES (43, 'user_1699815990997');
INSERT INTO public.users VALUES (44, 'user_1699816000928');
INSERT INTO public.users VALUES (45, 'user_1699816000927');
INSERT INTO public.users VALUES (46, 'user_1699816012001');
INSERT INTO public.users VALUES (47, 'user_1699816012000');
INSERT INTO public.users VALUES (48, 'user_1699816022514');
INSERT INTO public.users VALUES (49, 'user_1699816022513');
INSERT INTO public.users VALUES (50, 'salimiau');
INSERT INTO public.users VALUES (51, 'user_1699816253698');
INSERT INTO public.users VALUES (52, 'user_1699816253697');
INSERT INTO public.users VALUES (53, 'user_1699816266731');
INSERT INTO public.users VALUES (54, 'user_1699816266730');
INSERT INTO public.users VALUES (55, 'user_1699816279132');
INSERT INTO public.users VALUES (56, 'user_1699816279131');
INSERT INTO public.users VALUES (57, 'user_1699816289799');
INSERT INTO public.users VALUES (58, 'user_1699816289798');
INSERT INTO public.users VALUES (59, 'user_1699816303129');
INSERT INTO public.users VALUES (60, 'user_1699816303128');
INSERT INTO public.users VALUES (61, 'user_1699816313179');
INSERT INTO public.users VALUES (62, 'user_1699816313178');
INSERT INTO public.users VALUES (63, 'user_1699816328609');
INSERT INTO public.users VALUES (64, 'user_1699816328608');
INSERT INTO public.users VALUES (65, 'user_1699816339101');
INSERT INTO public.users VALUES (66, 'user_1699816339100');
INSERT INTO public.users VALUES (67, 'user_1699816348882');
INSERT INTO public.users VALUES (68, 'user_1699816348881');
INSERT INTO public.users VALUES (69, 'user_1699816361186');
INSERT INTO public.users VALUES (70, 'user_1699816361184');
INSERT INTO public.users VALUES (71, 'user_1699816373003');
INSERT INTO public.users VALUES (72, 'user_1699816373002');
INSERT INTO public.users VALUES (73, 'user_1699816380214');
INSERT INTO public.users VALUES (74, 'user_1699816380213');
INSERT INTO public.users VALUES (75, 'user_1699816390994');
INSERT INTO public.users VALUES (76, 'user_1699816390993');
INSERT INTO public.users VALUES (77, 'user_1699816403855');
INSERT INTO public.users VALUES (78, 'user_1699816403854');
INSERT INTO public.users VALUES (79, 'user_1699816453569');
INSERT INTO public.users VALUES (80, 'user_1699816453568');
INSERT INTO public.users VALUES (81, 'user_1699816580147');
INSERT INTO public.users VALUES (82, 'user_1699816580146');
INSERT INTO public.users VALUES (83, 'user_1699816591145');
INSERT INTO public.users VALUES (84, 'user_1699816591144');
INSERT INTO public.users VALUES (85, 'user_1699816601611');
INSERT INTO public.users VALUES (86, 'user_1699816601610');
INSERT INTO public.users VALUES (87, 'user_1699816612229');
INSERT INTO public.users VALUES (88, 'user_1699816612228');
INSERT INTO public.users VALUES (89, 'user_1699816725080');
INSERT INTO public.users VALUES (90, 'user_1699816725079');
INSERT INTO public.users VALUES (91, 'user_1699816735487');
INSERT INTO public.users VALUES (92, 'user_1699816735486');
INSERT INTO public.users VALUES (93, 'user_1699816745963');
INSERT INTO public.users VALUES (94, 'user_1699816745962');
INSERT INTO public.users VALUES (95, 'user_1699816764611');
INSERT INTO public.users VALUES (96, 'user_1699816764610');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 290, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 96, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_games_users; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_users FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

