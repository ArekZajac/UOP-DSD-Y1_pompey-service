--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Debian 11.5-1+deb10u1)
-- Dumped by pg_dump version 11.5 (Debian 11.5-1+deb10u1)

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

SET default_with_oids = false;

--
-- Name: customer; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.customer (
    cust_id integer NOT NULL,
    cust_firstname character varying(20) NOT NULL,
    cust_lastname character varying(20) NOT NULL,
    cust_mobile character varying(15),
    cust_email character varying(100),
    cust_landline character varying(15),
    cust_address1 character varying(30) NOT NULL,
    cust_address2 character varying(30),
    cust_town character varying(15) NOT NULL,
    cust_postcode character(9) NOT NULL
);


ALTER TABLE public.customer OWNER TO up933019;

--
-- Name: customer_cust_id_seq; Type: SEQUENCE; Schema: public; Owner: up933019
--

CREATE SEQUENCE public.customer_cust_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_cust_id_seq OWNER TO up933019;

--
-- Name: customer_cust_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: up933019
--

ALTER SEQUENCE public.customer_cust_id_seq OWNED BY public.customer.cust_id;


--
-- Name: role; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.role (
    role_id integer NOT NULL,
    role_name character varying(50) NOT NULL
);


ALTER TABLE public.role OWNER TO up933019;

--
-- Name: service; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.service (
    service_id integer NOT NULL,
    service_date date NOT NULL,
    service_vin character(17) NOT NULL
);


ALTER TABLE public.service OWNER TO up933019;

--
-- Name: service_service_id_seq; Type: SEQUENCE; Schema: public; Owner: up933019
--

CREATE SEQUENCE public.service_service_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.service_service_id_seq OWNER TO up933019;

--
-- Name: service_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: up933019
--

ALTER SEQUENCE public.service_service_id_seq OWNED BY public.service.service_id;


--
-- Name: staff; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_fname character varying(25) NOT NULL,
    staff_lname character varying(30) NOT NULL,
    staff_salary integer NOT NULL,
    staff_email character varying(80),
    staff_phone character varying(12) NOT NULL,
    staff_addr character varying(30) NOT NULL,
    staff_town character varying(20) NOT NULL,
    staff_postcode character(8) NOT NULL,
    staff_role integer
);


ALTER TABLE public.staff OWNER TO up933019;

--
-- Name: staff_staff_id_seq; Type: SEQUENCE; Schema: public; Owner: up933019
--

CREATE SEQUENCE public.staff_staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.staff_staff_id_seq OWNER TO up933019;

--
-- Name: staff_staff_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: up933019
--

ALTER SEQUENCE public.staff_staff_id_seq OWNED BY public.staff.staff_id;


--
-- Name: staffservice; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.staffservice (
    staff_id integer NOT NULL,
    service_id integer NOT NULL
);


ALTER TABLE public.staffservice OWNER TO up933019;

--
-- Name: vehicle; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.vehicle (
    veh_reg character(8) NOT NULL,
    veh_type character varying(20) NOT NULL,
    veh_make character varying(20) NOT NULL,
    veh_model character varying(15) NOT NULL,
    veh_colour character varying(20) NOT NULL,
    veh_owner integer NOT NULL,
    veh_vin character(17) DEFAULT '11111111111111111'::bpchar NOT NULL
);


ALTER TABLE public.vehicle OWNER TO up933019;

--
-- Name: customer cust_id; Type: DEFAULT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.customer ALTER COLUMN cust_id SET DEFAULT nextval('public.customer_cust_id_seq'::regclass);


--
-- Name: service service_id; Type: DEFAULT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.service ALTER COLUMN service_id SET DEFAULT nextval('public.service_service_id_seq'::regclass);


