--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-06-27 11:50:14

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

--
-- TOC entry 6 (class 2615 OID 25098)
-- Name: onet; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA onet;


ALTER SCHEMA onet OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 218 (class 1259 OID 25108)
-- Name: Address; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet."Address" (
    id_ad integer NOT NULL,
    "улица" character varying(100),
    "дом" integer,
    "квартира" integer
);


ALTER TABLE onet."Address" OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 25105)
-- Name: Material; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet."Material" (
    id_mat integer NOT NULL,
    name character varying(80)
);


ALTER TABLE onet."Material" OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 25124)
-- Name: User; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet."User" (
    id_user integer NOT NULL,
    username character varying(80),
    email character varying(100),
    adress integer,
    login character varying(100) NOT NULL,
    pass integer NOT NULL,
    avatar character varying(100)
);


ALTER TABLE onet."User" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 25099)
-- Name: toys; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet.toys (
    id_toys integer NOT NULL,
    "name " character varying(80),
    size integer,
    price numeric(18,2),
    material integer,
    categ integer
);


ALTER TABLE onet.toys OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25171)
-- Name: Заказ; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet."Заказ" (
    id_order integer NOT NULL,
    id_toys integer,
    kol integer
);


ALTER TABLE onet."Заказ" OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25102)
-- Name: Сategory; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet."Сategory" (
    id_category integer NOT NULL,
    name character varying(100)
);


ALTER TABLE onet."Сategory" OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 25176)
-- Name: Состав заказа; Type: TABLE; Schema: onet; Owner: postgres
--

CREATE TABLE onet."Состав заказа" (
    id_order integer NOT NULL,
    id_user integer,
    summa numeric(25,2)
);


ALTER TABLE onet."Состав заказа" OWNER TO postgres;

--
-- TOC entry 3362 (class 0 OID 25108)
-- Dependencies: 218
-- Data for Name: Address; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet."Address" (id_ad, "улица", "дом", "квартира") FROM stdin;
\.


--
-- TOC entry 3361 (class 0 OID 25105)
-- Dependencies: 217
-- Data for Name: Material; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet."Material" (id_mat, name) FROM stdin;
\.


--
-- TOC entry 3363 (class 0 OID 25124)
-- Dependencies: 219
-- Data for Name: User; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet."User" (id_user, username, email, adress, login, pass, avatar) FROM stdin;
1	alexandro	aler@mail.com	\N	fgaport	54321	\N
2	Rima	dortew@mail.ru	\N	Rima	5679	\N
\.


--
-- TOC entry 3359 (class 0 OID 25099)
-- Dependencies: 215
-- Data for Name: toys; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet.toys (id_toys, "name ", size, price, material, categ) FROM stdin;
\.


--
-- TOC entry 3364 (class 0 OID 25171)
-- Dependencies: 220
-- Data for Name: Заказ; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet."Заказ" (id_order, id_toys, kol) FROM stdin;
\.


--
-- TOC entry 3360 (class 0 OID 25102)
-- Dependencies: 216
-- Data for Name: Сategory; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet."Сategory" (id_category, name) FROM stdin;
\.


--
-- TOC entry 3365 (class 0 OID 25176)
-- Dependencies: 221
-- Data for Name: Состав заказа; Type: TABLE DATA; Schema: onet; Owner: postgres
--

COPY onet."Состав заказа" (id_order, id_user, summa) FROM stdin;
\.


--
-- TOC entry 3204 (class 2606 OID 25112)
-- Name: Address Address_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY (id_ad);


--
-- TOC entry 3202 (class 2606 OID 25114)
-- Name: Material Material_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Material"
    ADD CONSTRAINT "Material_pkey" PRIMARY KEY (id_mat);


--
-- TOC entry 3206 (class 2606 OID 25165)
-- Name: User User_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id_user);


--
-- TOC entry 3198 (class 2606 OID 25116)
-- Name: toys toys_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet.toys
    ADD CONSTRAINT toys_pkey PRIMARY KEY (id_toys);


--
-- TOC entry 3208 (class 2606 OID 25175)
-- Name: Заказ Заказ_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Заказ"
    ADD CONSTRAINT "Заказ_pkey" PRIMARY KEY (id_order);


--
-- TOC entry 3200 (class 2606 OID 25118)
-- Name: Сategory Сategory_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Сategory"
    ADD CONSTRAINT "Сategory_pkey" PRIMARY KEY (id_category);


--
-- TOC entry 3210 (class 2606 OID 25180)
-- Name: Состав заказа Состав заказа_pkey; Type: CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Состав заказа"
    ADD CONSTRAINT "Состав заказа_pkey" PRIMARY KEY (id_order);


--
-- TOC entry 3213 (class 2606 OID 25129)
-- Name: User adress; Type: FK CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."User"
    ADD CONSTRAINT adress FOREIGN KEY (adress) REFERENCES onet."Address"(id_ad) NOT VALID;


--
-- TOC entry 3211 (class 2606 OID 25185)
-- Name: toys categ; Type: FK CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet.toys
    ADD CONSTRAINT categ FOREIGN KEY (categ) REFERENCES onet."Сategory"(id_category) NOT VALID;


--
-- TOC entry 3212 (class 2606 OID 25190)
-- Name: toys toys_material_fkey; Type: FK CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet.toys
    ADD CONSTRAINT toys_material_fkey FOREIGN KEY (material) REFERENCES onet."Material"(id_mat) NOT VALID;


--
-- TOC entry 3214 (class 2606 OID 25205)
-- Name: Заказ Заказ_id_toys_fkey; Type: FK CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Заказ"
    ADD CONSTRAINT "Заказ_id_toys_fkey" FOREIGN KEY (id_toys) REFERENCES onet.toys(id_toys) NOT VALID;


--
-- TOC entry 3215 (class 2606 OID 25195)
-- Name: Состав заказа Состав заказа_id_order_fkey; Type: FK CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Состав заказа"
    ADD CONSTRAINT "Состав заказа_id_order_fkey" FOREIGN KEY (id_order) REFERENCES onet."Заказ"(id_order) NOT VALID;


--
-- TOC entry 3216 (class 2606 OID 25200)
-- Name: Состав заказа Состав заказа_id_user_fkey; Type: FK CONSTRAINT; Schema: onet; Owner: postgres
--

ALTER TABLE ONLY onet."Состав заказа"
    ADD CONSTRAINT "Состав заказа_id_user_fkey" FOREIGN KEY (id_user) REFERENCES onet."User"(id_user) NOT VALID;


-- Completed on 2023-06-27 11:50:14

--
-- PostgreSQL database dump complete
--

