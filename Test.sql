--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.3

-- Started on 2022-06-07 23:34:54

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
-- TOC entry 210 (class 1259 OID 16679)
-- Name: games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.games (
    id integer NOT NULL,
    game_id integer NOT NULL,
    name text NOT NULL,
    date text
);


ALTER TABLE public.games OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16672)
-- Name: toys; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.toys (
    id integer NOT NULL,
    toy_id integer NOT NULL,
    name text NOT NULL,
    status text NOT NULL,
    status_update text
);


ALTER TABLE public.toys OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16686)
-- Name: toys_games; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.toys_games (
    id integer NOT NULL,
    game_id integer NOT NULL,
    toy_id integer NOT NULL,
    note text
);


ALTER TABLE public.toys_games OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 16679)
-- Dependencies: 210
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.games (id, game_id, name, date) VALUES (1, 1, 'Ships in the ocean', '2018-02-12');
INSERT INTO public.games (id, game_id, name, date) VALUES (5, 5, 'ZOO Railroad', '2018-03-30 ');
INSERT INTO public.games (id, game_id, name, date) VALUES (14, 14, 'Octopus-destroyer', '2018-03-18');


--
-- TOC entry 3317 (class 0 OID 16672)
-- Dependencies: 209
-- Data for Name: toys; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.toys (id, toy_id, name, status, status_update) VALUES (1, 1, 'boat', 'broken', '2018-03-19 ');
INSERT INTO public.toys (id, toy_id, name, status, status_update) VALUES (7, 7, 'Teddy Bear ', 'ok', '2018-03-30 ');
INSERT INTO public.toys (id, toy_id, name, status, status_update) VALUES (43, 43, 'octopus', 'ok', '2018-03-19 ');


--
-- TOC entry 3319 (class 0 OID 16686)
-- Dependencies: 211
-- Data for Name: toys_games; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.toys_games (id, game_id, toy_id, note) VALUES (1, 1, 1, 'need repair ');
INSERT INTO public.toys_games (id, game_id, toy_id, note) VALUES (5, 5, 5, 'bear feels well  ');


--
-- TOC entry 3174 (class 2606 OID 16685)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 16692)
-- Name: toys_games toys_games_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toys_games
    ADD CONSTRAINT toys_games_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 16678)
-- Name: toys toys_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toys
    ADD CONSTRAINT toys_pkey PRIMARY KEY (id);


--
-- TOC entry 3177 (class 2606 OID 16693)
-- Name: toys_games toys_games_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toys_games
    ADD CONSTRAINT toys_games_id_fkey FOREIGN KEY (id) REFERENCES public.toys(id) NOT VALID;


-- Completed on 2022-06-07 23:34:54

--
-- PostgreSQL database dump complete
--