--
-- Name: staff staff_id; Type: DEFAULT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staff ALTER COLUMN staff_id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.customer (cust_id, cust_firstname, cust_lastname, cust_mobile, cust_email, cust_landline, cust_address1, cust_address2, cust_town, cust_postcode) FROM stdin;
1	Blisse	Molineaux	07147827777	bmolineaux0@t-online.de	02392045584	4824 Burning Wood Junction	Anzinger	Southsea	PO91 3WT 
2	Rosanne	Kennermann	07671427032	rkennermann1@merriam-webster.com	02392887278	1616 Armistice Lane	Fairfield	Havant	PO61 0DO 
3	Mariellen	Cowie	07412495037	mcowie2@mayoclinic.com	02392745432	5249 Florence Junction	Schurz	Havant	PO19 0AJ 
4	Egor	Puddle	07743851312	epuddle3@yelp.com	02392793167	28 Rockefeller Alley	Mockingbird	Gosport	PO49 2TZ 
5	Elberta	Meddows	07624231888	emeddows4@usa.gov	02392721293	2 Commercial Street	Orin	Southsea	PO85 6UL 
6	Gabi	Godridge	07932381381	ggodridge5@theguardian.com	02392450188	57 1st Park	Morning	Havant	PO09 3PG 
7	Bernardina	Bradnock	07161942194	bbradnock6@ameblo.jp	02392706724	1 Maywood Alley	Roth	Fratton	PO49 8HB 
8	Isacco	Cosyns	07615130740	icosyns7@baidu.com	02392202224	6 Vera Street	Killdeer	Havant	PO80 2HE 
9	Benedick	Nelm	07836124569	bnelm8@oaic.gov.au	02392771171	8 Crowley Way	Forest Run	Portsmouth	PO41 7TK 
10	Jandy	Samper	\N	jsamper9@smh.com.au	\N	10988 Macpherson Way	Meadow Vale	Havant	PO32 4BL 
11	Stella	Nettleship	07507841235	snettleshipa@who.int	02392671798	7 Carpenter Avenue	Anhalt	Portsmouth	PO31 1CL 
12	Augusta	Meiklam	07155345594	ameiklamb@mlb.com	02392092271	4080 Montana Court	Sycamore	Havant	PO93 0ZB 
13	Vincenz	Sanchiz	07249890703	vsanchizc@1und1.de	02392247905	3052 Arizona Court	Acker	Havant	PO99 9YO 
14	Elsey	Dongall	07106807598	edongalld@youku.com	02392041645	34886 Anthes Court	Tomscot	Portsmouth	PO33 3OI 
15	Artie	Gillanders	07184160877	agillanderse@youtu.be	02392769433	18 Oakridge Terrace	Weeping Birch	Southsea	PO31 8DI 
16	Bronson	Crosetto	07312743066	bcrosettof@google.es	02392188752	8356 Melvin Crossing	Hermina	Portsmouth	PO17 0OG 
17	Willi	Bromidge	07146344542	wbromidgeg@hud.gov	02392458609	53749 Sachs Circle	Holy Cross	Waterlooville	PO60 9WL 
18	Ramona	Carefull	07982096114	rcarefullh@businessinsider.com	02392471348	963 Mockingbird Point	Fulton	Waterlooville	PO37 1NV 
19	Alvan	Murrish	07597320723	amurrishi@phpbb.com	02392530746	1 Golf Point	High Crossing	Fratton	PO16 4ET 
20	Jens	Bootyman	07743376278	jbootymanj@vkontakte.ru	02392170449	6 Ohio Center	Mcbride	Fratton	PO93 5RB 
21	Darnall	Baty	07946464879	dbatyk@go.com	02392583806	74 Vermont Crossing	Sunbrook	Fratton	PO55 7IH 
22	Hillary	Cabedo	07280423553	hcabedol@skyrock.com	02392112995	537 Jenifer Point	Old Gate	Gosport	PO56 0VW 
23	Juliann	Grolmann	07513959506	jgrolmannm@patch.com	02392293737	79 Katie Junction	Lakeland	Gosport	PO61 0XQ 
24	Donni	Erie	07645564848	derien@cocolog-nifty.com	02392860032	11 School Plaza	Porter	Gosport	PO97 0ZI 
25	Hanni	Dallemore	07625297435	hdallemoreo@ft.com	02392854680	97187 Gulseth Place	Village	Southsea	PO79 2YS 
26	Brewer	Maudett	07213159108	bmaudettp@fc2.com	02392417893	1810 Clarendon Center	Vidon	Waterlooville	PO47 9OW 
27	Shalne	Tirrell	07064705032	stirrellq@xrea.com	02392133600	8 Westend Crossing	Oakridge	Fratton	PO12 5LZ 
28	Jude	Shrubshall	07362785505	jshrubshallr@microsoft.com	02392435108	1529 Miller Center	Northview	Waterlooville	PO53 9SY 
29	Alethea	Domaschke	07969227231	adomaschkes@example.com	02392540419	3 Ludington Pass	Rusk	Havant	PO51 7HB 
30	Jourdain	Wallington	07631525009	jwallingtont@edublogs.org	02392391457	68 Lerdahl Place	Donald	Gosport	PO25 8DQ 
31	Saree	Anthoin	07034809000	santhoinu@issuu.com	02392375528	94 Longview Street	Bunting	Gosport	PO07 2XP 
32	Helli	Clarkson	07426276343	hclarksonv@google.cn	\N	4295 2nd Center	Oak Valley	Fratton	PO78 2BW 
33	Thomasa	Eusden	07626844758	teusdenw@mashable.com	02392485206	8 Green Trail	Weeping Birch	Southsea	PO61 1OJ 
34	Evelyn	Lisciandri	07097635638	elisciandrix@google.fr	02392533980	16210 Laurel Point	Troy	Southsea	PO50 5WM 
35	Jeanne	Noar	07715205729	jnoary@accuweather.com	02392355222	48 Schiller Lane	Jenifer	Waterlooville	PO13 2WR 
36	Reeba	Craigs	07026802408	rcraigsz@ucoz.ru	02392812837	647 Moland Hill	Eggendart	Havant	PO92 5WO 
37	Vale	Gaythor	07315887506	vgaythor10@seesaa.net	\N	59642 Arizona Lane	Little Fleur	Portsmouth	PO57 3IK 
38	Eula	Lindmark	07626740100	elindmark11@mayoclinic.com	02392287927	0 Elka Hill	Prairieview	Fratton	PO48 1ZU 
39	Therese	Jirusek	07803319128	tjirusek12@youtu.be	02392751740	99974 Memorial Terrace	Division	Portsmouth	PO71 9SL 
40	Noach	Autie	07432298440	nautie13@auda.org.au	02392635001	72629 Brickson Park Court	East	Portsmouth	PO52 9MP 
41	Zabrina	Risby	07020993232	zrisby14@squidoo.com	02392970881	533 Dryden Avenue	Scott	Fratton	PO47 4FQ 
42	Briny	Cardillo	07379195250	bcardillo15@shinystat.com	02392228133	7 Cherokee Terrace	Marquette	Havant	PO89 3GU 
43	Thain	Playden	07046689188	tplayden16@cpanel.net	02392188950	479 Lakewood Trail	Jay	Gosport	PO47 9FV 
44	Anselma	Ruprechter	07201121036	aruprechter17@tmall.com	02392051416	6 Warrior Drive	Golf	Southsea	PO96 1KE 
45	Rowen	Laible	07882480952	rlaible18@ebay.com	02392024794	06 Green Trail	Jenna	Waterlooville	PO97 6RQ 
46	Felic	Gasquoine	07513404153	fgasquoine19@mozilla.org	02392054815	74278 3rd Avenue	Scoville	Havant	PO63 1HY 
47	Inez	MacMaykin	07939182648	imacmaykin1a@blogger.com	02392060991	2 Birchwood Court	Reindahl	Fratton	PO27 0JY 
48	Jocelyn	Illingsworth	07320785893	jillingsworth1b@cnn.com	02392928432	3888 Valley Edge Place	Anderson	Waterlooville	PO53 7HK 
49	Brett	Heijne	\N	bheijne1c@berkeley.edu	02392699016	3521 Spaight Junction	Bayside	Waterlooville	PO44 1XJ 
50	Janos	Seiler	07979796810	jseiler1d@columbia.edu	02392183432	3 Eastlawn Junction	Atwood	Southsea	PO51 2MK 
51	Nicola	Hall	07155675430	\N	\N	4082 Montana Court	Sycamore	Havant	PO93 0ZB 
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.role (role_id, role_name) FROM stdin;
1	Manager
2	Body Shop
3	Cleaner
4	Mechanic
5	MOT
6	Receptionist
\.


