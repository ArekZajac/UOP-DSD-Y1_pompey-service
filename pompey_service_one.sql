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
    cust_postcode character(9) NOT NULL,
    cust_veh character(8)
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
-- Name: staff; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.staff (
    staff_id integer NOT NULL,
    staff_fname character varying(25) NOT NULL,
    staff_lname character varying(30) NOT NULL,
    staff_role character varying(20) NOT NULL,
    staff_salary integer NOT NULL,
    staff_email character varying(80),
    staff_phone character varying(12) NOT NULL,
    staff_addr character varying(30) NOT NULL,
    staff_town character varying(20) NOT NULL,
    staff_postcode character(8) NOT NULL
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
-- Name: vehicle; Type: TABLE; Schema: public; Owner: up933019
--

CREATE TABLE public.vehicle (
    veh_reg character(8) NOT NULL,
    veh_type character varying(20) NOT NULL,
    veh_make character varying(20) NOT NULL,
    veh_model character varying(15) NOT NULL,
    veh_colour character varying(20) NOT NULL,
    veh_vin character(17) DEFAULT '11111111111111111'::bpchar NOT NULL
);


ALTER TABLE public.vehicle OWNER TO up933019;

--
-- Name: customer cust_id; Type: DEFAULT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.customer ALTER COLUMN cust_id SET DEFAULT nextval('public.customer_cust_id_seq'::regclass);


--
-- Name: staff staff_id; Type: DEFAULT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staff ALTER COLUMN staff_id SET DEFAULT nextval('public.staff_staff_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.customer (cust_id, cust_firstname, cust_lastname, cust_mobile, cust_email, cust_landline, cust_address1, cust_address2, cust_town, cust_postcode, cust_veh) FROM stdin;
2	Alexandro	Castello	07671668165	acastello1@opensource.org	02392003159	6 West Court	Rusk	Gosport	PO44 2KE 	FJ18 DNA
3	Philipa	Cowap	07211473628	pcowap2@edublogs.org	02392230671	9767 Mayfield Parkway	Hintze	Southsea	PO15 7NQ 	WM58 VXQ
4	Prince	Roskelley	07265367712	proskelley3@washington.edu	02392439594	90444 Kensington Court	Dorton	Portsmouth	PO13 7UQ 	ZE46 TFN
5	Redford	Greenstead	07248497791	rgreenstead4@barnesandnoble.com	02392006472	4 Center Place	Reindahl	Havant	PO97 8HA 	MA49 UVA
6	Sharleen	Sitlington	07927883952	ssitlington5@scribd.com	02392981452	86088 Florence Street	Merchant	Fratton	PO47 2YP 	NI90 MVC
7	Allys	Millhill	07672121282	amillhill6@globo.com	02392258154	91 Quincy Hill	Carioca	Havant	PO90 2BK 	LA46 UXD
8	Cello	Boggon	07369698288	cboggon7@nih.gov	02392825975	253 Sauthoff Way	Cardinal	Gosport	PO31 3EY 	DQ19 SAN
9	Hendrik	Gomersall	07156406915	hgomersall8@auda.org.au	02392454707	6198 Moose Trail	Mayer	Havant	PO85 4WV 	HB36 RCN
10	Bradford	Ashingden	07165668792	bashingden9@yahoo.com	02392465547	53 Manufacturers Circle	Spenser	Portsmouth	PO74 2WF 	CK28 RXL
11	Lorant	Jori	07814087291	ljoria@businessweek.com	02392975035	45220 Meadow Ridge Park	Cherokee	Gosport	PO63 9FV 	NV36 NAW
12	Gayler	Scallon	07260725879	gscallonb@vk.com	02392716485	83 Monterey Center	Montana	Havant	PO52 6SV 	KO79 FHV
13	Ardyth	Eleshenar	07999504106	aeleshenarc@imageshack.us	02392680669	2245 Delaware Avenue	Pepper Wood	Fratton	PO14 6PV 	TZ11 MHX
14	Padraig	Aubin	07919058368	paubind@i2i.jp	02392229352	24387 Lotheville Avenue	Shasta	Gosport	PO47 0OB 	PV37 CDM
15	Bernadine	Postgate	07441954719	bpostgatee@businesswire.com	02392591004	116 Hagan Terrace	Fallview	Fratton	PO47 1YQ 	AN26 ODB
16	Jerri	Wain	07170322722	jwainf@scribd.com	02392893409	6288 Ilene Lane	Hazelcrest	Southsea	PO72 7HQ 	IK67 JCB
17	Chlo	Penniall	07711507961	cpenniallg@dell.com	02392385922	52905 Hagan Center	Merrick	Southsea	PO65 3GR 	OL22 NAE
18	Adlai	Hollows	07810024963	ahollowsh@webnode.com	02392049268	9544 Birchwood Street	Golf View	Southsea	PO24 0FZ 	SL91 YRB
19	Kelwin	Stoppe	07906826208	kstoppei@mediafire.com	02392097469	11855 Larry Plaza	Gerald	Portsmouth	PO02 4PL 	OI74 WBC
20	Erda	Zarb	07607249128	ezarbj@livejournal.com	02392241225	782 Erie Street	Anderson	Southsea	PO32 1NZ 	SF43 EIJ
21	Nelli	Allom	07642521944	nallomk@opera.com	02392890990	600 Swallow Circle	Goodland	Waterlooville	PO19 0CD 	RH19 NSM
22	Fabio	Scampion	07165902590	fscampionl@msn.com	02392201518	98951 Farmco Crossing	Kingsford	Gosport	PO66 5GF 	RW87 YHF
23	Anitra	Wesgate	07560626951	awesgatem@eepurl.com	02392563483	78 Melvin Crossing	Scoville	Waterlooville	PO27 0ZF 	NU48 LGU
24	Dulsea	Seller	07465590155	dsellern@google.com	02392312174	94020 Corry Alley	Maywood	Waterlooville	PO58 0CF 	VW13 PED
25	Jocelin	Lighterness	07069757032	jlighternesso@reference.com	02392021860	3160 Hallows Circle	Maryland	Waterlooville	PO65 5JF 	CE67 FRZ
26	Nickolaus	Gorstidge	07334466438	ngorstidgep@whitehouse.gov	02392937776	0 Debs Street	Duke	Fratton	PO98 6AJ 	XO07 NZW
27	Marla	Strick	07314326043	mstrickq@nps.gov	02392282451	79058 Mcbride Avenue	Annamark	Southsea	PO82 5FI 	RK97 CVO
28	Atalanta	McEvay	07954373169	amcevayr@baidu.com	02392757573	41 Bobwhite Place	Vera	Fratton	PO28 7EO 	XM54 OGI
29	Dulcinea	Brinkler	07406849761	dbrinklers@over-blog.com	02392307513	4872 Heffernan Circle	Brentwood	Havant	PO15 7VF 	YK74 ACD
30	Lynde	Toms	07502264243	ltomst@hibu.com	02392400719	38 Hazelcrest Terrace	Fairfield	Fratton	PO31 0SB 	LA66 VYQ
31	Jill	Pomfrey	07725215653	jpomfreyu@networksolutions.com	02392803172	1918 Westridge Pass	Eagle Crest	Southsea	PO93 2CR 	VE06 UAM
32	Burty	Hixley	07475498475	bhixleyv@loc.gov	02392124622	3727 Fairview Pass	Tennessee	Fratton	PO64 3AN 	AG91 CZN
33	Amelia	Farbrother	07357151739	afarbrotherw@yahoo.com	02392618506	6 Morningstar Alley	Quincy	Southsea	PO58 9BL 	MY71 CNZ
34	Gabbey	Mearing	07919484143	gmearingx@w3.org	02392228945	6 Comanche Point	Basil	Fratton	PO57 9DS 	IW74 NTY
35	Amalie	Cordobes	07708137708	acordobesy@techcrunch.com	02392301716	3 Hudson Center	2nd	Gosport	PO56 3GZ 	JV32 PZO
36	Hy	Pearman	07006623573	hpearmanz@discovery.com	02392133464	8095 Stephen Crossing	Drewry	Gosport	PO22 1VM 	YI40 CBV
37	Nester	Lavall	07213842487	nlavall10@google.de	02392228292	58798 Porter Street	Grim	Waterlooville	PO61 0DF 	IF07 QSK
38	Howey	Meriguet	07144606475	hmeriguet11@bluehost.com	02392119325	3 Clarendon Crossing	Lyons	Southsea	PO47 4JG 	GX62 DGW
39	Patton	Conkey	07529051853	pconkey12@example.com	02392940673	01888 Lyons Park	Summer Ridge	Fratton	PO95 2NL 	OA22 LQT
40	Paloma	Turbat	07184620011	pturbat13@blogspot.com	02392122271	49527 Green Pass	Melvin	Waterlooville	PO57 1RF 	AH02 OAC
41	Cary	Balnaves	07296894251	cbalnaves14@bigcartel.com	02392681877	96 Acker Way	Ryan	Fratton	PO64 1JQ 	FS75 JID
42	Jessie	Siney	07233776286	jsiney15@mediafire.com	02392789138	7841 Evergreen Alley	Forest Run	Gosport	PO47 6TH 	MK19 JSZ
43	Falito	Stoodley	07362790911	fstoodley16@feedburner.com	02392115803	6 Dakota Parkway	Gerald	Havant	PO95 5GW 	OP65 QSB
44	Danika	Cheine	07155643925	dcheine17@ucoz.ru	02392709498	5 Veith Crossing	Lunder	Waterlooville	PO50 6ET 	WK03 XQG
45	Binky	Sheaf	07639366511	bsheaf18@google.ca	02392925300	7 Comanche Plaza	Calypso	Southsea	PO07 3AE 	KA21 LHR
46	Aluin	Scrauniage	07291998457	ascrauniage19@addtoany.com	02392166226	0 Drewry Street	Twin Pines	Southsea	PO83 0SL 	MZ86 XKV
47	Carolan	Kempson	07714594711	ckempson1a@newyorker.com	02392343484	278 Morningstar Parkway	Oneill	Portsmouth	PO14 2ET 	LR66 LAD
48	Tobiah	Waterstone	07150869842	twaterstone1b@miitbeian.gov.cn	02392643342	1315 Tennessee Pass	Pierstorff	Gosport	PO95 6JW 	HF24 UPK
49	Drucill	Hestrop	07048931672	dhestrop1c@about.me	02392733370	209 Heath Center	Sunnyside	Fratton	PO42 8OD 	RE44 NAJ
50	Moria	Simms	07979766617	msimms1d@nature.com	02392194172	23 Warbler Road	Ridgeview	Fratton	PO53 8GH 	QD24 ACI
51	Kirstyn	Begg	07039294944	kbegg1e@geocities.com	02392703897	19210 Pankratz Hill	Colorado	Gosport	PO33 2WB 	MY76 KID
52	Janek	Gress	07146483849	jgress1f@auda.org.au	02392704291	55 Barby Court	Saint Paul	Southsea	PO64 3DA 	MY21 CNL
1	Gabbie	Pavelka	07658765432	gpavelka0@upenn.edu	02392871530	9 Monica Alley	Magdeline	Fratton	PO41 8NP 	OX94 VDA
53	Goldie	Smith	07332667765	goldie.smith@u.edu	\N	11 Monica Alley	Magdeline	Fratton	PO41 8NP 	HW17 VDA
\.


--
-- Data for Name: staff; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.staff (staff_id, staff_fname, staff_lname, staff_role, staff_salary, staff_email, staff_phone, staff_addr, staff_town, staff_postcode) FROM stdin;
\.


--
-- Data for Name: vehicle; Type: TABLE DATA; Schema: public; Owner: up933019
--

COPY public.vehicle (veh_reg, veh_type, veh_make, veh_model, veh_colour, veh_vin) FROM stdin;
OX94 VDA	trike	BMW	745	Pink	11111111111111111
FJ18 DNA	van	Ford	F-Series	Fuscia	11111111111111111
WM58 VXQ	van	Honda	Odyssey	Yellow	11111111111111111
ZE46 TFN	van	Chevrolet	Silverado 3500	Teal	11111111111111111
MA49 UVA	trike	Buick	Reatta	Orange	11111111111111111
NI90 MVC	van	Ford	F350	Turquoise	11111111111111111
LA46 UXD	trike	Chrysler	Aspen	Goldenrod	11111111111111111
DQ19 SAN	trike	GMC	Yukon XL 2500	Yellow	11111111111111111
HB36 RCN	minibus	Dodge	Viper	Aquamarine	11111111111111111
CK28 RXL	trike	Toyota	Sienna	Mauve	11111111111111111
NV36 NAW	van	Mitsubishi	Cordia	Crimson	11111111111111111
KO79 FHV	trike	Toyota	Yaris	Indigo	11111111111111111
TZ11 MHX	minibus	Mazda	MPV	Mauve	11111111111111111
PV37 CDM	van	Kia	Sedona	Blue	11111111111111111
AN26 ODB	minibus	Lexus	GX	Crimson	11111111111111111
IK67 JCB	trike	GMC	Yukon	Goldenrod	11111111111111111
OL22 NAE	car	Mercedes-Benz	R-Class	Green	11111111111111111
SL91 YRB	pickup	Buick	Century	Khaki	11111111111111111
OI74 WBC	trike	Toyota	Venza	Teal	11111111111111111
RH19 NSM	minibus	Subaru	XT	Violet	11111111111111111
RW87 YHF	trike	Land Rover	Discovery	Goldenrod	11111111111111111
NU48 LGU	minibus	Honda	Odyssey	Teal	11111111111111111
VW13 PED	minibus	Isuzu	Rodeo	Goldenrod	11111111111111111
CE67 FRZ	van	Suzuki	SJ	Goldenrod	11111111111111111
XO07 NZW	trike	Suzuki	Daewoo Magnus	Crimson	11111111111111111
RK97 CVO	minibus	Jeep	Liberty	Yellow	11111111111111111
XM54 OGI	van	Dodge	Dakota Club	Indigo	11111111111111111
YK74 ACD	motorbike	Maybach	57	Crimson	11111111111111111
LA66 VYQ	pickup	Lincoln	MKT	Puce	11111111111111111
VE06 UAM	van	GMC	Sierra 1500	Yellow	11111111111111111
AG91 CZN	van	Toyota	RAV4	Maroon	11111111111111111
MY71 CNZ	van	GMC	Savana 1500	Turquoise	11111111111111111
IW74 NTY	pickup	Mercedes-Benz	E-Class	Blue	11111111111111111
JV32 PZO	pickup	Dodge	Ram Van B150	Red	11111111111111111
YI40 CBV	minibus	GMC	Savana 1500	Aquamarine	11111111111111111
IF07 QSK	car	Ford	E250	Mauve	11111111111111111
OA22 LQT	van	Infiniti	IPL G	Maroon	11111111111111111
AH02 OAC	trike	Lexus	RX	Indigo	11111111111111111
FS75 JID	van	Mitsubishi	Chariot	Aquamarine	11111111111111111
MK19 JSZ	car	Mitsubishi	Lancer	Red	11111111111111111
OP65 QSB	car	Isuzu	Amigo	Blue	11111111111111111
WK03 XQG	pickup	Toyota	Land Cruiser	Khaki	11111111111111111
KA21 LHR	pickup	Nissan	Maxima	Puce	11111111111111111
MZ86 XKV	pickup	Pontiac	GTO	Orange	11111111111111111
LR66 LAD	pickup	Volkswagen	Golf	Indigo	11111111111111111
HF24 UPK	van	Chevrolet	Colorado	Fuscia	11111111111111111
RE44 NAJ	motorbike	Mazda	Miata MX-5	Yellow	11111111111111111
QD24 ACI	pickup	Dodge	Durango	Maroon	11111111111111111
MY76 KID	pickup	GMC	Savana 1500	Goldenrod	11111111111111111
MY21 CNL	car	Mazda	MPV	Orange	11111111111111111
HW17 VDA	car	Dacia	Duster	Green	11111111111111111
SF43 EIJ	pickup	Volkswagen	Golf	crimson	11111111111111111
GX62 DGW	car	Cadillac	DeVille	Green	11111111111111111
\.


--
-- Name: customer_cust_id_seq; Type: SEQUENCE SET; Schema: public; Owner: up933019
--

SELECT pg_catalog.setval('public.customer_cust_id_seq', 1, false);


--
-- Name: staff_staff_id_seq; Type: SEQUENCE SET; Schema: public; Owner: up933019
--

SELECT pg_catalog.setval('public.staff_staff_id_seq', 1, false);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (cust_id);


--
-- Name: staff staff_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (staff_id);


--
-- Name: vehicle vehicle_pkey; Type: CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.vehicle
    ADD CONSTRAINT vehicle_pkey PRIMARY KEY (veh_reg);


--
-- Name: customer customer_cust_veh_fkey; Type: FK CONSTRAINT; Schema: public; Owner: up933019
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_cust_veh_fkey FOREIGN KEY (cust_veh) REFERENCES public.vehicle(veh_reg);


--
-- PostgreSQL database dump complete
--

