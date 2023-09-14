\g--
-- PostgreSQL database dump
--

-- Dumped from database version 13.10
-- Dumped by pg_dump version 15.3 (Ubuntu 15.3-1.pgdg22.04+1)

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
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.admin (id, username, roles, password) FROM stdin;
1	admin	["ROLE_ADMIN"]	$2y3
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
9	Zaporizhzhya	2023	f	zaporizhzhya-2023
10	Mexico	2023	f	mexico2023
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.comment (id, conference_id, author, text, email, created_at, photo_filename, state) FROM stdin;
1	9	Ev	Perfect!	eviezua@gmail.com	2023-03-02 18:13:33	\N	submitted
2	10	Ev	Awedsome!	eviezua@gmail.com	2023-03-02 18:14:03	\N	submitted
6	10	WakaWaka	wakawaka	wakawaka@gmail.com	2023-05-10 23:33:59	\N	submitted
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20220818093312	2023-03-02 15:44:35	25
DoctrineMigrations\\Version20220823102933	2023-03-02 15:44:35	4
DoctrineMigrations\\Version20220824072726	2023-03-02 15:44:35	3
DoctrineMigrations\\Version20220824073746	2023-03-02 15:44:35	2
DoctrineMigrations\\Version20220828082049	2023-03-02 15:44:35	5
DoctrineMigrations\\Version20220902130705	2023-03-02 15:44:35	1
DoctrineMigrations\\Version20220902140052	2023-03-02 15:44:35	12
DoctrineMigrations\\Version20230517144815	2023-05-17 17:48:47	11
DoctrineMigrations\\Version20230609203944	2023-06-09 23:39:58	9
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
1	O:36:\\"Symfony\\\\Component\\\\Messenger\\\\Envelope\\":2:{s:44:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0stamps\\";a:1:{s:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\";a:1:{i:0;O:46:\\"Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\":1:{s:55:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Stamp\\\\BusNameStamp\\0busName\\";s:21:\\"messenger.bus.default\\";}}}s:45:\\"\\0Symfony\\\\Component\\\\Messenger\\\\Envelope\\0message\\";O:26:\\"App\\\\Message\\\\CommentMessage\\":2:{s:30:\\"\\0App\\\\Message\\\\CommentMessage\\0id\\";i:6;s:35:\\"\\0App\\\\Message\\\\CommentMessage\\0context\\";a:4:{s:7:\\"user_ip\\";s:9:\\"127.0.0.1\\";s:10:\\"user_agent\\";s:101:\\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36\\";s:8:\\"referrer\\";s:44:\\"https://127.0.0.1:8000/conference/mexico2023\\";s:9:\\"permalink\\";s:44:\\"https://127.0.0.1:8000/conference/mexico2023\\";}}}	[]	default	2023-05-10 23:33:59	2023-05-10 23:33:59	\N
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.sessions (sess_id, sess_data, sess_lifetime, sess_time) FROM stdin;
ooiuj465h31b40bvjg8jm9hl4i	\\x5f7366325f617474726962757465737c613a363a7b733a32323a225f637372662f68747470732d436f6e666572656e6365223b733a34333a22667a6b463630746d6a4d4c6e4d62626856302d686c76396469515f31415032462d6d5579303457566d446b223b733a32313a225f637372662f68747470732d65612d746f67676c65223b733a34333a22496a7070316547677151425f6e58666e534e684b62357676316176694f4a7638687344592d7a626d714667223b733a33393a225f637372662f68747470732d65612d62617463682d616374696f6e2d626174636844656c657465223b733a34333a2266423541576a4a477269666d335979486437732d4b30453642677754525f564e4b536a486b425461417334223b733a32313a225f637372662f68747470732d65612d64656c657465223b733a34333a22434a313636786c4a517a4d746d41666679454e78516e457646464b437866426b7639304d38484272627177223b733a31393a225f637372662f68747470732d436f6d6d656e74223b733a34333a226c6a627534536773745456582d394f5457415933375843553461525573526a79563464563657685a586f55223b733a32343a225f637372662f68747470732d636f6d6d656e745f666f726d223b733a34333a225f4d474250364135316269703650756671425158385a5f6633694c7a6d634856524934773349413659516f223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373737343538313b733a313a2263223b693a313637373737333332313b733a313a226c223b693a303b7d5f73796d666f6e795f666c61736865737c613a303a7b7d	1677776021	1677774581
ku0gbnsuvkjaqbkcmgj13hc5kt	\\x5f7366325f617474726962757465737c613a313a7b733a32323a225f637372662f68747470732d436f6e666572656e6365223b733a34333a22567144314f326b7a3770353150472d504e6f6d6a5070373154676c384b78716f53474d5369357076304e41223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373737333231303b733a313a2263223b693a313637373737333137373b733a313a226c223b693a303b7d	1677774650	1677773210
9luaaflsebl402og0i3nd5p8r7	\\x5f7366325f617474726962757465737c613a313a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373737363132343b733a313a2263223b693a313637373737363131343b733a313a226c223b693a303b7d5f73796d666f6e795f666c61736865737c613a303a7b7d	1677777564	1677776124
g03u11imgbhjoom8m647n25ecu	\\x5f7366325f617474726962757465737c613a313a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a224b30665a4552794c3758534c515a6d7349585748434e75415a66766e4c4c5a7066573630454e38774e5855223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333738373733323b733a313a2263223b693a313638333738373732333b733a313a226c223b693a303b7d	1683789172	1683787732
0gahv58sv183b85ktf0b5qr0f5	\\x5f7366325f617474726962757465737c613a313a7b733a33343a225f73656375726974792e736563757265645f617265612e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373836363834313b733a313a2263223b693a313637373836363533343b733a313a226c223b693a303b7d5f73796d666f6e795f666c61736865737c613a303a7b7d	1677868281	1677866841
2dvtracob3d9kic2m8nda66tl2	\\x5f7366325f617474726962757465737c613a303a7b7d5f73796d666f6e795f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373935333537323b733a313a2263223b693a313637373935333537323b733a313a226c223b693a303b7d	1677955013	1677953573
c2dpjd7rdgng929883qr4gr405	\\x5f7366325f617474726962757465737c613a313a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a22564f75554d6334426f5a65446b7779486d51764b3335396c3653573530477167726f316e44596d4f436567223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333735303834353b733a313a2263223b693a313638333735303735303b733a313a226c223b693a303b7d	1683752285	1683750845
hoi4bbi7n7ksbh6sudt3b319c8	\\x5f7366325f617474726962757465737c613a303a7b7d5f73796d666f6e795f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373935343439393b733a313a2263223b693a313637373935333537333b733a313a226c223b693a303b7d	1677955939	1677954499
ohp77kbua60pj3rfoaqfr1f2at	\\x5f7366325f617474726962757465737c613a333a7b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b733a32343a225f637372662f68747470732d61757468656e746963617465223b733a34333a22676134456c355062644966314e6a4e4473626a556575535a6a6551703072363367374439477a5256446359223b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a224a4951694576476b4b43786a3976655f546c516f6d4365726b4c2d434e4c4c726c3944446e674a4a2d4e6b223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333734383934323b733a313a2263223b693a313638333734373333303b733a313a226c223b693a303b7d	1683750382	1683748942
7f9rtscptpqlt51emf7nu7rkl4	\\x5f7366325f617474726962757465737c613a303a7b7d5f73796d666f6e795f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373935363233363b733a313a2263223b693a313637373935363232353b733a313a226c223b693a303b7d	1677957676	1677956236
usc0v415ab088qdt4t4ht8u9su	\\x5f7366325f617474726962757465737c613a303a7b7d5f73796d666f6e795f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637373935363734303b733a313a2263223b693a313637373935363734303b733a313a226c223b693a303b7d	1677958180	1677956740
0r6umasavahn24tqv327j99nun	\\x5f7366325f617474726962757465737c613a303a7b7d5f73796d666f6e795f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637383033343337353b733a313a2263223b693a313637383033343337353b733a313a226c223b693a303b7d	1678035815	1678034375
56hfjn4i41afbflcfbrkqp3n62	\\x5f7366325f617474726962757465737c613a303a7b7d5f73796d666f6e795f666c61736865737c613a303a7b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313637383232323131303b733a313a2263223b693a313637383232323131303b733a313a226c223b693a303b7d	1678223550	1678222110
6c9j8kp8u8v89rodfvd7vpjvhs	\\x5f7366325f617474726962757465737c613a333a7b733a33343a225f73656375726974792e736563757265645f617265612e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b733a32343a225f637372662f68747470732d61757468656e746963617465223b733a34333a224870435f334e36794f44446d3956506f707669424e3833646241766c6e366d7866662d3879794f30686534223b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a224457346e4449514c4a78757a3441383943342d6a764b6874306779663947683379556a5a4630466a436963223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638343333353737383b733a313a2263223b693a313638343333303031393b733a313a226c223b693a303b7d5f73796d666f6e795f666c61736865737c613a303a7b7d	1684337218	1684335778
7lec9a8gveu8hgp90n56bspbou	\\x5f7366325f617474726962757465737c613a323a7b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a353a2261646d696e223b733a32343a225f637372662f68747470732d61757468656e746963617465223b733a34333a225455736d72503773776e5f483375477347464845694e566f6e787970532d594b6b445f6e39686e79745a4d223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333833313333383b733a313a2263223b693a313638333833313333303b733a313a226c223b693a303b7d	1683832778	1683831338
3tb6rtrhc0pout9i73te9rlokb	\\x5f7366325f617474726962757465737c613a343a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a2261526e686e73584c58786e685a5f7a4b75393259334d764a3736336e72376f524333724b2d2d50356e4b30223b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b733a32343a225f637372662f68747470732d61757468656e746963617465223b733a34333a2267314464417247776b655f70624f6148427533784130564c516742647a444b5868476e6f4d557553434a49223b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a353a2261646d696e223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333832383938393b733a313a2263223b693a313638333832373836363b733a313a226c223b693a303b7d	1683830429	1683828989
9lku1dea155mnqvtg1md34vfvs	\\x5f7366325f617474726962757465737c613a313a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a224d315562345758566b5448356475536355476652412d52776c784365754c31716759384a71376950497a63223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333830333430313b733a313a2263223b693a313638333830333339313b733a313a226c223b693a303b7d	1683804841	1683803401
scenpdbqpk2i1m1inisibggsup	\\x5f7366325f617474726962757465737c613a323a7b733a33343a225f73656375726974792e736563757265645f617265612e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b733a32343a225f637372662f68747470732d61757468656e746963617465223b733a34333a224244447a7957394f412d46747973665555746c723537774f6e662d756f4d65317338726c6d5a6672645251223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638343236363934373b733a313a2263223b693a313638343236363932313b733a313a226c223b693a303b7d	1684268387	1684266947
a41b7erpg841idb60omu9nlao6	\\x5f7366325f617474726962757465737c613a313a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a22584c775f556f5454757366426b4151674e6636416f384d45355a7a356549666a6a43304b4f595f57724a6b223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333833323136363b733a313a2263223b693a313638333833313337393b733a313a226c223b693a303b7d	1683833606	1683832166
kefvo6qmh5cnpd7it1lc2t3rsg	\\x5f7366325f617474726962757465737c613a393a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a2248596848566a334d6b785841694373477157325a6d79672d4d616f64546c574f417568485369696c454959223b733a31393a225f70726f66696c65725f7365617263685f6970223b4e3b733a32333a225f70726f66696c65725f7365617263685f6d6574686f64223b4e3b733a32383a225f70726f66696c65725f7365617263685f7374617475735f636f6465223b4e3b733a32303a225f70726f66696c65725f7365617263685f75726c223b4e3b733a32323a225f70726f66696c65725f7365617263685f7374617274223b4e3b733a32303a225f70726f66696c65725f7365617263685f656e64223b4e3b733a32323a225f70726f66696c65725f7365617263685f6c696d6974223b733a323a223130223b733a32323a225f70726f66696c65725f7365617263685f746f6b656e223b4e3b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333738353738353b733a313a2263223b693a313638333738353733383b733a313a226c223b693a303b7d	1683787225	1683785785
eai08a1rqr6v80827ulctis0h3	\\x5f7366325f617474726962757465737c613a343a7b733a32313a225f637372662f68747470732d7461736b5f6974656d223b733a34333a22326b532d5248584d6c787637464b4251585a4646455475344b624d3432316f45695f67445f48676f376338223b733a32363a225f73656375726974792e6d61696e2e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b733a32343a225f637372662f68747470732d61757468656e746963617465223b733a34333a22424f682d48456b75386d62766b35697033384c546d6f4e66706d70443139396e63777159364d6474615573223b733a32333a225f73656375726974792e6c6173745f757365726e616d65223b733a353a2261646d696e223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638333833343032343b733a313a2263223b693a313638333833333932333b733a313a226c223b693a303b7d	1683835464	1683834024
lclv3238tauqrsa8e7skpqfcdj	\\x5f7366325f617474726962757465737c613a313a7b733a33343a225f73656375726974792e736563757265645f617265612e7461726765745f70617468223b733a32383a2268747470733a2f2f3132372e302e302e313a383030302f61646d696e223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638363334333738393b733a313a2263223b693a313638363334333738393b733a313a226c223b693a303b7d5f73796d666f6e795f666c61736865737c613a303a7b7d	1686345229	1686343789
3u9l7froidsq4v36uqilkff4ah	\\x5f7366325f617474726962757465737c613a313a7b733a32343a225f637372662f68747470732d636f6d6d656e745f666f726d223b733a34333a22354f6a38546e3548366956466737516b7166782d4e736742687749794d5435705067477869566b49343073223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638363333343634353b733a313a2263223b693a313638363333343233323b733a313a226c223b693a303b7d	1686336085	1686334645
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.admin_id_seq', 6, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.comment_id_seq', 8, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.conference_id_seq', 10, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