--
-- Data for Name: service; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.service (service_id, service_date, service_vin) FROM stdin;
1	2019-04-17	1FMCU5K31AK371513
2	2019-04-17	1FMCU5K31AK371513
3	2019-02-19	WAURFAFR1AA235954
4	2019-06-25	WBASP4C56AC118926
5	2019-09-05	1GT022CG3EF666076
6	2019-08-26	5UXZV8C52CL299765
7	2019-04-07	WA1DMAFP6FA409973
8	2019-06-27	JM1NC2LF4D0652957
9	2019-01-05	1C4RDJDG4DC458153
10	2019-04-02	WVGEF9BP2FD401520
11	2019-04-24	1GD312CG6EF767396
12	2019-03-22	1D4PT4GX1BW610458
13	2019-06-15	1VWAH7A3XEC281757
14	2019-02-26	1GT022CG3EF666076
15	2019-04-20	WBAGN63494D143400
16	2019-11-13	1FMCU0F7XFU766057
17	2019-03-13	WAURFAFR1AA235954
18	2019-03-27	3C63DRGL0CG587815
19	2019-03-15	JHMZF1C46DS887056
20	2019-03-23	19XFB2F51FE971592
21	2019-08-05	JM1NC2MFXD0721116
22	2019-05-18	WAUKH74F78N594168
23	2019-11-08	WA1DMAFP6FA409973
24	2019-03-22	JTMHY7AJ1B4693538
25	2019-04-28	WBAUT9C50CA130585
26	2019-11-08	WBAFR7C52CC887987
27	2019-01-27	YV4852CT4A1212575
28	2019-02-13	WAUBH78E86A804797
29	2019-10-02	WBANA53534B804405
30	2019-07-01	WAURFAFR1AA235954
31	2019-02-18	WBAFR7C52CC887987
32	2018-12-19	5UXZV8C52CL299765
33	2019-11-10	JM1NC2LF4D0652957
34	2019-04-06	SCFEBBAK3CG085473
35	2019-02-12	WAUBH78E86A804797
36	2019-04-14	WA1DVBFE4AD827764
37	2018-12-19	WA1WGAFPXEA292476
38	2019-11-07	1D4PT4GX1BW610458
39	2019-04-18	WBAFR7C52CC887987
40	2019-03-15	KNDPB3A23D7128112
41	2019-01-01	KNDJN2A20F7492269
42	2019-06-11	JTMHY7AJ1B4693538
43	2019-11-10	1N4AB7AP2EN992967
44	2019-08-05	WBAUT9C50CA130585
45	2019-02-25	JM1NC2MFXD0721116
46	2019-05-27	1FMCU5K31AK371513
47	2019-03-09	WBASP4C56AC118926
48	2019-04-29	WVGEF9BP2FD401520
49	2019-01-22	JM1NC2LF4D0652957
50	2019-05-03	2HNYD18854H226487
51	2019-07-13	WAUKD98P69A477247
52	2019-03-27	WAUBH78E86A804797
53	2019-01-03	WBAFR7C52CC887987
54	2019-10-17	5UXZV8C52CL299765
55	2019-04-10	19XFB2F51FE971592
56	2019-10-13	1FMCU5K31AK371513
57	2019-09-01	WBAUT9C50CA130585
58	2019-03-22	WAUKH74F78N594168
59	2018-12-14	1D4PT4GX1BW610458
60	2019-01-08	JTMHY7AJ1B4693538
61	2019-09-04	WBAGN63494D143400
62	2019-03-18	3C63DRGL0CG587815
63	2019-01-19	SCFEBBAK3CG085473
64	2019-08-16	WBANA53534B804405
65	2019-04-07	SCFEBBAK3CG085473
66	2019-07-27	1VWAH7A3XEC281757
67	2018-12-07	3D7JB1EK6AG171935
68	2019-09-03	WAUKD98P69A477247
69	2018-11-29	5UXZV4C54BL206476
70	2019-01-28	WAUKD98P69A477247
71	2019-09-08	WA1DVBFE4AD827764
72	2019-01-23	KNDJN2A20F7492269
73	2019-08-03	WAUBH78E86A804797
74	2019-03-30	3C63DRGL0CG587815
75	2019-09-12	1N4AB7AP2EN992967
76	2019-02-13	WAURFAFR1AA235954
77	2019-01-18	1C4RDJDG4DC458153
78	2019-03-11	2HNYD18854H226487
79	2019-11-15	WBANA53534B804405
80	2018-12-10	JM1NC2MFXD0721116
81	2019-09-30	1GD312CG6EF767396
82	2018-11-20	5UXZV4C54BL206476
83	2019-10-29	3C63DRGL0CG587815
84	2019-01-29	3C63DRGL0CG587815
85	2019-04-14	YV4852CT4A1212575
86	2019-04-14	JN1CV6APXDM113646
87	2019-03-30	WAUBH78E86A804797
88	2019-08-28	WAUKD98P69A477247
89	2019-04-04	JN1CV6APXDM113646
90	2019-03-13	1GD312CG6EF767396
91	2019-05-04	WBAFR7C52CC887987
92	2019-04-23	JM3ER2A51B0083515
93	2019-03-20	WAUKH74F78N594168
94	2019-04-28	2C3CDXEJXCH935462
95	2019-02-07	WAUGL78E26A434497
96	2019-04-02	WAUBH78E86A804797
97	2019-03-02	1N6AF0LXXFN213171
98	2019-09-21	WAUKD98P69A477247
99	2018-11-21	KNDJN2A20F7492269
100	2019-01-27	1GD312CG6EF767396
101	2019-07-09	WA1WGAFPXEA292476
102	2019-08-07	JN1BY1PP2FM043544
103	2019-10-18	WBA3D3C59FK583592
104	2019-01-27	WA1DMAFP6FA409973
105	2019-09-12	WA1DVBFE4AD827764
106	2019-09-16	JN1AY1AP6BM533709
107	2018-12-20	WBAGN63494D143400
108	2019-09-25	1VWAH7A3XEC281757
109	2019-03-17	JHMZF1C62FS375878
110	2018-12-08	WBANA53534B804405
111	2019-01-10	WA1DVBFE4AD827764
112	2019-04-01	YV4852CT4A1212575
113	2019-09-23	WA1DMAFP6FA409973
114	2019-10-21	JHMZF1C46DS887056
115	2019-11-02	SCFEBBAK3CG085473
116	2018-12-26	WA1DMAFP6FA409973
117	2019-07-30	JTMHY7AJ1B4693538
118	2018-12-21	1C4RDJDG4DC458153
119	2018-12-10	1D4PT4GX1BW610458
120	2019-10-17	WAURFAFR1AA235954
121	2019-04-19	KNDJN2A20F7492269
122	2019-04-13	WA1DMAFP6FA409973
123	2019-01-20	WAUKD98P69A477247
124	2019-05-20	WAUGL78E26A434497
125	2019-01-26	19XFB2F51FE971592
126	2019-08-12	KNDPB3A23D7128112
127	2019-02-28	WBANA53534B804405
128	2019-09-17	WAUGL78E26A434497
129	2019-01-09	1FMCU5K31AK371513
130	2019-10-18	WAUHMAFC5EN989631
131	2019-07-28	KNDJN2A20F7492269
132	2018-12-03	3D7JB1EK6AG171935
133	2019-06-15	3D7JB1EK6AG171935
134	2018-11-27	3D7JB1EK6AG171935
135	2019-09-10	SCFEBBAK3CG085473
136	2019-02-20	3C63DRGL0CG587815
137	2019-09-30	KNDPB3A23D7128112
138	2019-10-14	1N6AF0KY2FN657459
139	2019-07-24	1N6AF0LXXFN213171
140	2019-10-21	5UXZV8C52CL299765
141	2019-04-17	JN1AY1AP6BM533709
142	2019-11-04	JM1NC2MFXD0721116
143	2019-07-29	WVGEF9BP2FD401520
144	2019-01-09	5UXZV8C52CL299765
145	2018-12-07	JM1NC2LF4D0652957
146	2018-12-07	WVGEF9BP2FD401520
147	2019-01-17	JN1CV6APXDM113646
148	2019-08-19	SCFEBBAK3CG085473
149	2019-03-26	WBANA53534B804405
150	2019-09-19	WAUHMAFC5EN989631
151	2019-10-03	JN1BY1PP2FM043544
152	2018-12-03	WVGEF9BP2FD401520
153	2019-07-30	WAUKH74F78N594168
154	2019-11-13	JN1AY1AP6BM533709
155	2019-10-05	1N6AF0KY2FN657459
156	2019-02-20	JM3ER2A51B0083515
157	2019-11-16	WAURFAFR1AA235954
158	2018-12-30	1C4RDJDG4DC458153
159	2019-09-07	5UXZV4C54BL206476
160	2019-01-03	WAUKH74F78N594168
161	2019-05-02	JM1NC2MFXD0721116
162	2018-12-15	1N6AF0LXXFN213171
163	2019-04-07	JM1NC2MFXD0721116
164	2019-10-30	JHMZF1C46DS887056
165	2019-01-29	WBAFR7C52CC887987
166	2019-05-03	1C4RDJDG4DC458153
167	2019-10-10	WAUBH78E86A804797
168	2019-01-08	WAULFAFR5EA905081
169	2019-02-03	1GD312CG6EF767396
170	2019-10-23	3D7JB1EK6AG171935
171	2019-09-15	JN1AY1AP6BM533709
172	2019-08-17	3D7JB1EK6AG171935
173	2019-04-25	WAUKD98P69A477247
174	2019-08-08	1VWAH7A3XEC281757
175	2019-03-03	WVGEF9BP2FD401520
176	2019-10-28	JM3ER2A51B0083515
177	2019-09-13	WBAGN63494D143400
178	2019-04-07	1N6AF0KY2FN657459
179	2019-04-12	KNDPB3A23D7128112
180	2019-05-07	WBAGN63494D143400
181	2019-06-05	1N6AF0LXXFN213171
182	2019-04-02	1FMCU0F7XFU766057
183	2019-04-25	3D7JB1EK6AG171935
184	2019-04-30	1C4RDJDG4DC458153
185	2019-05-22	1GT022CG3EF666076
186	2019-11-07	SCFEBBAK3CG085473
187	2019-06-27	3D7JB1EK6AG171935
188	2019-08-20	KNDPB3A23D7128112
189	2018-12-18	1D4PT4GX1BW610458
190	2019-03-29	JTMHY7AJ1B4693538
191	2019-07-17	2HNYD18854H226487
192	2019-10-12	JN1BY1PP2FM043544
193	2019-08-18	JM1NC2LF4D0652957
194	2019-05-01	WA1DVBFE4AD827764
195	2018-11-27	WA1DVBFE4AD827764
196	2019-01-27	KNDJN2A20F7492269
197	2018-12-15	WBAGN63494D143400
198	2018-11-29	1FMCU0F7XFU766057
199	2019-10-20	1FMCU0F7XFU766057
200	2019-05-04	WA1DMAFP6FA409973
201	2019-01-20	WAULFAFR5EA905081
202	2019-06-25	1GT022CG3EF666076
203	2019-05-28	WAUGL78E26A434497
204	2019-10-23	1C4RDJDG4DC458153
205	2019-07-01	WAUGL78E26A434497
206	2019-06-21	JN1AY1AP6BM533709
207	2019-04-08	KNDJN2A20F7492269
208	2019-05-25	3D7JB1EK6AG171935
209	2018-12-06	JHMZF1C62FS375878
210	2019-11-04	2C3CDXEJXCH935462
211	2019-08-28	WBAFR7C52CC887987
212	2019-03-14	WAUHMAFC5EN989631
213	2019-07-23	JN1BY1PP2FM043544
214	2018-12-23	JN1CV6APXDM113646
215	2019-02-17	WBAUT9C50CA130585
216	2019-04-08	1FMCU0F7XFU766057
217	2019-02-26	WBA3D3C59FK583592
218	2019-02-12	WBANA53534B804405
219	2019-01-07	1D4PT4GX1BW610458
220	2019-08-31	JM3ER2A51B0083515
221	2019-05-09	KNDPB3A23D7128112
222	2018-12-07	5UXZV8C52CL299765
223	2019-09-07	JM1NC2MFXD0721116
224	2019-09-22	1N4AB7AP2EN992967
225	2019-03-02	JM1NC2MFXD0721116
226	2019-09-04	3C63DRGL0CG587815
227	2019-04-11	2HNYD18854H226487
228	2019-03-13	JTMHY7AJ1B4693538
229	2019-09-25	JN1BY1PP2FM043544
230	2019-03-06	4A4AP3AU8EE459332
231	2019-08-16	JM1NC2MFXD0721116
232	2019-05-23	JHMZF1C46DS887056
233	2019-04-10	JM1NC2LF4D0652957
234	2019-01-04	1C4RDJDG4DC458153
235	2019-07-26	WA1DMAFP6FA409973
236	2019-06-17	1N6AF0LXXFN213171
237	2019-01-30	WVGEF9BP2FD401520
238	2018-12-19	WA1DMAFP6FA409973
239	2019-08-13	WA1DVBFE4AD827764
240	2019-06-06	YV4852CT4A1212575
241	2019-08-21	1N6AF0KY2FN657459
242	2019-10-22	WAURFAFR1AA235954
243	2019-08-23	1GT022CG3EF666076
244	2019-09-02	WAUKD98P69A477247
245	2018-11-20	KNDPB3A23D7128112
246	2019-05-17	KNDJN2A20F7492269
247	2019-07-30	WA1DVBFE4AD827764
248	2019-04-14	WBANA53534B804405
249	2019-05-31	WAUKD98P69A477247
250	2019-08-14	1N6AF0KY2FN657459
251	2019-10-14	1FMCU5K31AK371513
252	2019-10-04	JM3ER2A51B0083515
253	2019-08-13	4A4AP3AU8EE459332
254	2019-06-29	JM3ER2A51B0083515
255	2019-10-29	WAUGL78E26A434497
256	2019-01-06	WBAFR7C52CC887987
257	2019-01-31	2HNYD18854H226487
258	2019-10-16	1D4PT4GX1BW610458
259	2019-05-12	4A4AP3AU8EE459332
260	2019-06-19	WBAUT9C50CA130585
261	2019-05-12	3C63DRGL0CG587815
262	2019-02-06	4A4AP3AU8EE459332
263	2019-09-25	WAULFAFR5EA905081
264	2018-11-22	WAUKH74F78N594168
265	2019-07-13	JN1CV6APXDM113646
266	2019-07-24	WA1DVBFE4AD827764
267	2019-09-03	3C63DRGL0CG587815
268	2019-07-01	1D4PT4GX1BW610458
269	2019-01-27	WAULFAFR5EA905081
270	2019-10-23	WBA3D3C59FK583592
271	2019-10-07	WBANA53534B804405
272	2019-09-27	WBAGN63494D143400
273	2019-03-06	WAULFAFR5EA905081
274	2019-04-29	3C63DRGL0CG587815
275	2019-10-27	1N4AB7AP2EN992967
276	2019-11-02	WAUHMAFC5EN989631
277	2019-06-19	WAURFAFR1AA235954
278	2018-12-09	WA1DVBFE4AD827764
279	2018-12-16	WA1DMAFP6FA409973
280	2019-09-24	JN1AY1AP6BM533709
281	2019-07-08	WAUBH78E86A804797
282	2018-12-26	WAUHMAFC5EN989631
283	2019-03-19	JN1CV6APXDM113646
284	2019-11-14	WBANA53534B804405
285	2019-03-29	WAULFAFR5EA905081
286	2019-08-19	YV4852CT4A1212575
287	2019-10-21	1N4AB7AP2EN992967
288	2019-08-21	JHMZF1C62FS375878
289	2019-04-04	JHMZF1C62FS375878
290	2019-06-15	1GD312CG6EF767396
291	2019-01-16	JHMZF1C46DS887056
292	2019-05-09	4A4AP3AU8EE459332
293	2019-10-31	SCFEBBAK3CG085473
294	2019-07-07	SCFEBBAK3CG085473
295	2019-07-16	1FMCU5K31AK371513
296	2019-11-04	JHMZF1C62FS375878
297	2019-05-19	3C63DRGL0CG587815
298	2019-05-11	5UXZV8C52CL299765
299	2019-01-04	1D4PT4GX1BW610458
300	2019-09-12	JN1AY1AP6BM533709
301	2019-06-20	5UXZV4C54BL206476
302	2019-04-15	WAULFAFR5EA905081
303	2019-06-20	WAUKH74F78N594168
304	2019-03-02	WBAGN63494D143400
305	2019-07-08	WAULFAFR5EA905081
306	2018-12-08	JHMZF1C62FS375878
307	2019-01-12	WAUGL78E26A434497
308	2019-02-24	WBAGN63494D143400
309	2019-06-07	1C4RDJDG4DC458153
310	2019-03-13	WBAUT9C50CA130585
311	2019-04-28	1D4PT4GX1BW610458
312	2019-02-07	5UXZV8C52CL299765
313	2019-04-10	WAUKD98P69A477247
314	2019-01-10	WBAFR7C52CC887987
315	2019-04-05	1VWAH7A3XEC281757
316	2019-07-24	1N6AF0LXXFN213171
317	2019-02-13	1N4AB7AP2EN992967
318	2019-03-22	2HNYD18854H226487
319	2019-07-26	KNDJN2A20F7492269
320	2019-07-03	JM1NC2LF4D0652957
321	2019-10-15	WBAGN63494D143400
322	2019-02-12	WBAFR7C52CC887987
323	2019-09-30	WBA3D3C59FK583592
324	2019-04-20	WBA3D3C59FK583592
325	2019-10-09	JN1AY1AP6BM533709
326	2019-02-06	WVGEF9BP2FD401520
327	2018-11-27	WAUBH78E86A804797
328	2019-06-11	3C63DRGL0CG587815
329	2019-11-04	2HNYD18854H226487
330	2018-12-04	WBAFR7C52CC887987
331	2019-04-19	JHMZF1C46DS887056
332	2018-11-30	1N6AF0KY2FN657459
333	2019-04-29	2HNYD18854H226487
334	2019-09-22	WA1DVBFE4AD827764
335	2019-10-13	WBAUT9C50CA130585
336	2019-03-02	WA1DMAFP6FA409973
337	2019-11-01	JTMHY7AJ1B4693538
338	2019-01-03	WBAUT9C50CA130585
339	2019-05-17	WAUHMAFC5EN989631
340	2019-10-27	WBAFR7C52CC887987
341	2019-05-15	WVGEF9BP2FD401520
342	2019-01-02	JTMHY7AJ1B4693538
343	2019-07-05	WBA3D3C59FK583592
344	2019-04-26	KNDPB3A23D7128112
345	2019-06-09	WAURFAFR1AA235954
346	2019-05-05	WAUGL78E26A434497
347	2018-12-05	19XFB2F51FE971592
348	2018-12-05	JM1NC2MFXD0721116
349	2019-03-07	1GT022CG3EF666076
350	2019-02-26	1D4PT4GX1BW610458
351	2018-11-26	5UXZV4C54BL206476
352	2019-07-21	2HNYD18854H226487
353	2019-03-05	KNDPB3A23D7128112
354	2019-08-15	2HNYD18854H226487
355	2019-11-01	1FMCU0F7XFU766057
356	2019-06-16	JN1AY1AP6BM533709
357	2019-06-08	YV4852CT4A1212575
358	2018-11-22	JN1AY1AP6BM533709
359	2019-03-11	JTMHY7AJ1B4693538
360	2019-08-28	JTMHY7AJ1B4693538
361	2019-02-25	WBA3D3C59FK583592
362	2018-12-10	WVGEF9BP2FD401520
363	2019-10-20	YV4852CT4A1212575
364	2019-07-20	WAUKH74F78N594168
365	2019-09-06	1GT022CG3EF666076
366	2019-03-25	WAURFAFR1AA235954
367	2019-08-26	3D7JB1EK6AG171935
368	2019-08-20	WBAUT9C50CA130585
369	2018-12-17	WVGEF9BP2FD401520
370	2019-01-25	WAUGL78E26A434497
371	2019-02-21	1FMCU0F7XFU766057
372	2019-06-27	WAULFAFR5EA905081
373	2019-07-09	1N6AF0KY2FN657459
374	2019-09-10	WA1DVBFE4AD827764
375	2019-02-10	2C3CDXEJXCH935462
376	2019-11-14	WAULFAFR5EA905081
377	2019-11-02	4A4AP3AU8EE459332
378	2019-10-27	WBAUT9C50CA130585
379	2019-03-31	4A4AP3AU8EE459332
380	2018-12-03	WBASP4C56AC118926
381	2019-04-15	SCFEBBAK3CG085473
382	2019-11-02	1N6AF0KY2FN657459
383	2018-12-26	WAUGL78E26A434497
384	2019-04-03	SCFEBBAK3CG085473
385	2019-10-21	JTMHY7AJ1B4693538
386	2019-10-13	1C4RDJDG4DC458153
387	2019-10-05	1GT022CG3EF666076
388	2018-12-28	WBA3D3C59FK583592
389	2018-12-16	WAUGL78E26A434497
390	2019-04-19	KNDPB3A23D7128112
391	2019-10-14	WBANA53534B804405
392	2018-12-26	1C4RDJDG4DC458153
393	2019-06-16	2C3CDXEJXCH935462
394	2019-03-10	2HNYD18854H226487
395	2019-01-20	WA1DVBFE4AD827764
396	2019-07-20	5UXZV8C52CL299765
397	2019-04-13	3C63DRGL0CG587815
398	2019-08-30	WAUHMAFC5EN989631
399	2019-04-09	3D7JB1EK6AG171935
400	2019-01-05	WVGEF9BP2FD401520
401	2018-12-11	JN1CV6APXDM113646
402	2019-04-01	JHMZF1C62FS375878
403	2019-03-04	KNDJN2A20F7492269
404	2019-09-14	4A4AP3AU8EE459332
405	2019-01-17	WVGEF9BP2FD401520
406	2019-02-24	WBAUT9C50CA130585
407	2019-01-12	1D4PT4GX1BW610458
408	2019-10-19	WA1WGAFPXEA292476
409	2019-01-26	KNDPB3A23D7128112
410	2019-03-04	1N6AF0KY2FN657459
411	2019-05-29	JHMZF1C46DS887056
412	2019-07-20	1VWAH7A3XEC281757
413	2019-07-31	1N4AB7AP2EN992967
414	2019-09-12	1N4AB7AP2EN992967
415	2019-06-20	1FMCU0F7XFU766057
416	2019-10-02	3C63DRGL0CG587815
417	2019-09-16	1VWAH7A3XEC281757
418	2019-07-18	WBAFR7C52CC887987
419	2019-07-06	KNDPB3A23D7128112
420	2019-03-01	1FMCU0F7XFU766057
421	2019-08-26	1FMCU0F7XFU766057
422	2019-03-03	WBANA53534B804405
423	2019-06-07	3C63DRGL0CG587815
424	2018-11-27	WVGEF9BP2FD401520
425	2019-10-03	WAUGL78E26A434497
426	2019-10-06	JHMZF1C62FS375878
427	2018-12-20	JM1NC2MFXD0721116
428	2019-05-10	WVGEF9BP2FD401520
429	2019-05-27	WAURFAFR1AA235954
430	2019-11-07	WVGEF9BP2FD401520
431	2018-12-21	WBANA53534B804405
432	2019-06-09	1C4RDJDG4DC458153
433	2019-10-18	WAUBH78E86A804797
434	2019-06-18	WVGEF9BP2FD401520
435	2019-05-23	JHMZF1C46DS887056
436	2019-05-25	5UXZV4C54BL206476
437	2018-11-23	KNDJN2A20F7492269
438	2019-01-07	1VWAH7A3XEC281757
439	2019-07-03	WBAGN63494D143400
440	2019-05-08	JHMZF1C46DS887056
441	2019-10-18	3C63DRGL0CG587815
442	2019-04-08	1N6AF0LXXFN213171
443	2019-01-14	WA1WGAFPXEA292476
444	2019-02-03	5UXZV8C52CL299765
445	2019-01-08	WBAGN63494D143400
446	2019-03-26	WAUGL78E26A434497
447	2019-01-05	5UXZV4C54BL206476
448	2019-06-09	WBASP4C56AC118926
449	2019-09-04	JN1BY1PP2FM043544
450	2019-02-25	WAURFAFR1AA235954
451	2019-09-07	4A4AP3AU8EE459332
452	2019-03-09	1VWAH7A3XEC281757
453	2019-10-18	WAUKD98P69A477247
454	2019-02-16	WAUKD98P69A477247
455	2019-04-02	WAULFAFR5EA905081
456	2019-09-11	WAUBH78E86A804797
457	2018-12-30	JHMZF1C46DS887056
458	2019-05-30	WBAUT9C50CA130585
459	2018-12-10	1N6AF0KY2FN657459
460	2019-07-26	2HNYD18854H226487
461	2019-08-24	1GD312CG6EF767396
462	2019-02-11	SCFEBBAK3CG085473
463	2019-02-09	JTMHY7AJ1B4693538
464	2019-01-17	JM1NC2MFXD0721116
465	2019-02-01	JM1NC2LF4D0652957
466	2018-12-08	JN1CV6APXDM113646
467	2019-03-18	WAUGL78E26A434497
468	2019-01-27	2C3CDXEJXCH935462
469	2018-12-22	JHMZF1C62FS375878
470	2019-08-17	1N6AF0KY2FN657459
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.staff (staff_id, staff_fname, staff_lname, staff_salary, staff_email, staff_phone, staff_addr, staff_town, staff_postcode, staff_role) FROM stdin;
1	Daryle	Edelheid	19000	dedelheid0@opensource.org	02392 791873	43142 Pennsylvania Street	Havant	PO33 7UJ	3
7	Suzanna	Truwert	23853	struwert6@seattletimes.com	02392 716935	11176 Sachs Point	Havant	PO83 0NI	6
10	Jodi	Alesbrook	39000	jalesbrook9@ovh.net	02392 461166	6 Charing Cross Plaza	Havant	PO21 5EF	1
2	Loretta	Goodlett	19000	lgoodlett1@alexa.com	02392 126968	564 Clarendon Place	Portsmouth	PO22 2AW	3
5	Yul	Haggata	19000	yhaggata4@arstechnica.com	02392 473179	5593 Old Gate Road	Southsea	PO79 2EL	3
8	Tobe	Del Checolo	19000	tdelchecolo7@exblog.jp	02392 583108	92514 Hazelcrest Way	Southsea	PO45 9CU	3
11	Lyndel	Alberti	19000	lalbertia@home.pl	02392 965461	19935 Muir Place	Havant	PO61 5FN	3
3	Rafaello	Bulgen	25337	rbulgen2@fema.gov	02392 221950	56724 Meadow Valley Trail	Southsea	PO30 7YG	4
9	Shirlee	Spuner	25337	sspuner8@forbes.com	02392 854942	94274 Loomis Hill	Havant	PO05 3TB	4
12	Deane	Gomm	25337	dgommb@google.com.br	02392 131598	3197 Elmside Terrace	Fratton	PO77 7RX	4
4	Erminia	Swinyard	26615	eswinyard3@networksolutions.com	02392 046627	46 Gina Drive	Portsmouth	PO47 3FB	2
6	Nathan	Haffenden	26615	nhaffenden5@reference.com	02392 513179	3 Cottonwood Avenue	Fratton	PO59 1TU	2
13	Nicky	Hall	29337	n.hall@google.com	02392 131575	3 Oakside Terrace	Fratton	PO77 3HE	5
\.


