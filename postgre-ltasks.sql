--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

-- Started on 2021-04-02 17:43:32

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
-- TOC entry 206 (class 1259 OID 16496)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16494)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 205
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- TOC entry 201 (class 1259 OID 16397)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16395)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 200
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- TOC entry 204 (class 1259 OID 16487)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16510)
-- Name: tasks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tasks (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    body text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.tasks OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 16508)
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 207
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- TOC entry 203 (class 1259 OID 16476)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    username character varying(255) NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16474)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2878 (class 2604 OID 16499)
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- TOC entry 2876 (class 2604 OID 16400)
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- TOC entry 2880 (class 2604 OID 16513)
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- TOC entry 2877 (class 2604 OID 16479)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3031 (class 0 OID 16496)
-- Dependencies: 206
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3026 (class 0 OID 16397)
-- Dependencies: 201
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
7	2014_10_12_000000_create_users_table	1
8	2014_10_12_100000_create_password_resets_table	1
9	2019_08_19_000000_create_failed_jobs_table	1
10	2021_03_27_164932_add_username_to_users_table	2
11	2021_03_31_114026_create_tasks_table	3
\.


--
-- TOC entry 3029 (class 0 OID 16487)
-- Dependencies: 204
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3033 (class 0 OID 16510)
-- Dependencies: 208
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tasks (id, user_id, body, created_at, updated_at) FROM stdin;
62	3	Sed aut dolores non ipsa quo deserunt in voluptates rerum dolor voluptates eligendi beatae voluptatibus adipisci sequi nulla quasi libero numquam tempore a voluptatibus et nulla reiciendis fugiat a est hic dicta harum molestiae numquam est perferendis ut sunt doloremque est quo voluptates repudiandae ut quis aut sapiente iure itaque.	2021-04-02 15:35:33	2021-04-02 15:35:33
63	3	Dolorem est expedita magnam error minus et in repellat qui tempore et et quidem saepe vel amet voluptatem dignissimos eos sit officia ut molestiae harum et vitae dolore perspiciatis sit molestias non debitis optio et eos dolorum sed voluptatem sunt nesciunt soluta molestiae blanditiis quia.	2021-04-02 15:35:33	2021-04-02 15:35:33
64	3	Itaque quas in voluptatem necessitatibus quam dolor velit porro quidem eum sint iste placeat ut sunt mollitia impedit rerum architecto ea odio et impedit molestiae eos dignissimos ut repellendus quis laborum sit numquam est molestiae qui dolore dolorem soluta saepe veritatis debitis nisi accusamus doloremque placeat saepe.	2021-04-02 15:35:33	2021-04-02 15:35:33
65	3	Aut quo ipsum porro aut in ipsum quas unde est laudantium repellendus sint quam harum incidunt laborum rerum enim qui corporis vero dignissimos fugit quia dolores voluptatibus corporis voluptatem sint alias vero aliquam accusamus provident magnam harum distinctio aut delectus soluta id doloribus nihil unde quas enim dignissimos magnam doloribus et cupiditate similique.	2021-04-02 15:35:33	2021-04-02 15:35:33
66	3	Ut et provident qui et eos et qui quis quibusdam est et voluptates itaque quo perferendis esse vel corrupti delectus corrupti sequi eos dolorem ratione.	2021-04-02 15:35:33	2021-04-02 15:35:33
67	3	Esse natus non dolorem ad quia ad perferendis ut minima eos fuga labore numquam eum ipsum eligendi deserunt ipsa molestiae qui consequatur molestiae et officiis odio et facere velit dolor non est doloribus in perspiciatis sed id et.	2021-04-02 15:35:33	2021-04-02 15:35:33
68	3	Quo suscipit molestias ullam ex excepturi pariatur ut quia a ad voluptates voluptas illo repellendus corporis et consequatur cupiditate dolore suscipit eum perspiciatis omnis nobis modi eos et.	2021-04-02 15:35:33	2021-04-02 15:35:33
69	3	Vel doloribus saepe ea dolorem repellendus veritatis dolor quaerat molestiae excepturi placeat porro aspernatur vitae et et et ullam ad ut voluptas et officiis fugit qui esse animi inventore minima eveniet dolor voluptatibus repellat non vel velit sapiente rerum quas aspernatur minima id praesentium sunt labore alias vero quod pariatur laudantium enim doloremque.	2021-04-02 15:35:33	2021-04-02 15:35:33
70	3	Dolor soluta corporis at quo id aut nemo aliquam ab voluptatibus perferendis voluptates error rerum vel quia sit sapiente praesentium a deleniti cupiditate consequatur explicabo ut rerum voluptas perferendis sit ullam nam rerum ratione omnis ut sed harum neque quo perspiciatis illo minima excepturi exercitationem et consequatur.	2021-04-02 15:35:33	2021-04-02 15:35:33
71	3	Nostrum cupiditate nam ad dicta iste dolore expedita cupiditate et corporis adipisci autem autem sed et aut recusandae eos reiciendis reprehenderit maxime impedit ipsum ea qui rerum consectetur quis optio eveniet eligendi iusto cupiditate libero incidunt aspernatur culpa ab non laborum ut facere labore tenetur et numquam explicabo minima velit ipsam.	2021-04-02 15:35:33	2021-04-02 15:35:33
72	3	Rerum voluptate itaque veritatis perferendis provident rerum quis voluptatem quae hic optio odit eligendi sapiente ducimus modi soluta corrupti deserunt consequatur assumenda soluta nisi beatae.	2021-04-02 15:35:33	2021-04-02 15:35:33
73	3	Vel accusantium unde enim culpa ratione ipsum laboriosam omnis ullam consectetur consequuntur atque laudantium quis enim odit ratione laboriosam et assumenda et enim ducimus id voluptatum sint qui ea qui recusandae repellat blanditiis consequatur accusantium omnis perferendis sint quia.	2021-04-02 15:35:33	2021-04-02 15:35:33
74	3	Temporibus velit in aut voluptatem voluptas dolor eveniet rerum culpa aut at voluptatum doloribus voluptatibus deserunt repellendus est fugit quos necessitatibus ab possimus et reiciendis voluptatem consectetur a quibusdam eum quibusdam consequatur hic alias distinctio.	2021-04-02 15:35:33	2021-04-02 15:35:33
75	3	Dolorem consequatur cumque voluptas quia dignissimos saepe voluptas facilis vel sed repellendus omnis ullam placeat a perspiciatis eveniet veritatis consequuntur culpa sed dolores in eos natus aliquid distinctio consequatur perferendis voluptates qui harum atque voluptatem ipsam deleniti odit minus aliquam sapiente quam.	2021-04-02 15:35:33	2021-04-02 15:35:33
76	3	Voluptas quasi velit temporibus quam sed est odio qui exercitationem quam voluptas sit magni natus molestias aut quo asperiores ipsam hic eum excepturi fugit qui sed consequatur deserunt culpa et dolores unde voluptas odit provident distinctio non et quia aliquam voluptas sunt voluptatem qui non non veniam ex.	2021-04-02 15:35:33	2021-04-02 15:35:33
77	3	Nemo accusamus et sunt quam sit porro sed aperiam autem sapiente ullam rerum consequatur soluta aut rem voluptatem aut quo omnis voluptatem temporibus itaque quos quas assumenda assumenda nulla dolorem consectetur a alias est ab quas necessitatibus.	2021-04-02 15:35:33	2021-04-02 15:35:33
78	3	Nesciunt magni nulla atque eligendi voluptatem ipsam est quas tenetur illo tempore et minima ut earum quaerat dolore hic distinctio assumenda doloremque hic eum et sequi qui officia ipsa.	2021-04-02 15:35:33	2021-04-02 15:35:33
79	3	Sed inventore asperiores voluptate velit et velit ipsa quis error doloremque adipisci ducimus quis sed quam ut et corrupti alias aut quos dolor incidunt at sequi quaerat eum nesciunt sint eum ipsam fugiat iusto tenetur ea consequuntur odit quisquam natus inventore minima sed autem vel ut vel consequatur eum ea voluptatem.	2021-04-02 15:35:33	2021-04-02 15:35:33
80	3	Tempore ut assumenda necessitatibus omnis id rerum quae omnis quis dolores omnis praesentium qui deleniti et ut animi minima aut voluptas magnam in corrupti non natus in dolorum ea nihil consequatur.	2021-04-02 15:35:33	2021-04-02 15:35:33
81	3	Porro error tempore dicta quo inventore nobis libero molestiae omnis et maxime quos dolorum neque cumque est veritatis consectetur atque corporis repellendus consequatur sint rerum et cumque quo adipisci vel laudantium id perferendis.	2021-04-02 15:35:33	2021-04-02 15:35:33
82	3	Et fuga nulla velit a cumque aut consectetur earum id et iure consectetur in excepturi dolorem delectus voluptatibus est omnis vel atque autem molestiae animi sequi sed nesciunt dolorem velit amet sed qui suscipit molestias officiis rerum ex blanditiis in libero reprehenderit exercitationem aut harum eveniet harum qui repellendus ut saepe sint et corrupti sequi molestiae alias.	2021-04-02 15:35:33	2021-04-02 15:35:33
83	3	Possimus odio quaerat autem quia vel eum consequatur occaecati ducimus tempora illum fugit tempora et esse voluptates ipsam molestiae sit sed architecto molestiae dolor voluptatem qui fuga enim sit voluptates ut sint eveniet quo occaecati dignissimos quasi id sit similique a dignissimos culpa quos.	2021-04-02 15:35:33	2021-04-02 15:35:33
84	3	Quibusdam repellendus provident libero id corrupti et non architecto est aperiam est ullam ratione eum voluptatem cumque sint voluptatem praesentium modi illo fugit quibusdam ducimus ipsa magni quas corrupti magni tempora maxime optio est eos odio culpa molestias autem non iste eaque fugiat.	2021-04-02 15:35:33	2021-04-02 15:35:33
85	3	Sit qui nobis nemo laboriosam sint similique aut facilis corporis odit sunt recusandae vitae et eveniet repellat quidem in laudantium et quisquam qui molestiae occaecati aut neque facilis quis ullam ducimus facilis aut est et culpa ipsum dignissimos error.	2021-04-02 15:35:33	2021-04-02 15:35:33
86	3	Vitae perspiciatis velit incidunt fuga dolore ut officiis perferendis itaque blanditiis vitae non ut minima nisi accusantium unde natus molestiae facere dolorem eum hic et corporis mollitia ut voluptatum atque veniam earum repellat in beatae et dolorem sint aspernatur quisquam ducimus repellat illo nesciunt nisi et consectetur quia quisquam ipsa.	2021-04-02 15:35:33	2021-04-02 15:35:33
87	3	Aliquam voluptas eum assumenda labore modi dignissimos ad ipsum ab exercitationem iure aspernatur voluptatem sed ipsam ipsa tenetur qui saepe numquam voluptas molestiae officia inventore et et soluta vel fugiat enim nesciunt tenetur expedita delectus omnis libero nostrum nemo veniam numquam natus magni.	2021-04-02 15:35:33	2021-04-02 15:35:33
88	3	Voluptas molestiae ea architecto quam voluptate occaecati neque voluptatibus vero modi quia ut magni modi facilis est iure voluptas eaque omnis et velit ab consectetur maiores ad sequi modi non necessitatibus sint consequuntur omnis optio facere nulla voluptatum debitis qui.	2021-04-02 15:35:33	2021-04-02 15:35:33
89	3	Quo eaque temporibus consequatur ipsum consequatur rerum numquam qui reprehenderit non distinctio in enim saepe aliquid qui quia molestias totam nobis aut necessitatibus sit exercitationem qui aspernatur praesentium numquam earum facilis voluptate enim.	2021-04-02 15:35:33	2021-04-02 15:35:33
90	3	Et esse eveniet qui velit quaerat est possimus consequatur omnis explicabo nisi voluptates fugiat repellendus sunt nisi aspernatur hic cumque praesentium itaque qui ex ducimus velit aperiam earum voluptas ut sit accusamus doloribus ab.	2021-04-02 15:35:33	2021-04-02 15:35:33
91	3	Aut dolorem vitae vero fuga dolorem est consectetur qui officiis molestias veritatis voluptates dolores est nam voluptas quia omnis voluptatem ut hic vitae nulla ut quidem reiciendis sunt vitae consequuntur quia alias omnis mollitia at enim consectetur ut et praesentium recusandae quisquam non neque esse assumenda odit.	2021-04-02 15:35:33	2021-04-02 15:35:33
92	3	Ipsam eaque aut sit ut ducimus labore at laudantium fuga adipisci repellendus ducimus blanditiis at aut nulla nobis iusto est eum cupiditate fugiat et corrupti eum quam nobis praesentium quia molestias et alias qui ut nulla harum ipsum blanditiis dolore eum illum debitis et.	2021-04-02 15:35:33	2021-04-02 15:35:33
93	3	Officia quaerat inventore eos quidem aperiam qui nostrum omnis earum doloribus doloribus fugiat totam doloribus nihil eos et odit debitis quia nisi soluta perspiciatis sint.	2021-04-02 15:35:33	2021-04-02 15:35:33
94	3	Ad ut ut blanditiis enim magni eligendi beatae rerum quisquam eaque et deleniti laborum ea alias eum ab consequatur ut id placeat sit dicta qui molestias non omnis voluptas praesentium id et quos dolore magnam.	2021-04-02 15:35:33	2021-04-02 15:35:33
95	3	Molestias impedit ullam praesentium voluptatem incidunt minus ducimus inventore aperiam sint pariatur dolorem doloribus cumque facere et omnis autem modi vitae itaque et sed quia ut quibusdam ea sit magni odio rem ullam velit dolorem quas doloribus ut praesentium nemo dolor.	2021-04-02 15:35:33	2021-04-02 15:35:33
96	3	Aliquam quaerat et non consequuntur et corrupti voluptates in quam debitis sed dolores et incidunt illo porro sit a quidem tempora ut omnis itaque delectus et adipisci et quaerat minima a nihil quidem sunt molestiae qui et eaque aut.	2021-04-02 15:35:33	2021-04-02 15:35:33
97	3	Reprehenderit ad sed odit illum et eligendi eaque quia recusandae assumenda dolorum earum sequi numquam ut magnam voluptates et qui velit rerum in eveniet dolores qui harum natus quia sint praesentium deleniti voluptatibus fugit qui deleniti voluptatibus qui ratione ullam animi tempora vel mollitia dolorum nostrum perferendis quaerat temporibus eveniet qui rem beatae magni sunt quis.	2021-04-02 15:35:33	2021-04-02 15:35:33
98	3	Recusandae suscipit nulla nemo non et sed est delectus labore dolores officia quae consequuntur saepe beatae cupiditate earum et voluptatum autem eum aut quia ex sunt cumque a ut voluptatum optio similique omnis vero saepe consequatur sed deleniti eligendi ut in molestiae officiis.	2021-04-02 15:35:33	2021-04-02 15:35:33
99	3	Necessitatibus pariatur saepe necessitatibus voluptate ducimus at recusandae repudiandae cum consequuntur molestiae qui quasi enim eos voluptas at quasi ut dolores eaque repellendus architecto est expedita sunt corrupti dignissimos rerum est.	2021-04-02 15:35:33	2021-04-02 15:35:33
100	3	Porro ad id dolor occaecati sit deserunt id repellendus quasi optio repellendus consequatur quo nobis et ut natus sed adipisci eos atque eius quisquam sunt libero ullam iure minima enim labore sint alias.	2021-04-02 15:35:33	2021-04-02 15:35:33
101	3	Eos ut veniam commodi ratione placeat quae provident ex et nam qui voluptates perspiciatis provident sunt distinctio nam aliquam fugit eaque suscipit et quidem exercitationem eos qui quae beatae quia natus nisi et a maxime eum voluptas aut.	2021-04-02 15:35:33	2021-04-02 15:35:33
102	3	Quisquam autem maiores velit vel cumque corporis rerum molestiae ipsa aliquam voluptates ullam consequatur enim dolorem ratione dicta nisi sit quo fuga excepturi omnis nostrum suscipit perspiciatis sint aut ullam eum dolorum nihil vel fugit blanditiis sapiente nemo eius unde praesentium optio saepe velit non.	2021-04-02 15:35:33	2021-04-02 15:35:33
103	3	Id ducimus a molestiae qui architecto deleniti atque occaecati officia iusto sunt praesentium neque ipsam vel culpa dolor in et nam ducimus voluptatem sint quisquam veritatis consectetur nisi sint.	2021-04-02 15:35:33	2021-04-02 15:35:33
104	3	Sint quas doloremque laudantium amet at dolorum eveniet quam cumque provident odio ea ab ab saepe enim corporis sed porro neque quibusdam enim suscipit consequatur at sit tempora voluptatum hic qui eligendi id rem tempore ut velit vitae et.	2021-04-02 15:35:33	2021-04-02 15:35:33
105	3	Quisquam dolorem pariatur et eum velit dignissimos laborum minima a aut quisquam fugit a adipisci esse et provident dolorum quasi placeat sit nihil est ratione odio saepe error voluptate rerum quo quod voluptatem ut sint voluptatem voluptatum quia nostrum maiores aliquam recusandae amet voluptatem iste voluptas.	2021-04-02 15:35:33	2021-04-02 15:35:33
106	3	Deleniti facilis ut voluptate omnis ea itaque qui aliquam quasi et aut quibusdam sapiente mollitia fugit perspiciatis eum vero beatae veniam velit nihil aut odit eveniet et error corrupti sit hic magnam et aut enim quidem sed molestias consequuntur ea et explicabo laudantium est cumque et asperiores eos eos in et provident consequatur.	2021-04-02 15:35:33	2021-04-02 15:35:33
107	3	Sit accusamus repellat voluptatum quisquam sapiente voluptate blanditiis quis sit assumenda perspiciatis excepturi sed velit doloribus sed iusto similique sit fuga atque dicta nobis tempore voluptatem culpa et provident nihil voluptatem iusto.	2021-04-02 15:35:33	2021-04-02 15:35:33
108	3	Qui et quia reiciendis autem autem aut quo maiores tenetur velit dolorum est molestiae et aut sit facilis sed ducimus voluptatem sit debitis dolor voluptatum magni nulla aspernatur recusandae enim officiis et est harum sapiente.	2021-04-02 15:35:33	2021-04-02 15:35:33
109	3	Placeat et modi ut voluptate cumque architecto accusamus qui ullam architecto laboriosam atque reprehenderit officiis asperiores inventore accusantium laborum alias quis voluptatem et ea maxime modi minima quaerat vel dicta ducimus optio accusamus ut ut quo unde quae dolorem eum aliquam rerum libero odio et modi illum et eius aspernatur sed neque velit recusandae aliquam aut.	2021-04-02 15:35:33	2021-04-02 15:35:33
110	3	Id debitis ut quia officiis quo saepe ipsam quisquam voluptatibus quas recusandae dolores rem asperiores dignissimos id ad commodi accusamus nobis quo odit dolores porro quibusdam id officia modi quas nesciunt rerum provident qui eveniet repellendus voluptatem assumenda sapiente enim quos omnis fugiat temporibus eos est sit quos quod nam pariatur consequatur ipsa aperiam reprehenderit.	2021-04-02 15:35:33	2021-04-02 15:35:33
111	3	Sed ad natus culpa ea dolorum quae impedit nihil sint nostrum sit non ad officiis aut deserunt cum velit officia tenetur est sit iure distinctio explicabo ducimus commodi illum sapiente perspiciatis quo fugit delectus quae at quisquam et incidunt enim eius sequi commodi.	2021-04-02 15:35:33	2021-04-02 15:35:33
112	3	Accusamus quis ipsa neque libero ratione optio veritatis non voluptatem dolorum beatae quia aliquam delectus unde est soluta error harum sit accusamus velit quos sit voluptates eius nostrum qui quos rem velit sunt qui culpa libero voluptatem at fugit ut aut.	2021-04-02 15:35:33	2021-04-02 15:35:33
113	3	Quo quisquam aut cum enim sunt quasi aut unde et nemo consequuntur incidunt aspernatur nulla nihil quia corrupti id consequatur corrupti iste rem est qui consequatur eum facilis aspernatur non illum minus.	2021-04-02 15:35:33	2021-04-02 15:35:33
114	3	Fugiat accusantium et quae voluptas esse consequatur sed nulla aspernatur dignissimos adipisci eveniet voluptatem dolore quia quasi nisi aperiam veniam dicta unde quasi ipsa tempore molestias illo aut eius odit voluptatem repellat quaerat ipsa commodi deleniti incidunt inventore facere veniam at enim soluta temporibus occaecati est quibusdam aperiam rerum ad assumenda deserunt expedita consequatur est.	2021-04-02 15:35:33	2021-04-02 15:35:33
115	3	Natus pariatur qui temporibus recusandae in impedit explicabo sit eius tempora consequatur veniam repellat vel facilis enim sed velit numquam porro quis architecto veritatis adipisci quo labore nihil.	2021-04-02 15:35:33	2021-04-02 15:35:33
116	3	Sint sint qui modi ut sequi rerum molestiae explicabo dolor qui dolores quis natus eveniet reiciendis assumenda similique totam sint inventore nihil enim aspernatur dolorum blanditiis error inventore rerum sequi sit sint architecto perspiciatis ut libero fuga sed aspernatur reiciendis eos est possimus eos.	2021-04-02 15:35:33	2021-04-02 15:35:33
117	3	Possimus possimus excepturi sint a nisi quasi consectetur repudiandae in ratione maiores cumque officiis omnis aut in dolorem possimus earum ut cum distinctio quis et consequatur molestiae dolore eaque ut neque omnis consequatur voluptate nemo adipisci aut quo recusandae reprehenderit ducimus est qui excepturi suscipit temporibus molestiae facere id sed.	2021-04-02 15:35:33	2021-04-02 15:35:33
118	3	Iusto unde maxime ipsa vero commodi ut beatae sed quia natus tempore ipsa dicta harum voluptatibus reiciendis eum dolores eum debitis ex ut illo non rem sed iusto sed.	2021-04-02 15:35:33	2021-04-02 15:35:33
119	3	Est deserunt praesentium assumenda et natus nemo quo sint quos non et perferendis accusantium atque voluptate suscipit eos nemo veniam consequuntur quae pariatur illum qui labore quo labore doloremque neque consequatur suscipit non id voluptates veritatis suscipit quam rerum voluptates nihil illo quia culpa omnis odit eos quis soluta mollitia omnis rerum.	2021-04-02 15:35:33	2021-04-02 15:35:33
120	3	Est hic delectus in cupiditate amet minima minima perspiciatis quibusdam et dolore repellat et dolore omnis rem ut sed blanditiis voluptatum quod commodi officiis sint dolor iusto voluptates magni voluptatibus nam modi magnam sint ullam iste rerum cupiditate tempore aliquam consequatur soluta dolorum ut sed autem tenetur laboriosam mollitia deserunt rem officiis vero voluptatum aliquid voluptatem.	2021-04-02 15:35:33	2021-04-02 15:35:33
121	3	Perspiciatis accusantium et sequi minus voluptatum natus soluta officiis numquam quasi consectetur assumenda nulla architecto velit quia consequatur ipsam est reprehenderit consequuntur vero est non rerum.	2021-04-02 15:35:33	2021-04-02 15:35:33
122	3	Autem recusandae veritatis ea illum a voluptates laboriosam eos sit id nulla ut ipsa praesentium eligendi perspiciatis facere in voluptatem deserunt ut hic deserunt id architecto officia adipisci temporibus sit distinctio quia repellendus vel iste in voluptas repudiandae sequi fuga in facere non ex inventore iure consequuntur deserunt aut sit ipsum est debitis illo sunt.	2021-04-02 15:35:33	2021-04-02 15:35:33
123	3	Aliquam quas quo et explicabo in totam architecto eum quidem magnam provident distinctio enim fuga a tempora voluptates temporibus et nobis cumque commodi dolores excepturi accusantium aspernatur asperiores eaque voluptatum et qui ex sed cumque dignissimos rerum officiis odit autem expedita dolor in eum hic saepe quam adipisci qui quisquam magnam sed rerum ut aut.	2021-04-02 15:35:33	2021-04-02 15:35:33
124	3	Voluptatem itaque laudantium dignissimos rerum similique molestias consequatur consequuntur mollitia impedit earum mollitia similique eos consequatur magnam est sint vitae et quis voluptatem ipsa perspiciatis est et non cupiditate explicabo autem qui quis enim soluta impedit repellendus sit magni blanditiis.	2021-04-02 15:35:33	2021-04-02 15:35:33
125	3	Fuga omnis qui est saepe consectetur a sunt explicabo repudiandae voluptatibus et eum corrupti in placeat ut itaque qui maiores necessitatibus qui numquam ut molestiae molestias adipisci.	2021-04-02 15:35:33	2021-04-02 15:35:33
126	3	Suscipit sunt rerum necessitatibus sunt totam commodi qui est sapiente dolor odit dolor aut dolorem dolor suscipit aperiam architecto dolores atque dolorem id ad et perferendis voluptatem reprehenderit aut aspernatur necessitatibus corrupti magnam eveniet sed accusantium est et et possimus deserunt praesentium excepturi voluptas ipsum sunt et temporibus omnis nobis dolorem nostrum rem saepe magnam.	2021-04-02 15:35:33	2021-04-02 15:35:33
127	3	Iste commodi sit aut non exercitationem impedit aliquam perferendis quam libero itaque beatae totam iusto quia et saepe debitis qui eaque quia ad ab aut aut doloremque libero quasi voluptate voluptas laborum quisquam magni et officiis quia ut.	2021-04-02 15:35:33	2021-04-02 15:35:33
128	3	Repudiandae dolores distinctio praesentium blanditiis et exercitationem fugit molestiae sunt qui nulla dicta sunt commodi dolores deserunt eos aperiam quibusdam maiores earum ex laborum impedit est iusto qui quia et consequatur similique dolorum ipsum et dignissimos vero ducimus provident quibusdam sit est amet id debitis quod aspernatur.	2021-04-02 15:35:33	2021-04-02 15:35:33
129	3	Quis fugit temporibus ut soluta sapiente esse magni dolorem facere amet iste iure dolor nihil magnam exercitationem soluta tempora qui unde velit et velit eos rem officia possimus aut iusto debitis debitis minima id exercitationem laborum consequatur iure vero debitis similique doloremque nesciunt aut quis illum eos facilis et harum sit rerum consequatur.	2021-04-02 15:35:33	2021-04-02 15:35:33
130	3	Et facere ut et doloremque expedita aperiam magnam saepe modi est dolore excepturi voluptatem voluptatem beatae animi architecto quis nihil aut assumenda quia temporibus fugiat voluptatem rerum sequi atque eos ut aliquam molestias fugiat esse quia culpa eveniet quas exercitationem ut error sit nemo ducimus est quisquam est voluptas et inventore quas blanditiis et.	2021-04-02 15:35:33	2021-04-02 15:35:33
131	3	Nostrum architecto veniam ullam voluptates non magnam nam fuga officiis quisquam aut dolorem earum inventore cumque deleniti sapiente dolorem quo qui inventore nemo voluptate dolorem aut aliquid ad laudantium dolorem dolores qui et rerum velit nemo totam quia et nihil.	2021-04-02 15:35:33	2021-04-02 15:35:33
132	3	Corrupti aperiam mollitia cumque dicta ea qui et unde repellat non amet sunt fugiat sed recusandae quisquam dignissimos eveniet minus dolorem hic molestiae odio in rerum minus quidem.	2021-04-02 15:35:33	2021-04-02 15:35:33
133	3	Qui corporis dignissimos reiciendis natus at doloremque eos porro vel incidunt aliquid quia exercitationem eveniet id magni aut cumque accusantium at ad eaque eveniet non aut ut animi et nisi expedita facilis qui omnis officiis voluptatem dignissimos nihil vero dolorem iste voluptatum quisquam officiis commodi ut tenetur.	2021-04-02 15:35:33	2021-04-02 15:35:33
134	3	Quam omnis ut voluptas quas quae similique vel beatae voluptatem molestiae magni iure consectetur quo aut accusantium similique ab perferendis in et velit libero ut aperiam quisquam aliquam dolore omnis qui enim sint minima in voluptas est libero et.	2021-04-02 15:35:33	2021-04-02 15:35:33
135	3	Et voluptates ea aperiam recusandae esse voluptatibus repellendus aut sint adipisci maxime officiis corrupti vero similique nostrum libero dignissimos omnis sint enim autem laboriosam labore deserunt deleniti dicta amet eius ipsam ut perferendis sunt eos modi et eveniet tenetur voluptas qui nostrum harum nam eveniet quas non eaque quibusdam dicta cum laudantium libero a.	2021-04-02 15:35:33	2021-04-02 15:35:33
136	3	Nisi natus laudantium omnis vero architecto ut est sit cumque rem aut porro magnam laborum aut numquam voluptas inventore eum qui ab sunt reiciendis ut qui unde dolor nihil ex ut eos sit nostrum adipisci et et rerum repellendus et et placeat magnam assumenda hic dolorem sit neque ut id voluptatem quam culpa at.	2021-04-02 15:35:33	2021-04-02 15:35:33
137	3	Magni minus unde consectetur magnam vel sit quo iusto quia et est officiis voluptas illo ut dolorum dolores nostrum deserunt est possimus odio labore voluptatem non consequuntur est dolores sit id rem ipsa accusantium corporis quis laborum voluptatem explicabo error.	2021-04-02 15:35:33	2021-04-02 15:35:33
138	3	Quibusdam in autem et aperiam vel quod eius pariatur quidem facilis est in non quia minima assumenda dolores omnis enim magnam libero eos similique beatae dolores est consequatur error perspiciatis quam soluta nam nobis sit magni nemo possimus voluptas quo earum nesciunt dolorem cupiditate quo quibusdam quo distinctio nostrum non quidem.	2021-04-02 15:35:33	2021-04-02 15:35:33
139	3	Voluptas vero in ab sit ullam omnis exercitationem a in deleniti et aspernatur ducimus adipisci recusandae facilis voluptas voluptates eveniet omnis qui tempore fugit quae qui voluptatem ea repellat ab ad et in enim qui et aliquid ratione veniam minus illum qui voluptatum nemo eveniet.	2021-04-02 15:35:33	2021-04-02 15:35:33
140	3	In ratione voluptate praesentium et aliquid numquam est fuga laudantium facere consequuntur aliquam rerum ab qui quia vero suscipit rerum dolores dolorem neque eveniet eum iure dolor omnis est ea eaque.	2021-04-02 15:35:33	2021-04-02 15:35:33
141	3	Eum voluptatibus nisi iste nemo rerum nihil pariatur eaque labore veritatis iure illo odit eum facilis non hic saepe et harum in quam et commodi aut molestias error id unde.	2021-04-02 15:35:33	2021-04-02 15:35:33
142	3	Sequi dolor qui harum vel enim consequatur molestiae ut maiores recusandae vitae inventore quasi nemo deserunt laboriosam eum illum nam autem quam voluptas est ducimus tempora fugiat ea.	2021-04-02 15:35:33	2021-04-02 15:35:33
143	3	Quod excepturi facere qui corrupti ut quia voluptatum voluptas minima quos quaerat aut qui nulla aliquam quia ut tempora fugit quasi voluptatem cumque distinctio est voluptas quo sint adipisci nostrum ea magni impedit magni et quasi rem aut voluptatem natus occaecati sequi assumenda.	2021-04-02 15:35:33	2021-04-02 15:35:33
144	3	Omnis ab porro saepe neque enim ut et quas soluta eaque tenetur sit recusandae culpa aspernatur nisi aspernatur rem enim quidem repudiandae quo autem adipisci illo tempora facere ipsam praesentium consectetur.	2021-04-02 15:35:33	2021-04-02 15:35:33
145	3	Enim fugiat odit tenetur quibusdam quaerat quia debitis fugiat deserunt amet deleniti necessitatibus sit deserunt corporis sapiente qui itaque non facilis et alias sit hic soluta aspernatur eum velit impedit eveniet ipsam in dolor repellendus voluptate.	2021-04-02 15:35:33	2021-04-02 15:35:33
146	3	Illo consectetur itaque rerum ipsam voluptatibus aut quod voluptates voluptas recusandae dolores culpa consequatur vel tenetur voluptatibus est amet est quidem aliquam ea vero accusamus sit consequuntur reiciendis quo voluptates quis quod velit accusantium et cupiditate doloribus eos earum cupiditate eos expedita quisquam dolorum officiis minima.	2021-04-02 15:35:33	2021-04-02 15:35:33
147	3	Dolor ab et et sunt quam quo maxime aut fugiat quis dolore magnam consequatur ut perferendis deserunt et molestiae non quos et dicta consequatur temporibus cum atque quia minima impedit quia ad velit voluptatem nisi quo.	2021-04-02 15:35:33	2021-04-02 15:35:33
148	3	Et itaque fuga molestiae voluptatem quis consequatur magnam consectetur omnis ipsam voluptatibus quas iste culpa occaecati fugit voluptatem earum perferendis quidem aliquam modi facere modi deserunt reiciendis maxime est quos et et ullam omnis veniam esse cupiditate asperiores illum doloribus repellendus soluta quis.	2021-04-02 15:35:33	2021-04-02 15:35:33
149	3	Officia dolores architecto nobis in non sint nesciunt libero nemo totam excepturi debitis qui assumenda est sed unde nostrum magnam qui tempore occaecati nam harum accusamus fugiat.	2021-04-02 15:35:33	2021-04-02 15:35:33
150	3	Blanditiis culpa quasi in fuga pariatur culpa consectetur quis dolorem est quas perferendis laudantium dignissimos iusto rerum recusandae quo molestiae maiores quo consectetur maiores suscipit aut ut numquam vel est sit error quos soluta.	2021-04-02 15:35:33	2021-04-02 15:35:33
151	3	Doloribus quae nemo cupiditate esse velit voluptas occaecati in nemo distinctio tenetur rerum dolorem fugit ipsum ut odit libero eos iusto aut consequatur dolores tempora ratione omnis.	2021-04-02 15:35:33	2021-04-02 15:35:33
152	3	Cumque nihil dicta non dicta et non et esse et necessitatibus ex est facere minus ut pariatur rem quo voluptas quisquam temporibus dolor consequatur cumque exercitationem sit quia consectetur repudiandae aut natus dolores officia ullam praesentium nostrum eveniet autem autem doloremque facilis dolor cumque.	2021-04-02 15:35:33	2021-04-02 15:35:33
153	3	Perferendis reprehenderit corrupti dolores incidunt cupiditate blanditiis consectetur sint veniam mollitia eius et voluptas possimus at adipisci dolores exercitationem molestias ullam repudiandae ut reiciendis quae ut voluptatum est voluptatem provident excepturi quia doloremque veniam inventore tenetur pariatur vero ex quam omnis voluptas voluptates ut consectetur et.	2021-04-02 15:35:33	2021-04-02 15:35:33
154	3	Adipisci debitis corrupti magnam quibusdam et aliquid rerum officia aut unde nihil repellendus corrupti nostrum nobis repudiandae placeat vel similique facilis velit ex nemo sed nihil officiis odio sit eos ipsa.	2021-04-02 15:35:33	2021-04-02 15:35:33
155	3	Iusto enim ducimus tenetur aspernatur quam quisquam aut minus ipsum commodi quis sed adipisci tempore laudantium aut voluptatibus corporis unde ad est nesciunt repellat aliquam eum aut deserunt aperiam voluptatem ad laboriosam odit non perferendis sint laudantium.	2021-04-02 15:35:33	2021-04-02 15:35:33
156	3	Est excepturi cupiditate harum nam amet ut consequatur ut debitis cupiditate quasi est et aut reprehenderit eos ut molestias minus ab commodi iusto distinctio eius aspernatur explicabo omnis asperiores magnam vel voluptatem laboriosam qui et laboriosam animi mollitia velit.	2021-04-02 15:35:33	2021-04-02 15:35:33
157	3	Id deserunt eos alias recusandae perferendis necessitatibus accusantium pariatur recusandae in placeat aut omnis rerum ex in ullam qui est eos ea id natus nam deserunt velit ullam quisquam velit laudantium voluptatum exercitationem ut soluta omnis dolores doloribus voluptatem officiis rerum voluptas dicta ab ab distinctio et qui voluptas qui quia aut est eum facilis sapiente.	2021-04-02 15:35:33	2021-04-02 15:35:33
158	3	Fuga quo odio harum exercitationem voluptas sed sapiente eveniet perspiciatis hic voluptas doloremque enim eligendi omnis magni nihil veniam molestias recusandae odio quis incidunt illum dolores voluptate exercitationem iusto aperiam sed aperiam voluptatibus.	2021-04-02 15:35:33	2021-04-02 15:35:33
159	3	Cum nulla praesentium neque rerum qui exercitationem qui in eaque et odit iusto quidem doloremque in non aspernatur qui tempora aspernatur consectetur libero nostrum voluptate veniam est quas perspiciatis incidunt incidunt ut et ullam consequuntur sed molestias nulla rem quaerat odio voluptates laboriosam ut.	2021-04-02 15:35:33	2021-04-02 15:35:33
160	3	Nihil sit ducimus id magni pariatur sunt voluptatum beatae ducimus in est quibusdam ut repellendus et maiores ipsam tenetur sed aut recusandae necessitatibus consequuntur nulla culpa a ab explicabo aut fuga tempore quibusdam velit doloremque occaecati voluptas architecto excepturi minus nemo corrupti doloremque dolor est quis adipisci.	2021-04-02 15:35:33	2021-04-02 15:35:33
161	3	Quos et sit deserunt id ex saepe voluptas nesciunt voluptatem assumenda dolore autem rerum optio est corrupti exercitationem exercitationem veritatis quo odio quasi dolor et totam.	2021-04-02 15:35:33	2021-04-02 15:35:33
\.


--
-- TOC entry 3028 (class 0 OID 16476)
-- Dependencies: 203
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, username) FROM stdin;
3	Super Admin	admin@name.com	\N	$2y$10$FH6x4wXAfjSqTUEzZmYUy.xDNP1qAbaZE7niO4kb.QuW/GkRimcWi	\N	2021-04-02 15:24:26	2021-04-02 15:24:26	Admin
\.


--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 205
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 200
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 11, true);


--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 207
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tasks_id_seq', 161, true);


--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 202
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- TOC entry 2889 (class 2606 OID 16505)
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 2891 (class 2606 OID 16507)
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 2882 (class 2606 OID 16402)
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2893 (class 2606 OID 16518)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 2884 (class 2606 OID 16486)
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 2886 (class 2606 OID 16484)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2887 (class 1259 OID 16493)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2894 (class 2606 OID 16519)
-- Name: tasks tasks_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;


-- Completed on 2021-04-02 17:43:33

--
-- PostgreSQL database dump complete
--