--
-- Data for Name: staffservice; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.staffservice (staff_id, service_id) FROM stdin;
3	45
12	155
9	155
3	12
3	155
13	155
\.


--
-- Data for Name: vehicle; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.vehicle (veh_reg, veh_type, veh_make, veh_model, veh_colour, veh_owner, veh_vin) FROM stdin;
LZ15 FVC	trike	Mitsubishi	Truck	Indigo	34	YV1612FS4E1069779
CL18 OIU	car	Ford	Bronco	Aquamarine	29	19XFB2F51FE971592
UO28 JRU	pickup	Honda	Fit	Purple	28	1N4AB7AP2EN992967
EQ56 CNS	minibus	Volkswagen	Cabriolet	Green	24	KNDPB3A23D7128112
WZ39 DBC	car	Lexus	SC	Khaki	15	1FMCU0F7XFU766057
BA72 QNE	car	Chevrolet	Suburban 1500	Mauv	45	WAUHMAFC5EN989631
PI48 XWZ	van	Infiniti	QX56	Yellow	13	WBAUT9C50CA130585
QD82 MJX	motorbike	Dodge	Avenger	Khaki	12	5UXZV4C54BL206476
YD42 UWM	trike	Audi	S4	Fuscia	22	KNDJN2A20F7492269
RA23 CAZ	minibus	Ford	Crown Victoria	Khaki	28	3D7JB1EK6AG171935
BW63 DKT	van	Chevrolet	Venture	Orange	46	1VWAH7A3XEC281757
QM92 NPB	pickup	BMW	X3	Puce	2	JHMZF1C62FS375878
ZL62 QAI	trike	Mercury	Capri	Khaki	39	WA1DMAFP6FA409973
CY17 LDZ	motorbike	Subaru	Impreza	Teal	14	WBA3D3C59FK583592
NM20 LNU	van	Land Rover	Defender	Blue	40	JM1NC2LF4D0652957
VS62 KBQ	minibus	Volkswagen	Jetta	Khaki	33	4A4AP3AU8EE459332
RO65 AKI	car	Mitsubishi	Montero Sport	Yellow	14	JN1AY1AP6BM533709
QP49 CDT	motorbike	Chevrolet	Tracker	Blue	9	WA1WGAFPXEA292476
DZ13 RIJ	motorbike	Mercedes-Benz	S-Class	Orange	28	1D4PT4GX1BW610458
RH21 FYJ	minibus	Hyundai	Veracruz	Aquamarine	15	1N6AF0KY2FN657459
YA58 WKQ	minibus	Toyota	Tacoma	Turquoise	17	YV4852CT4A1212575
PC58 PRC	pickup	Maserati	Gran Sport	Teal	39	2C3CDXEJXCH935462
WH70 JHI	car	Mazda	929	Khaki	8	5UXZV8C52CL299765
IU08 PJI	minibus	Volkswagen	Golf III	Turquoise	1	WAURFAFR1AA235954
GU18 DAF	trike	Dodge	Nitro	Maroon	18	JTMHY7AJ1B4693538
DX06 XYC	car	Saturn	S-Series	Goldenrod	30	1FMCU5K31AK371513
OV78 XQW	motorbike	GMC	Yukon XL 2500	Maroon	33	SCFEBBAK3CG085473
DA64 IBG	car	Dodge	Grand Caravan	Blue	9	WBAGN63494D143400
RS23 HRY	van	Nissan	300ZX	Mauv	47	WAUKD98P69A477247
VP19 RUV	van	Buick	Riviera	Maroon	9	WAUKH74F78N594168
IX87 KTQ	pickup	Chevrolet	Silverado 1500	Mauv	23	JN1BY1PP2FM043544
GV70 DLE	minibus	GMC	Sierra	Khaki	20	1GT022CG3EF666076
NH22 JYV	car	Chrysler	200	Red	5	WAUBH78E86A804797
OI96 WZB	car	Mitsubishi	3000GT	Puce	41	WBANA53534B804405
GD42 APC	motorbike	Pontiac	Firebird	Violet	26	JM3ER2A51B0083515
TM47 CJD	motorbike	Dodge	Dakota	Goldenrod	7	1N6AF0LXXFN213171
BD14 RUK	minibus	Bentley	Continental GT	Yellow	40	3C63DRGL0CG587815
FA87 PQD	pickup	Toyota	Tercel	Green	33	WAULFAFR5EA905081
MW10 CJP	minibus	Oldsmobile	Aurora	Teal	7	JHMZF1C46DS887056
NB98 FCT	pickup	Ford	Explorer	Violet	47	1GD312CG6EF767396
XI73 GRX	trike	Porsche	911	Puce	9	WA1DVBFE4AD827764
IC96 RYD	trike	Daewoo	Leganza	Violet	26	WBASP4C56AC118926
LE02 CAE	motorbike	Mercury	Grand Marquis	Blue	28	WBAFR7C52CC887987
YF12 QMX	motorbike	Chevrolet	HHR	Pink	41	2HNYD18854H226487
PU05 TPU	trike	Rolls-Royce	Phantom	Violet	17	WAUGL78E26A434497
RY73 ZQK	trike	Chevrolet	Camaro	Red	29	JM1NC2MFXD0721116
VQ77 DXV	van	Saab	9-3	Teal	23	JN1CV6APXDM113646
OK98 DVY	motorbike	Pontiac	Fiero	Green	21	WVGEF9BP2FD401520
VS18 FXE	minibus	Suzuki	Equator	Purple	50	WWGEF9BP2FD401890
VS56 WMV	pickup	BMW	330	Puce	48	WVAUKFCFR5HJ90501
LO16 MMC	trike	Dacia	Sandero	Green	50	VY1066FS9E1069777
KK14 OOP	minibus	Ford	Ka	Goldenrod	51	11111111111111111
\.


--
-- Name: customer_cust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: up933019
--

SELECT pg_catalog.setval('public.customer_cust_id_seq', 53, true);


--
-- Name: service_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: up933019
--

SELECT pg_catalog.setval('public.service_service_id_seq', 470, true);


--
-- Name: staff_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: up933019
--

SELECT pg_catalog.setval('public.staff_staff_id_seq', 13, true);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cust_id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (role_id);


--
-- Name: service service_id; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.service
    ADD CONSTRAINT service_id PRIMARY KEY (service_id);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- Name: staffservice staffservice_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staffservice
    ADD CONSTRAINT staffservice_pkey PRIMARY KEY (staff_id, service_id);


--
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (veh_vin);


--
-- Name: staff staff_staff_role_fkey; Type: FK CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_staff_role_fkey FOREIGN KEY (staff_role) REFERENCES public.role(role_id);


--
-- Name: staffservice staffservice_service_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staffservice
    ADD CONSTRAINT staffservice_service_id_fkey FOREIGN KEY (service_id) REFERENCES public.service(service_id);


--
-- Name: staffservice staffservice_staff_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staffservice
    ADD CONSTRAINT staffservice_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(staff_id);


--
-- Name: vehicle vehicle_veh_owner_fkey; Type: FK CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_veh_owner_fkey FOREIGN KEY (veh_owner) REFERENCES public.customer(cust_id);


--
-- PostgreSQL database dump complete
--
