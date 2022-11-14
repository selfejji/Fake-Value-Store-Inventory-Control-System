PGDMP                     
    z            postgres    15.0    15.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    5    postgres    DATABASE     j   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            �           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3794                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            �           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16500    dcr    TABLE     T   CREATE TABLE public.dcr (
    dcrid integer NOT NULL,
    sales integer NOT NULL
);
    DROP TABLE public.dcr;
       public         heap    postgres    false            �            1259    16499    dcr_dcrid_seq    SEQUENCE     �   CREATE SEQUENCE public.dcr_dcrid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.dcr_dcrid_seq;
       public          postgres    false    222            �           0    0    dcr_dcrid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.dcr_dcrid_seq OWNED BY public.dcr.dcrid;
          public          postgres    false    221            �            1259    16507    deposit    TABLE     Y   CREATE TABLE public.deposit (
    depid integer NOT NULL,
    amount integer NOT NULL
);
    DROP TABLE public.deposit;
       public         heap    postgres    false            �            1259    16506    deposit_depid_seq    SEQUENCE     �   CREATE SEQUENCE public.deposit_depid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.deposit_depid_seq;
       public          postgres    false    224            �           0    0    deposit_depid_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.deposit_depid_seq OWNED BY public.deposit.depid;
          public          postgres    false    223            �            1259    16579    deposits    TABLE     �   CREATE TABLE public.deposits (
    eid integer NOT NULL,
    depid integer NOT NULL,
    datedeposited timestamp without time zone NOT NULL
);
    DROP TABLE public.deposits;
       public         heap    postgres    false            �            1259    16578    deposits_depid_seq    SEQUENCE     �   CREATE SEQUENCE public.deposits_depid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.deposits_depid_seq;
       public          postgres    false    238            �           0    0    deposits_depid_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.deposits_depid_seq OWNED BY public.deposits.depid;
          public          postgres    false    237            �            1259    16577    deposits_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.deposits_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.deposits_eid_seq;
       public          postgres    false    238            �           0    0    deposits_eid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.deposits_eid_seq OWNED BY public.deposits.eid;
          public          postgres    false    236            �            1259    16486    drawerverif    TABLE     �   CREATE TABLE public.drawerverif (
    verifid integer NOT NULL,
    reg integer NOT NULL,
    curramount integer NOT NULL,
    enteredamount integer NOT NULL,
    overshort integer NOT NULL
);
    DROP TABLE public.drawerverif;
       public         heap    postgres    false            �            1259    16485    drawerverif_verifid_seq    SEQUENCE     �   CREATE SEQUENCE public.drawerverif_verifid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.drawerverif_verifid_seq;
       public          postgres    false    218            �           0    0    drawerverif_verifid_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.drawerverif_verifid_seq OWNED BY public.drawerverif.verifid;
          public          postgres    false    217            �            1259    16479    employee    TABLE     ?  CREATE TABLE public.employee (
    eid integer NOT NULL,
    firstname character varying(50) NOT NULL,
    lastname character varying(50) NOT NULL,
    address character varying(100) NOT NULL,
    ssn integer NOT NULL,
    pos character varying(50) NOT NULL,
    status boolean NOT NULL,
    salary integer NOT NULL
);
    DROP TABLE public.employee;
       public         heap    postgres    false            �            1259    16478    employee_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.employee_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employee_eid_seq;
       public          postgres    false    216            �           0    0    employee_eid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employee_eid_seq OWNED BY public.employee.eid;
          public          postgres    false    215            �            1259    16493    imprestverif    TABLE     k  CREATE TABLE public.imprestverif (
    impid integer NOT NULL,
    ones integer NOT NULL,
    fives integer NOT NULL,
    tens integer NOT NULL,
    twenties integer NOT NULL,
    fifties integer NOT NULL,
    hundreds integer NOT NULL,
    pennies numeric(3,1) NOT NULL,
    nickels integer NOT NULL,
    dimes integer NOT NULL,
    quarters integer NOT NULL
);
     DROP TABLE public.imprestverif;
       public         heap    postgres    false            �            1259    16492    imprestverif_impid_seq    SEQUENCE     �   CREATE SEQUENCE public.imprestverif_impid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.imprestverif_impid_seq;
       public          postgres    false    220            �           0    0    imprestverif_impid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.imprestverif_impid_seq OWNED BY public.imprestverif.impid;
          public          postgres    false    219            �            1259    16518    nonotc    TABLE     ~   CREATE TABLE public.nonotc (
    upcn bigint NOT NULL,
    item integer NOT NULL,
    name character varying(100) NOT NULL
);
    DROP TABLE public.nonotc;
       public         heap    postgres    false            �            1259    16662    nonotcoperations    TABLE     �   CREATE TABLE public.nonotcoperations (
    upcn bigint NOT NULL,
    upcop bigint NOT NULL,
    dateupdated timestamp without time zone NOT NULL
);
 $   DROP TABLE public.nonotcoperations;
       public         heap    postgres    false            �            1259    16707    nonotcprice    TABLE     �   CREATE TABLE public.nonotcprice (
    upcn bigint NOT NULL,
    upcop bigint NOT NULL,
    dateupdated timestamp without time zone NOT NULL
);
    DROP TABLE public.nonotcprice;
       public         heap    postgres    false            �            1259    16616    operates    TABLE     �   CREATE TABLE public.operates (
    eid integer NOT NULL,
    upcop bigint NOT NULL,
    dateoperated timestamp without time zone NOT NULL
);
    DROP TABLE public.operates;
       public         heap    postgres    false            �            1259    16615    operates_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.operates_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.operates_eid_seq;
       public          postgres    false    243            �           0    0    operates_eid_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.operates_eid_seq OWNED BY public.operates.eid;
          public          postgres    false    242            �            1259    16534 
   operations    TABLE     �   CREATE TABLE public.operations (
    upcop bigint NOT NULL,
    boh integer NOT NULL,
    shelfcap integer NOT NULL,
    quickpick integer NOT NULL
);
    DROP TABLE public.operations;
       public         heap    postgres    false            �            1259    16513    otc    TABLE     �   CREATE TABLE public.otc (
    upco bigint NOT NULL,
    item integer NOT NULL,
    otcname character varying(100) NOT NULL,
    otcid character varying(50) NOT NULL
);
    DROP TABLE public.otc;
       public         heap    postgres    false            �            1259    16647    otcoperations    TABLE     �   CREATE TABLE public.otcoperations (
    upco bigint NOT NULL,
    upcop bigint NOT NULL,
    dateupdated timestamp without time zone NOT NULL
);
 !   DROP TABLE public.otcoperations;
       public         heap    postgres    false            �            1259    16692    otcprice    TABLE     �   CREATE TABLE public.otcprice (
    upco bigint NOT NULL,
    upcop bigint NOT NULL,
    dateupdated timestamp without time zone NOT NULL
);
    DROP TABLE public.otcprice;
       public         heap    postgres    false            �            1259    16598    posts    TABLE     �   CREATE TABLE public.posts (
    eid integer NOT NULL,
    dcrid integer NOT NULL,
    dateposted timestamp without time zone NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            �            1259    16597    posts_dcrid_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_dcrid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.posts_dcrid_seq;
       public          postgres    false    241            �           0    0    posts_dcrid_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.posts_dcrid_seq OWNED BY public.posts.dcrid;
          public          postgres    false    240            �            1259    16596    posts_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.posts_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.posts_eid_seq;
       public          postgres    false    241            �           0    0    posts_eid_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.posts_eid_seq OWNED BY public.posts.eid;
          public          postgres    false    239            �            1259    16632    prescriptionoperations    TABLE     �   CREATE TABLE public.prescriptionoperations (
    upcp bigint NOT NULL,
    upcop bigint NOT NULL,
    dateupdated timestamp without time zone NOT NULL
);
 *   DROP TABLE public.prescriptionoperations;
       public         heap    postgres    false            �            1259    16677    prescriptionprice    TABLE     �   CREATE TABLE public.prescriptionprice (
    upcp bigint NOT NULL,
    upcop bigint NOT NULL,
    dateupdated timestamp without time zone NOT NULL
);
 %   DROP TABLE public.prescriptionprice;
       public         heap    postgres    false            �            1259    16523    prescriptions    TABLE     �   CREATE TABLE public.prescriptions (
    upcp bigint NOT NULL,
    prescriptionname character varying(100) NOT NULL,
    expiration date DEFAULT CURRENT_DATE NOT NULL
);
 !   DROP TABLE public.prescriptions;
       public         heap    postgres    false            �            1259    16529    price    TABLE     �   CREATE TABLE public.price (
    upc bigint NOT NULL,
    retailp integer NOT NULL,
    salep integer NOT NULL,
    mumd integer NOT NULL
);
    DROP TABLE public.price;
       public         heap    postgres    false            �            1259    16541    verifysdrawer    TABLE     �   CREATE TABLE public.verifysdrawer (
    eid integer NOT NULL,
    verifid integer NOT NULL,
    dateverifieddrawer timestamp without time zone NOT NULL
);
 !   DROP TABLE public.verifysdrawer;
       public         heap    postgres    false            �            1259    16539    verifysdrawer_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.verifysdrawer_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.verifysdrawer_eid_seq;
       public          postgres    false    232            �           0    0    verifysdrawer_eid_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.verifysdrawer_eid_seq OWNED BY public.verifysdrawer.eid;
          public          postgres    false    230            �            1259    16540    verifysdrawer_verifid_seq    SEQUENCE     �   CREATE SEQUENCE public.verifysdrawer_verifid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.verifysdrawer_verifid_seq;
       public          postgres    false    232            �           0    0    verifysdrawer_verifid_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.verifysdrawer_verifid_seq OWNED BY public.verifysdrawer.verifid;
          public          postgres    false    231            �            1259    16560    verifysimprest    TABLE     �   CREATE TABLE public.verifysimprest (
    eid integer NOT NULL,
    impid integer NOT NULL,
    dateverifiedimprest timestamp without time zone NOT NULL
);
 "   DROP TABLE public.verifysimprest;
       public         heap    postgres    false            �            1259    16558    verifysimprest_eid_seq    SEQUENCE     �   CREATE SEQUENCE public.verifysimprest_eid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.verifysimprest_eid_seq;
       public          postgres    false    235            �           0    0    verifysimprest_eid_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.verifysimprest_eid_seq OWNED BY public.verifysimprest.eid;
          public          postgres    false    233            �            1259    16559    verifysimprest_impid_seq    SEQUENCE     �   CREATE SEQUENCE public.verifysimprest_impid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.verifysimprest_impid_seq;
       public          postgres    false    235            �           0    0    verifysimprest_impid_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.verifysimprest_impid_seq OWNED BY public.verifysimprest.impid;
          public          postgres    false    234            �           2604    16503 	   dcr dcrid    DEFAULT     f   ALTER TABLE ONLY public.dcr ALTER COLUMN dcrid SET DEFAULT nextval('public.dcr_dcrid_seq'::regclass);
 8   ALTER TABLE public.dcr ALTER COLUMN dcrid DROP DEFAULT;
       public          postgres    false    222    221    222            �           2604    16510    deposit depid    DEFAULT     n   ALTER TABLE ONLY public.deposit ALTER COLUMN depid SET DEFAULT nextval('public.deposit_depid_seq'::regclass);
 <   ALTER TABLE public.deposit ALTER COLUMN depid DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    16582    deposits eid    DEFAULT     l   ALTER TABLE ONLY public.deposits ALTER COLUMN eid SET DEFAULT nextval('public.deposits_eid_seq'::regclass);
 ;   ALTER TABLE public.deposits ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    238    236    238            �           2604    16583    deposits depid    DEFAULT     p   ALTER TABLE ONLY public.deposits ALTER COLUMN depid SET DEFAULT nextval('public.deposits_depid_seq'::regclass);
 =   ALTER TABLE public.deposits ALTER COLUMN depid DROP DEFAULT;
       public          postgres    false    237    238    238            �           2604    16489    drawerverif verifid    DEFAULT     z   ALTER TABLE ONLY public.drawerverif ALTER COLUMN verifid SET DEFAULT nextval('public.drawerverif_verifid_seq'::regclass);
 B   ALTER TABLE public.drawerverif ALTER COLUMN verifid DROP DEFAULT;
       public          postgres    false    217    218    218            �           2604    16482    employee eid    DEFAULT     l   ALTER TABLE ONLY public.employee ALTER COLUMN eid SET DEFAULT nextval('public.employee_eid_seq'::regclass);
 ;   ALTER TABLE public.employee ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    16496    imprestverif impid    DEFAULT     x   ALTER TABLE ONLY public.imprestverif ALTER COLUMN impid SET DEFAULT nextval('public.imprestverif_impid_seq'::regclass);
 A   ALTER TABLE public.imprestverif ALTER COLUMN impid DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    16619    operates eid    DEFAULT     l   ALTER TABLE ONLY public.operates ALTER COLUMN eid SET DEFAULT nextval('public.operates_eid_seq'::regclass);
 ;   ALTER TABLE public.operates ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    242    243    243            �           2604    16601 	   posts eid    DEFAULT     f   ALTER TABLE ONLY public.posts ALTER COLUMN eid SET DEFAULT nextval('public.posts_eid_seq'::regclass);
 8   ALTER TABLE public.posts ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    239    241    241            �           2604    16602    posts dcrid    DEFAULT     j   ALTER TABLE ONLY public.posts ALTER COLUMN dcrid SET DEFAULT nextval('public.posts_dcrid_seq'::regclass);
 :   ALTER TABLE public.posts ALTER COLUMN dcrid DROP DEFAULT;
       public          postgres    false    240    241    241            �           2604    16544    verifysdrawer eid    DEFAULT     v   ALTER TABLE ONLY public.verifysdrawer ALTER COLUMN eid SET DEFAULT nextval('public.verifysdrawer_eid_seq'::regclass);
 @   ALTER TABLE public.verifysdrawer ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    232    230    232            �           2604    16545    verifysdrawer verifid    DEFAULT     ~   ALTER TABLE ONLY public.verifysdrawer ALTER COLUMN verifid SET DEFAULT nextval('public.verifysdrawer_verifid_seq'::regclass);
 D   ALTER TABLE public.verifysdrawer ALTER COLUMN verifid DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    16563    verifysimprest eid    DEFAULT     x   ALTER TABLE ONLY public.verifysimprest ALTER COLUMN eid SET DEFAULT nextval('public.verifysimprest_eid_seq'::regclass);
 A   ALTER TABLE public.verifysimprest ALTER COLUMN eid DROP DEFAULT;
       public          postgres    false    233    235    235            �           2604    16564    verifysimprest impid    DEFAULT     |   ALTER TABLE ONLY public.verifysimprest ALTER COLUMN impid SET DEFAULT nextval('public.verifysimprest_impid_seq'::regclass);
 C   ALTER TABLE public.verifysimprest ALTER COLUMN impid DROP DEFAULT;
       public          postgres    false    235    234    235            �          0    16500    dcr 
   TABLE DATA           +   COPY public.dcr (dcrid, sales) FROM stdin;
    public          postgres    false    222   -�       �          0    16507    deposit 
   TABLE DATA           0   COPY public.deposit (depid, amount) FROM stdin;
    public          postgres    false    224   Э       �          0    16579    deposits 
   TABLE DATA           =   COPY public.deposits (eid, depid, datedeposited) FROM stdin;
    public          postgres    false    238   p�       �          0    16486    drawerverif 
   TABLE DATA           Y   COPY public.drawerverif (verifid, reg, curramount, enteredamount, overshort) FROM stdin;
    public          postgres    false    218   �       �          0    16479    employee 
   TABLE DATA           _   COPY public.employee (eid, firstname, lastname, address, ssn, pos, status, salary) FROM stdin;
    public          postgres    false    216   >�       �          0    16493    imprestverif 
   TABLE DATA           �   COPY public.imprestverif (impid, ones, fives, tens, twenties, fifties, hundreds, pennies, nickels, dimes, quarters) FROM stdin;
    public          postgres    false    220   ��       �          0    16518    nonotc 
   TABLE DATA           2   COPY public.nonotc (upcn, item, name) FROM stdin;
    public          postgres    false    226   ��       �          0    16662    nonotcoperations 
   TABLE DATA           D   COPY public.nonotcoperations (upcn, upcop, dateupdated) FROM stdin;
    public          postgres    false    246   ��       �          0    16707    nonotcprice 
   TABLE DATA           ?   COPY public.nonotcprice (upcn, upcop, dateupdated) FROM stdin;
    public          postgres    false    249   �       �          0    16616    operates 
   TABLE DATA           <   COPY public.operates (eid, upcop, dateoperated) FROM stdin;
    public          postgres    false    243   [�       �          0    16534 
   operations 
   TABLE DATA           E   COPY public.operations (upcop, boh, shelfcap, quickpick) FROM stdin;
    public          postgres    false    229   ��       �          0    16513    otc 
   TABLE DATA           9   COPY public.otc (upco, item, otcname, otcid) FROM stdin;
    public          postgres    false    225   R�       �          0    16647    otcoperations 
   TABLE DATA           A   COPY public.otcoperations (upco, upcop, dateupdated) FROM stdin;
    public          postgres    false    245   P       �          0    16692    otcprice 
   TABLE DATA           <   COPY public.otcprice (upco, upcop, dateupdated) FROM stdin;
    public          postgres    false    248   �      �          0    16598    posts 
   TABLE DATA           7   COPY public.posts (eid, dcrid, dateposted) FROM stdin;
    public          postgres    false    241   �
      �          0    16632    prescriptionoperations 
   TABLE DATA           J   COPY public.prescriptionoperations (upcp, upcop, dateupdated) FROM stdin;
    public          postgres    false    244   b      �          0    16677    prescriptionprice 
   TABLE DATA           E   COPY public.prescriptionprice (upcp, upcop, dateupdated) FROM stdin;
    public          postgres    false    247   �      �          0    16523    prescriptions 
   TABLE DATA           K   COPY public.prescriptions (upcp, prescriptionname, expiration) FROM stdin;
    public          postgres    false    227   �      �          0    16529    price 
   TABLE DATA           :   COPY public.price (upc, retailp, salep, mumd) FROM stdin;
    public          postgres    false    228   �      �          0    16541    verifysdrawer 
   TABLE DATA           I   COPY public.verifysdrawer (eid, verifid, dateverifieddrawer) FROM stdin;
    public          postgres    false    232   �*      �          0    16560    verifysimprest 
   TABLE DATA           I   COPY public.verifysimprest (eid, impid, dateverifiedimprest) FROM stdin;
    public          postgres    false    235   �-      �           0    0    dcr_dcrid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.dcr_dcrid_seq', 1, false);
          public          postgres    false    221            �           0    0    deposit_depid_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.deposit_depid_seq', 1, false);
          public          postgres    false    223            �           0    0    deposits_depid_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.deposits_depid_seq', 1, false);
          public          postgres    false    237            �           0    0    deposits_eid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.deposits_eid_seq', 1, false);
          public          postgres    false    236            �           0    0    drawerverif_verifid_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.drawerverif_verifid_seq', 1, false);
          public          postgres    false    217            �           0    0    employee_eid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employee_eid_seq', 1, false);
          public          postgres    false    215            �           0    0    imprestverif_impid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.imprestverif_impid_seq', 1, false);
          public          postgres    false    219            �           0    0    operates_eid_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.operates_eid_seq', 1, false);
          public          postgres    false    242            �           0    0    posts_dcrid_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.posts_dcrid_seq', 1, false);
          public          postgres    false    240            �           0    0    posts_eid_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.posts_eid_seq', 1, false);
          public          postgres    false    239            �           0    0    verifysdrawer_eid_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.verifysdrawer_eid_seq', 1, false);
          public          postgres    false    230            �           0    0    verifysdrawer_verifid_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.verifysdrawer_verifid_seq', 1, false);
          public          postgres    false    231            �           0    0    verifysimprest_eid_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.verifysimprest_eid_seq', 1, false);
          public          postgres    false    233            �           0    0    verifysimprest_impid_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.verifysimprest_impid_seq', 1, false);
          public          postgres    false    234            �           2606    16505    dcr dcr_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.dcr
    ADD CONSTRAINT dcr_pkey PRIMARY KEY (dcrid);
 6   ALTER TABLE ONLY public.dcr DROP CONSTRAINT dcr_pkey;
       public            postgres    false    222            �           2606    16512    deposit deposit_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.deposit
    ADD CONSTRAINT deposit_pkey PRIMARY KEY (depid);
 >   ALTER TABLE ONLY public.deposit DROP CONSTRAINT deposit_pkey;
       public            postgres    false    224            �           2606    16585    deposits deposits_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.deposits
    ADD CONSTRAINT deposits_pkey PRIMARY KEY (eid, depid);
 @   ALTER TABLE ONLY public.deposits DROP CONSTRAINT deposits_pkey;
       public            postgres    false    238    238            �           2606    16491    drawerverif drawerverif_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.drawerverif
    ADD CONSTRAINT drawerverif_pkey PRIMARY KEY (verifid);
 F   ALTER TABLE ONLY public.drawerverif DROP CONSTRAINT drawerverif_pkey;
       public            postgres    false    218            �           2606    16484    employee employee_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (eid);
 @   ALTER TABLE ONLY public.employee DROP CONSTRAINT employee_pkey;
       public            postgres    false    216            �           2606    16498    imprestverif imprestverif_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.imprestverif
    ADD CONSTRAINT imprestverif_pkey PRIMARY KEY (impid);
 H   ALTER TABLE ONLY public.imprestverif DROP CONSTRAINT imprestverif_pkey;
       public            postgres    false    220            �           2606    16522    nonotc nonotc_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.nonotc
    ADD CONSTRAINT nonotc_pkey PRIMARY KEY (upcn);
 <   ALTER TABLE ONLY public.nonotc DROP CONSTRAINT nonotc_pkey;
       public            postgres    false    226            �           2606    16666 &   nonotcoperations nonotcoperations_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.nonotcoperations
    ADD CONSTRAINT nonotcoperations_pkey PRIMARY KEY (upcn, upcop);
 P   ALTER TABLE ONLY public.nonotcoperations DROP CONSTRAINT nonotcoperations_pkey;
       public            postgres    false    246    246                       2606    16711    nonotcprice nonotcprice_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.nonotcprice
    ADD CONSTRAINT nonotcprice_pkey PRIMARY KEY (upcn, upcop);
 F   ALTER TABLE ONLY public.nonotcprice DROP CONSTRAINT nonotcprice_pkey;
       public            postgres    false    249    249            �           2606    16621    operates operates_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.operates
    ADD CONSTRAINT operates_pkey PRIMARY KEY (eid, upcop);
 @   ALTER TABLE ONLY public.operates DROP CONSTRAINT operates_pkey;
       public            postgres    false    243    243            �           2606    16538    operations operations_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.operations
    ADD CONSTRAINT operations_pkey PRIMARY KEY (upcop);
 D   ALTER TABLE ONLY public.operations DROP CONSTRAINT operations_pkey;
       public            postgres    false    229            �           2606    16517    otc otc_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.otc
    ADD CONSTRAINT otc_pkey PRIMARY KEY (upco);
 6   ALTER TABLE ONLY public.otc DROP CONSTRAINT otc_pkey;
       public            postgres    false    225            �           2606    16651     otcoperations otcoperations_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.otcoperations
    ADD CONSTRAINT otcoperations_pkey PRIMARY KEY (upco, upcop);
 J   ALTER TABLE ONLY public.otcoperations DROP CONSTRAINT otcoperations_pkey;
       public            postgres    false    245    245                       2606    16696    otcprice otcprice_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.otcprice
    ADD CONSTRAINT otcprice_pkey PRIMARY KEY (upco, upcop);
 @   ALTER TABLE ONLY public.otcprice DROP CONSTRAINT otcprice_pkey;
       public            postgres    false    248    248            �           2606    16604    posts posts_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (eid, dcrid);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    241    241            �           2606    16636 2   prescriptionoperations prescriptionoperations_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.prescriptionoperations
    ADD CONSTRAINT prescriptionoperations_pkey PRIMARY KEY (upcp, upcop);
 \   ALTER TABLE ONLY public.prescriptionoperations DROP CONSTRAINT prescriptionoperations_pkey;
       public            postgres    false    244    244                       2606    16681 (   prescriptionprice prescriptionprice_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.prescriptionprice
    ADD CONSTRAINT prescriptionprice_pkey PRIMARY KEY (upcp, upcop);
 R   ALTER TABLE ONLY public.prescriptionprice DROP CONSTRAINT prescriptionprice_pkey;
       public            postgres    false    247    247            �           2606    16528     prescriptions prescriptions_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.prescriptions
    ADD CONSTRAINT prescriptions_pkey PRIMARY KEY (upcp);
 J   ALTER TABLE ONLY public.prescriptions DROP CONSTRAINT prescriptions_pkey;
       public            postgres    false    227            �           2606    16533    price price_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY public.price
    ADD CONSTRAINT price_pkey PRIMARY KEY (upc);
 :   ALTER TABLE ONLY public.price DROP CONSTRAINT price_pkey;
       public            postgres    false    228            �           2606    16547     verifysdrawer verifysdrawer_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.verifysdrawer
    ADD CONSTRAINT verifysdrawer_pkey PRIMARY KEY (eid, verifid);
 J   ALTER TABLE ONLY public.verifysdrawer DROP CONSTRAINT verifysdrawer_pkey;
       public            postgres    false    232    232            �           2606    16566 "   verifysimprest verifysimprest_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.verifysimprest
    ADD CONSTRAINT verifysimprest_pkey PRIMARY KEY (eid, impid);
 L   ALTER TABLE ONLY public.verifysimprest DROP CONSTRAINT verifysimprest_pkey;
       public            postgres    false    235    235            
           2606    16591    deposits deposits_depid_fkey    FK CONSTRAINT     ~   ALTER TABLE ONLY public.deposits
    ADD CONSTRAINT deposits_depid_fkey FOREIGN KEY (depid) REFERENCES public.deposit(depid);
 F   ALTER TABLE ONLY public.deposits DROP CONSTRAINT deposits_depid_fkey;
       public          postgres    false    224    3557    238                       2606    16586    deposits deposits_eid_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.deposits
    ADD CONSTRAINT deposits_eid_fkey FOREIGN KEY (eid) REFERENCES public.employee(eid);
 D   ALTER TABLE ONLY public.deposits DROP CONSTRAINT deposits_eid_fkey;
       public          postgres    false    3549    216    238                       2606    16667 +   nonotcoperations nonotcoperations_upcn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nonotcoperations
    ADD CONSTRAINT nonotcoperations_upcn_fkey FOREIGN KEY (upcn) REFERENCES public.nonotc(upcn);
 U   ALTER TABLE ONLY public.nonotcoperations DROP CONSTRAINT nonotcoperations_upcn_fkey;
       public          postgres    false    226    246    3561                       2606    16672 ,   nonotcoperations nonotcoperations_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nonotcoperations
    ADD CONSTRAINT nonotcoperations_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 V   ALTER TABLE ONLY public.nonotcoperations DROP CONSTRAINT nonotcoperations_upcop_fkey;
       public          postgres    false    246    3567    229                       2606    16712 !   nonotcprice nonotcprice_upcn_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nonotcprice
    ADD CONSTRAINT nonotcprice_upcn_fkey FOREIGN KEY (upcn) REFERENCES public.nonotc(upcn);
 K   ALTER TABLE ONLY public.nonotcprice DROP CONSTRAINT nonotcprice_upcn_fkey;
       public          postgres    false    249    3561    226                       2606    16717 "   nonotcprice nonotcprice_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.nonotcprice
    ADD CONSTRAINT nonotcprice_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 L   ALTER TABLE ONLY public.nonotcprice DROP CONSTRAINT nonotcprice_upcop_fkey;
       public          postgres    false    249    3567    229                       2606    16622    operates operates_eid_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY public.operates
    ADD CONSTRAINT operates_eid_fkey FOREIGN KEY (eid) REFERENCES public.employee(eid);
 D   ALTER TABLE ONLY public.operates DROP CONSTRAINT operates_eid_fkey;
       public          postgres    false    243    216    3549                       2606    16627    operates operates_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.operates
    ADD CONSTRAINT operates_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 F   ALTER TABLE ONLY public.operates DROP CONSTRAINT operates_upcop_fkey;
       public          postgres    false    229    243    3567                       2606    16652 %   otcoperations otcoperations_upco_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.otcoperations
    ADD CONSTRAINT otcoperations_upco_fkey FOREIGN KEY (upco) REFERENCES public.otc(upco);
 O   ALTER TABLE ONLY public.otcoperations DROP CONSTRAINT otcoperations_upco_fkey;
       public          postgres    false    3559    245    225                       2606    16657 &   otcoperations otcoperations_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.otcoperations
    ADD CONSTRAINT otcoperations_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 P   ALTER TABLE ONLY public.otcoperations DROP CONSTRAINT otcoperations_upcop_fkey;
       public          postgres    false    3567    229    245                       2606    16697    otcprice otcprice_upco_fkey    FK CONSTRAINT     w   ALTER TABLE ONLY public.otcprice
    ADD CONSTRAINT otcprice_upco_fkey FOREIGN KEY (upco) REFERENCES public.otc(upco);
 E   ALTER TABLE ONLY public.otcprice DROP CONSTRAINT otcprice_upco_fkey;
       public          postgres    false    225    3559    248                       2606    16702    otcprice otcprice_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.otcprice
    ADD CONSTRAINT otcprice_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 F   ALTER TABLE ONLY public.otcprice DROP CONSTRAINT otcprice_upcop_fkey;
       public          postgres    false    3567    248    229                       2606    16610    posts posts_dcrid_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_dcrid_fkey FOREIGN KEY (dcrid) REFERENCES public.dcr(dcrid);
 @   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_dcrid_fkey;
       public          postgres    false    241    222    3555                       2606    16605    posts posts_eid_fkey    FK CONSTRAINT     s   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_eid_fkey FOREIGN KEY (eid) REFERENCES public.employee(eid);
 >   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_eid_fkey;
       public          postgres    false    3549    216    241                       2606    16642 8   prescriptionoperations prescriptionoperations_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptionoperations
    ADD CONSTRAINT prescriptionoperations_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 b   ALTER TABLE ONLY public.prescriptionoperations DROP CONSTRAINT prescriptionoperations_upcop_fkey;
       public          postgres    false    229    3567    244                       2606    16637 7   prescriptionoperations prescriptionoperations_upcp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptionoperations
    ADD CONSTRAINT prescriptionoperations_upcp_fkey FOREIGN KEY (upcp) REFERENCES public.prescriptions(upcp);
 a   ALTER TABLE ONLY public.prescriptionoperations DROP CONSTRAINT prescriptionoperations_upcp_fkey;
       public          postgres    false    244    227    3563                       2606    16687 .   prescriptionprice prescriptionprice_upcop_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptionprice
    ADD CONSTRAINT prescriptionprice_upcop_fkey FOREIGN KEY (upcop) REFERENCES public.operations(upcop);
 X   ALTER TABLE ONLY public.prescriptionprice DROP CONSTRAINT prescriptionprice_upcop_fkey;
       public          postgres    false    247    229    3567                       2606    16682 -   prescriptionprice prescriptionprice_upcp_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.prescriptionprice
    ADD CONSTRAINT prescriptionprice_upcp_fkey FOREIGN KEY (upcp) REFERENCES public.prescriptions(upcp);
 W   ALTER TABLE ONLY public.prescriptionprice DROP CONSTRAINT prescriptionprice_upcp_fkey;
       public          postgres    false    247    3563    227                       2606    16548 $   verifysdrawer verifysdrawer_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verifysdrawer
    ADD CONSTRAINT verifysdrawer_eid_fkey FOREIGN KEY (eid) REFERENCES public.employee(eid);
 N   ALTER TABLE ONLY public.verifysdrawer DROP CONSTRAINT verifysdrawer_eid_fkey;
       public          postgres    false    216    232    3549                       2606    16553 (   verifysdrawer verifysdrawer_verifid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verifysdrawer
    ADD CONSTRAINT verifysdrawer_verifid_fkey FOREIGN KEY (verifid) REFERENCES public.drawerverif(verifid);
 R   ALTER TABLE ONLY public.verifysdrawer DROP CONSTRAINT verifysdrawer_verifid_fkey;
       public          postgres    false    3551    218    232                       2606    16567 &   verifysimprest verifysimprest_eid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verifysimprest
    ADD CONSTRAINT verifysimprest_eid_fkey FOREIGN KEY (eid) REFERENCES public.employee(eid);
 P   ALTER TABLE ONLY public.verifysimprest DROP CONSTRAINT verifysimprest_eid_fkey;
       public          postgres    false    216    3549    235            	           2606    16572 (   verifysimprest verifysimprest_impid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.verifysimprest
    ADD CONSTRAINT verifysimprest_impid_fkey FOREIGN KEY (impid) REFERENCES public.imprestverif(impid);
 R   ALTER TABLE ONLY public.verifysimprest DROP CONSTRAINT verifysimprest_impid_fkey;
       public          postgres    false    3553    220    235            �   �  x�%RǑ@z�bn�C/c�f� L"���㉐�+��g�d-y��tŲh�ģ��;3����l9,$�YSNy[bzk�k��Z>��D�N.�b���œ������I��8b9ie��l�7y���$�A�E��#�M�� e%ؙ"(�A,�G��+1t!��n�Jh��ZY]rU�t���p�t�$���,#�$����W��k=��7�Q&���ET�]�Rr�P�+_Ts�oCm�3m�A��ѶV�4��V}��)�6��6�Kp���g�y8z�͊&���C�c��֤�C�4��1Ϻ(L=��!���7��+i����,��Xc2�g�ؐ��MyÖ{H,��|b:2˕����9���!�p.EbG��%���Woi�D�W��{BI쎮� S*m����d"|l      �   �  x�%��q 1��Kܐ��ý��,j32��V��Ҕ��⇙�d�Б�7��z��՞�kS3ɡmd��u��Q+Ɨ��/�#ӧ��S'�9�O��ě���k���zJ�W��N���B}����r��;�V�Ǡ꬞�s��\�o�~I��h	[>G��^�r��l�iL���t�EJ"�Δ�Y�Y��a@"�Mkb[��I_����mpe|�����҂��Z��LkX{
a�1v�D<�:R��&�]�G;(��Ҡ����9��/�^�=m4��Γ&�1YB8E3�����Կg��cx��i���t��J��ܺ�ov.~�$t?a�����!�/,��Eؙ����,@f�,���O��C���!�x.7x�ǚ���J�#���Q�?�Iz�      �   �  x�mV˭$9;�E1	�����X6�8ֳ�m���$�-��e�T_k�$~����ߏB��~iN|c��r�L�`�?������1�x"�q�-�߸����~��<�p��+�%TY"7���(Dowj�ِ}�/�� v�q��B����a	ɛ� o���2�[g�����C�L?TGāR��Ѿ^{Q��� �p�9��F�! �>��M�!��}�=|8��{a��#؂-S�3��_�������6l�N����~�����귝�9�el�]�xF��=��
�`�*ǚ���Jx���f��چ}8�v����x:8̿*g����)�`�锸����mB���>�u����c��u��y�����r�'��(�>=����	�y@��D|�n����i,���-1�E��F�q)� �G��4ƹ�F`�G"r%D!f��ш�\'rM?�:9�}����x� 7r|��Ҿz'��5铁$�V<�b^F�
Y�*F��ި�Z�5�"'��d�CJQ:�R?�Q�vj8`�娹��T�bvcl����ss7�+�գy��3����5|�Z�z�cl�����}bh�ux^���n�:��^�D�<��
=��c��D�<���4N������ 0�1      �     x�-�[�%!D�e/wB�!�e����Ċh��*�C�pu�j���ׯ�,_�7����-���ٗ��ܙ�Qb��4���ҐD@����:rOcs�D�#Őj8R{!͠�w�.,Q�ͨ�x�w��UDEe�M%i��<�B&�R��)�Dlw�wE�VN;����$�c�c�ض��!_wNMdf�3c�b=Y,��"��@.�L���O�3���j��GlT�2���$�j!� �
/x���q����`J��Wë��ɛ�������m��̆�[��n�<���p�˫j�O��`�۞�GN���J����
�\��bL�p���P�D�?y��R��G�\�D����^X	���D�N
�q�h��Ty����3�n�!޼�ͻ����s�h���x��8���0(�&A`�p�㈓�鲘��H0�x��:�I;pqW])��l����cO��bp�#i��a�rIJ>�����3�$n02��'orm����k�b�́�`��-Izp�9-GV���,�|�e)j�ך��qs:���a�`/8�N��H�������+�;���r�|�6���-wxO%�)��i}\���܁f�t���X�w��Y-5�j��:�bIs��Y�.�Z�rZ�����ݾc�z*�����Y������~��^��die�(R����fSH�Om��3���qفfYI�����eO��|^w���ˁ�z���fo،'=Ў���#��?��F���X�ҟȈ֬o�~����P)'ZZ1��"�x��      �   �  x��Z�R�ȶ}N}�>�q"����c��8����T	J��T�寿k�F@��m7P;S{X���Į������c�U^�e��bח�_��}���Sy�R����)a9�� �V캧o\�6�W��1m�3�d_b~�.�纭�Ն�?+=��ElW��X�W)�?��M��c3��Fq���Yo�^r�
�.p�gW��}�T0��V?�����������VV˴�NY����=Be���S���Ϋ��ҜIe�/��Ey�H��+Os�\}*�s��<��up��f��8����H-/;��&���y��3i�,���C��͵������$f�B�2�L���>4�
�Nc��/-;ib~`���&�Tǔ�Ň�$-s�Nvy��m=�[
n�"x'��k!M��e����q�����H9G�v��ÌWq����3-��Zؑ�-L���jHKj��_�5n���"��˶N�g|]8Y5��|_^?Q��M+��8D�FkΔ���7҉J����t�U���_L�P��}�w��2&����Z~�0̑ĥ�"�s�G.n�G��f�&�8��ūYG�ʣ�]���sl۸N���"*w�x9RNg�.���ה��U�3͹(����։��fzF�M�pYǔG�1~cC���W��c�YpBI����u�Rޠ��'TvYw���K��� �X��f� �7����*��cl����3ܡe��Ζ�2/�6A��/p)
a�M��B*`��øl�w���M9-7M!�2��`1vY#pY�~�f1�����&��95u��]Х��y���ԠU�ҡ��Ǆ�Ls��dǎV�r��:�� ��~Y�=�_c��J��� ��..�Nc�����d�kSR���o��L����G��zQ���E�����\w�@Ux�}!;A���]�u"�yP�㦑�c�R��D��B�?���w�<-
��WtJ�.��i�BFq�@=N�?۩9��q��Ѝ�(��S�r�8���ghq$�1�K�/��"���ZML>�C0j]ܩ3�t�@|�ڎ�3�����R��,���.���!FH�0��hD�N��
�`^㼮�{�#x�9� ����#��9ߴ�� � 9�SM_�f�	�*��^�p��T���o��3#�@�������}MA�q�-�sN��3������Ȇ!����� �iU 8�P	�>'�T���ڗ��TMN]�Ύp�)�O��>h ���Ev��
����7�e3i�U����oӽc�.������:�}B��4�wC�w���#ld���Z�I�>� �q�y��OO�2v�^b&�D����Aަ�A|�"�k��y�+���1i����n/�b;[�����,JH)�����g%��Ա�Rz�̃�q�R�H����5&W~���R�,���n�+�Ǻ!$��?�v���C��	lЭiJ��h �?8 ��W�3�2��S+�9��Rn�0qF��m'A�#=��Dȃ:�+@ŞV��OvHU � �f�d�N��c�뱠�+4��R�2�z�!���K��z�ɽ���� 	�����U�_}Z+(1�d�n�l��1�C�~Y������P�8���Z�,�j(��h4�0�9<{�6!�Qu�F�$ޑ�e��3�!ђ���p��@\��x�-(�~��C�/��7a��
PV�(̀F�� 1��>0��{�ΐ.������;u��%~� �_���Q�D��grB��,��� �6R�Jk6p��D�_=��:�b��lQ�C�3I���ѱ����$��Y�s���b��J)��v��8�������-}a;A��`^5w�0.LVA~v�PW�z }8B�34���c�4�P�W�D1AZb�3�{��o	s�i���Nۈ�5���[��bh9�ӫI�9������� ^L	�]G�4rB�J�� �j{_R�9��zz'C(4�ej�5;��m�� %\���j�����%���a#o|��^�����'�#P�%w�oM z�P��=Y�e��?�g lh�#�����,��4��lj�6$�]b�����=����1��T	J�w���:�=P�V��e{D�5�}��;O��H�o����/� 6��+���F�o��H�U��ؘ��G*ֺH[�q��	:�	tX} :�
;�U���ֈB�H��M�;�&	����+q�����(�t��Eq�H���x�]�1�¢V�✀ׅ��dMM��
H�3�a@�N����������9�'��F�x �+����>#6��v�}�h���5��0�F��M�#�j,�.�ŭ��#�yN�ՇbvMXA�rШ���8�m}�/����	�ŭe���8
)8���c�D�( &�,��=�j.��?S���	�l%IR<�T�1�V�4X?ص��'�����l�<�Xi>��>�m��e K���N��	tyO��rh
8���H17��0'����pq$Q�7�r����}��yբ�R��G�u�1=-�����4f���=
�1 r�������P�~,�D@2�I«]��>]���p�[`��^m�Q��i�1ѡvi�W��"�`�I�M���I���`yHͱc�Gy!Tc}��	>�x��:��S���:	�4}
��ZvC_�/ �5�}˳&�~��OTq�0] � qH;D*/m
�Zޮ�Sq4�ky�����7̈́Q�{☊�<$�*,�kZC���?�1�q�V	��Bq�颱���/l��W�`3�ځX��;���З����!��υ��[�Y��z�=�"@,��4�^Ȧ���f�CC�C��	����j�h���h�f
'��#�K��8No�����khg�;g\�+�2J��G�1��
G/A�i����������G��i����Sb���S@(�H�0���+���]�{�Ʌ���M���ibRW��֭�fx�QR?<��
JmȢ���N[ж`�/$\��y�3�����L&L��Š�3�I`���>�Cu;�op�T�1�5Pp�86��i">P�qk�B|�eJ�� ����2z�ZKF�Y1�~�[�l< kƬQ��S4��F���2�����d�p�-0���rDE������i��Qx(߁�O�R�//`OS��
|UѶn�@l�@�]P�d��j~XeB��mQ��
?
�o�8%�Q5��פ&�ڼ���h���;ѭ���6+�-^��6G�d-'f�j NR�<�n&�{z��@2\�^�ky�!��h�CPnr&��
4��� Cϗ�"�h�X8���@R�lS��@���Bd3(CT�i��ic	H��DP+�����J���OĬ齇V8 .s�$�b������{k/%ܝ��;��hl )U�??A_8��	�^��_8L�0�߰V�@�7�w1��cY����f�n
��k�}%� b:?��	��:���f	�u�����iS�Wo�����դ"�8��| ^�N��С�W$By��[��F����S(I���Y|r�1ú@*��&8��U��۹��T�n궿E�FnzÌ��o�� a�"H���Zg�,��NA�W�nA&y�zS�Nu4Mm�,�b�+��5�����	y���4�Tl7�%�EA���'���
���&U��~Y7�$��:�gzǺ��;���+N�1^��	,M7��ɋ`����������г���o$�4���H�N�๘�/ <؁�`b+L\�&&*Kc�a�8$n�9/`h�!��cS�zxM�,�Z�]��G~W�����+�w�C�ۈ!���p�r��L���߻ĝ,R�tq=�fH���w J+f��!�Tl�S�@�,�L�y��0�]U���vAJ���aU��\B[ �m�<���@�	-��i����8�%�=���h|����[Q��.      �   �  x�]W[��8���a��]����|Hv���DW��$IpI{�2z�O��I�������TfO�<9��g<��zR�V�N��Gџ\�(8��ل;�"R�Y�'�T�m<:�l�OW��ǹ�^S��|$�O�p��y<�!(�EX4Xԅ S�O��~F伯+d|.�Oa"�%GMv��vf���w��i�C �����P�r�܈���;��B����]J8�H�s���le/���N[�X�r�-�MB�y6�*X+���#l-R�!#��[7#K2/6�&�?�'�>NN�����F�,�n�q8Ӄa�w����z��1-���[.[1#{�όJؐZ�{p�ӝn�7sF-����zOG��A��}	��J��b�3�`�
����c���6�Ж�����Y�ڼ5��@:��_����v �n�<��v4=c�����~m����X��q\�D���1�Dc��l�-��S�j������!.�dA9���n�c��c����f�����*��m��ʒ���-���K*FA{J����#d�X�X0�IB,⵷�Ke���� �ᜤx���R��W��(6�Q�a^��6��ي��ƛ�BQ!3��iB��ۣ_�
�*+��s}�r�\+Lz8�_��C%#��dy]�(GѶ"�lK����T�����o5�R�� �*0x�XK�xJ�v�rg�U`.x%^X~t!;Y�Ҥ��F�X�nP~����v��D�{�5�]\��
({,C`��6t_�(�H%`U녺V�}�@�C]F�4�>%=�Ӆ�ġ!�X���3;I�h̿]͞�
�-�ѥ�T@�+�]��jzH�̙��9cE#x��X�̐����T�E�#1�L��h,��1�.��2���·��I~e���Ki~���o!���*bY_q�� �p�3���WX�L2�%]VnK�9�3���Mi�w�y�U�/�$�i{B�h����z�6x�v�d�Vt���}�]����j܄�rKf��d伪���V�ա����^�d5=�Z% ��2��.�O����:��P��ˑ����Ԡ]��?I~S�rѫ)�r��Gu[r�El<	y,�S�8ۙe<O�&ޓ~�b��B(��zz�i_�E�Z�鐹;rV<�w<y}��E՘K�0{��3)�`,AH6�^'��	ڍ�����S�aZN��ŝt���[���77º����l&��DԳ��r�	��9�II�N4ؗ�7�N#��Z^�'.�_��3`�ѱ���y�O/&���0���Ԉ�ʾM��
����f�^�:4L�?�4��F���՚��B��#�wo�����l�4�^�[%�T��i�!:^���u�����>�L��^QI�[@�WH��#qy�G�f�M��%��ߒ������jR�������YiwH�����&���kEX):4ۚo[H|��͇߮�LʻTs��NZG�Y���_��_̓DQ      �     x�m�KS�J�ץ_�ս��z?�.f�`�s��M�.�
�GRۆ_?_u7M��"���:y��T�N:�6��t�V\�ǩ=]v멉)(c���h�d�1��a��aj��1)c�W^x���|�wC?5*:���^9/�5R&q�Ms�]v�j"�	V�\=5�$n�j.��4O��sjt��;�IZDIH���r^=�oB��x�I�	�%�����L��J�d�K1� .��<���<�,ϑFFe��"��u�D�[=�bj�4�*�a��'�����9�˂�����*QŰ�ƾQl0j0҆#N�y|���߫y����}�"�k��I��)ȷa�8�w��I�ja�Xq:�3[�J��II����}|���a�[���|{߸�%D����2�m=u�n/������YI��Q;q5��Y�yȢmR>*m$�E� �폯�;��I)�!�SQ:�B��֎:_�n���}��9ϥI�U��]�G^Jq�8��dU�P��M�_I!���V��oc)O��tKKۛ���a!�*%�"P<<�~њ��b�k{xi*SR���t��^46:��t�ѵ�]�R�ϴd����h���N����ݯݼl?���SJ�QK Ψ,X	�*	�f��j?˴l|01jϱI�D��z��iwa���ѐS��&��a3V$o�퇎�@��b���f���8͐ә$S0�Q��<v߆�����.摋&�I�.4ԌZ��4cj/h��Ǩ	���Z(C���g���*$1��b��T��2���n�Wee4�Y����"�����cCj+y���Zh,�\�uY�� #2�t��t����X9ܠ������~5��AN�BSqR�C7�3��
�N; m�8��Qz��wU$�E(&�
��L|ˀ؆�l�ߡp:�D�ɓ�P��n�~R��NT�%+���z�~E���ړ����n谓$`��5]^���7�a�Z�����z����[UmI���'��f��<��p)�
-���G9���d��RЭq��Y��P�� �k�s?�ڗ�RU�ʝ��c�syj �S	��� n�%�WCe3�� i&�h����C�<�����z�8�E�ɀ��`E��7%�� UΙ(��C�ͺl�yn_�oS1
�O���uمY�VS~�������2͔��*&^g��)ș.�y�IG�jռ%�}�KE�������!=��c���#_���O���C՞�%�˦?��Z�&�^к6X�W�1����$f��j�Q�[�C�2��%},cחׁ�˘Lm#����]eu$�M����LK[�G�h����x���G������.���ɒϑpC`γ��q�(�.�f�?�J�e����$i����<^�e�ڊ��;�|�?�Z�C�X��F��z�r���`��L�$����<��dD�^	2j,��
�����6�k�n/�<���Ϩ[5.� ���q|�{�����F�6��eA;)1b�\?�aq�$Ca�D�e����8nZw΢�̈́��J|����ɡ�A)���y���0�����Ţ�oǂ������5:�n-; #��#i76Ƕ��Յiˆ����=Ϸ]^�F�T-�℀�������uO5�`2�"�b�;�񷜜�|5ٺ����.�8[-_J�L�H�#d���{~ٺ%��j�lI��ɹC�U�/�5�{ �*	`��P�,��(�v���3�R�!Pk�_�۪�Wq|�SV^�	*��#�ʯ�ȣ���Ȯ��Pw��ܦ���,�ʱظjV���&����^�A�准ы����1��,<Hg�8u��Q�`u�J�c��1�A�P���ow�|	�.��c��x�?��%��G���Ĩ#�`������GB^7�N,V�����s�;��F/��YI���,;$�Hl=W�����2�i��������Bp^TR�I�s�׆d���yk$�"��;���u��-�Ih@["�D�LC��Ԍ�:|�ޱ�F������Y�9�6�\��G�4�%a�k      �   2  x�m�[r�
D��*f=�C �����㦺]2D��?'��T<2�^�Ρj{��b{�������'k��źLi�'Z_����5K�,$h�'�^ܢ%�E$C<h�;Z���mi�{�Vq�yv��������p���x��E���W�U8�D�KZ���)�I�Dg;7��Vt�l�^l�d�x�y�o6���R�EW�	ʧkӀ'�&='(�v���m_�BK��ZJ�Eot�D	{m�9��s�y��U�J>ϖ�U�}qD��+;�ʷ��*�5>�%�.ɾ|�O�U��qHC�-i�����U��3�E�j��T�
���4��A��U�+�*L���M7<h{�6������lI[���|���<5IYH3x�{c[�PL�>�Ӱ�^���<��Z�?Cs�$�1�7�:fǭ���+��n�Jz`e'��N�J�׮
pO���<2�f|t����Y���~,p������R�,Ҁ��ܧ�	A���\���T�Y��Ҁ'zT�Wd��������je�#��j4�f���ļ�$d�U��UZ��@{ ��9`���P��4��I�%�aȘC��<�ݧ�շ�O ����5x�閵!}�_�ى���ad���p)M�(n4)\�Ín��:s�z0�l��b�9AÅ1�nǶ|#gl��h��c��A�B���G�;|u�*`e�3 �� ��e�ɤߔm��t'6�p���I�BW�_��|ߔ4�E�['`��Wv'	G�F �@��HW���Ag��:<9.u�C�h�4��_�@�01�Hp}�}%t��x�q�wҸGc�ɲSD��}?Qt��ɥ|�7�w.�f��A��4�:��y8ӎ���8�T�oѳ1Burр;�-:���[˄��tE�^��9��i���]��A�X�ܙﳃJ���V�.�s����`��p���}1rfp����'}�92������t�3�}汸B�`�I�M���#go��ܭ׺~[��e����c��*�N�5p�'���},�kH񀧫�V)�i��V3�|�F�,a��4����B��5d�÷)ƛ=���K�[����Y̦H���6�����V��n�}�L����JЃ�}��K���X/\oh�;m`���(��t��c���Yq\\�����҃��i��ؾk"�z�6Ӿs[�kH�i����Z���Ҁo�y���C�i������ؑ�\v�����1u,���w���M�
gx,��w�^�N��r�dW�w.[-��	����ܓp�*�/��ջ�<������ "�p+�&�������b\      �   -  x�m�[�d9D��U�r������1�̾.���?G���<�p,g�j�(:(���_l�0�y���
��X�)�D�K�7z�f��m�4�]/ݿђ�"�[|ӀO�g[s,	��h}	�Fk��p�_��߿�Ym��+[���Sx�r$m�;:^Ҿ�8�Bq�U4�-�����-�,cs���F�8�P�o������4A�txr"��D�n�0�i�'z���gM6[��4�ޤE:Nv	{��D��~΋\U�4�� �{�_�wm�Wv���V�U�S��d�;Z^&�&��ˣ�x�ݿ��qIC�-i�s�x��Uș�ʢ���+��.utx�ã�)V\U�<9�vv����a4��g������4��J�����,���괜�Lݸ@1x����.F�w�|�6HJ�|4'O�����>;n��4��;[NJz`e'����U���U�<���l�4�렃�7A�m��R����򞧝�2f�ܹlg;����5܎m�&�<������Y%�#����g�ZB��p����Ζ�ļ�$d��w�*��D"�H��+2ܡ��4�n��fȘC��<�������'����v�i�
H߀�/�+�
�z�02x�=f^�1��&Ŗ��铹w�Μ�1p�R{N�0�����]��1���1��gpcV��G�;ܝ��[� �Pg <g[;BS˰$�ܳ[N6�F�i�M�?i7�R�*v$Ɨ|����:ڷN��G5�+2�0�	4���\��:]�ẙ��gu(�An廞�	È�O����O�M�ᛯ���e��4���{G�qɥ|�7���n=���R�9h�כ���`��iX��1Burр�]�[W*�n-p������4��p�L�vOg��pG���4�im��B��ǯ��`��p�Tתb�̰ �n-�B�U��p3����G���4ຂ�LM�o���}Y]�m����/�I��UO�����ǌc},�5�x��>�����F�{���U�э���T`�䤻����񠆌|wxz�+2~��Y �8�NC����l�T/pwC�߱����x�u�����m�Ǖ�;|�i�5���а��V��ěv���3
�$�9%�Ί���4�ޤ�+}sAt<�<��k"�z�s[�א,����Pk�r� �\��}��<)�2�
Ӏ�O��,<+ ig.;�I���,u��p���p�����;+��;���r��r�d��J��{��&@���i��Kx�zwU����+�g�B��t�÷��������bE      �   W  x�u�[$����sV��	�k9�_��T�B�"=�1=L��Q�a��T�k<�T���G�_�����}|/�c4]��D�3rI��o�O������%��&">žK�#�Ğ5d���%�z.��cM�5���E���%���U��}Ͽ_�v��e'�6����m�d?�����d�si-Ǖ���}��[?;I��מm�N O|�:��#۽ֱ���?R�-�[��I����k�ղf<��e���Г��<�,R-sK��^H->�|��AY��e�͹g_�k��2]��o��Ҳf?&�l�ڭ��W���g�q�N&���h� U�����҆g���5�Y�?J�H�)A�{urj�G9��<s���ǭ�e�V?�qV{�M�>t���.k&]��� F'��]�3Ww��~��^%�����j(��'�W|��t�G�V�){�uv۫��{�a�glu�������mFl�T���{�3��ޟnӝqp�,q�#b�}�\�����󨝡��>q����3�Hq�U��Đ�)��N��(=��R��ϳ��!@�i�+y�y�S�����ث�gpݽ�s3rf'��E�Ͻ|��N.*���{����-Zr:�e�/FQ��t]2VO���L�9�@Tt;9�}��F=/j���w���A[��R���t���4i߽��w`����@^;�bM�6��&��fK�Խhi4����"De�Lg���{�)1�i��ˡ�9Ok�� [8 h*?k���_;,?���nT`�y�{9=���JL��u�ޖ%�)k��5N�R�����%�Sژ�Qv����ǜ��#ډ�%_3��\޶6�,�<�A*U�L�.uX�l������+��֘�@#z��R@�+�A��蒸Q��p%�,0d=uXyg�gCݝu�pw�knhP��=%9��pg6�Y�W傥���;0v�e^XLzt1硊2��k�Z���a��̽BlQ<g��Z��}� �~����Zѧu��+f����i
�n�ϒuX�N��c�2���y7 E�c-ה�qy�>�
	vK��X���1�R�ݥ����E�v%N#���g<{�P�vI����Q�H���T���}�@�i��	�7�w������e��3{ԏZS�tt�I�mxb�M���O���	���wݻ��7t@���י�@����M��<j��Nmؕ�M=���[�?����e�^H���zA���ǐ�)6�z�^p���ش�FK?t�O�g�C�G��h��G�(PF�I��@B�8Nw=���� ɢ�;�♊r�lB�s���K�<pq��P�V�	}�8����yi��-҄KK����`}���-���>���6�/�mP�C[	k�\jt��>�"v�\�`n]#a9���j��T�_B�a7Vzhj�Z������}��T$��꧶jGD!C]���*=dM��@��<OM8�%M#[�bM�?�K@r����zft�Ӽ��_Q��h/R��+޵���5�O���u$7�ɲ�~�k	"ݱ�3�ɖ��\��-|Jrd��Xh�F��:%��mU:)�&�qz�@�L�+�ai��`A�@p��y�N�.���+dl�k���w��+�K�.�>p�e�*._k8�q-1@�x�y��(@�8y�0�}��\A�����^���c-�Y�!�|��ආm�{�����)ڱ�����B��oFN�y�'�8*']��M�0茘�ѥe���I��"D���y�|2c5�n��#�����Y ��ɑ�'������V�G�T#��F��>[~| ����r�ӯ^���V�$���D��G6����[���:�>�q/L 9��S7�|���J��S�TO�1q���Z���.�"$�YmW����g����G���Ԙ�n���������ga��;��7Rv4ё�~�@��k++%������Ӌ.��>pa́�����B��Y�����Si`mC�͖y��Y����A��S�.���"k����F��������um1�3�z�|n6�õ���9Cn����-��Z���t<0
	te>R�r�y����N��?�Á{�v���>m
�b�U�3 ��kenXjl�����S�cO���u��/|�7�ɢ>�}N>�D:�$��.�sS�F�����e��]��>~f��@�dl��{ƹ*H��@Iد�-%��@�_B�n�YU�yD"l�]����⌿S"x���/��xX3tKO�U~�Z�4�/��k�����{�E���8�.�J�w�{��ƻ.�d�����#%�d,�fſU��d@&x��$�T��]���xo_{(1L� �2G�O?荹q���3��Z��Ԟ�"|Ɔ������)`Sʣ`K݋���7��S<^=3��e7ݩ%���X �d��G���{�h�P��pA\}�]���m�����s$5]#��������&Ren��C���ʒZ`h:�b�k��8��1�����	׸��jpd�[������gbW�~MUܨ&��	�ϗ��N}�C�}�ne~Y�%��:� �eVz���-A[FʛX]��X茶�R)s�j�?�'qd����j$ts�E��[ϫ?�$�ބ)8��ϒ�٘�r}���9#��+�܈nXUQ��k�n=��~x���K���b����@��h��9׿ߒ�H��Up�j�x�ԑ��M^�w�����}�C�p���\�>�}��ϯx�E�ǿSc�5�ڐ�kZ��O�kCU���ص��zf�<�� ��ǉ����8��iv�l��/|��]
�x��^�+t&�GşԷGp9�3P|�}g��]�^#tx������L����������a�x�e|��)2LA��+������f0�s����O�#�6g�?��hD��j�^�� �5Uء������C���+��k/�t1*��(^����a�U��1���7y�z�Cϡ�-ނ]��=�
�F�l���7��?�T "N��B�4H+��x�{���'`�l\�#$|�R��VbBՎ�@��Pc��h�j���(ж����z�Cg����%���f(拥/*��C��| ~$��BVI<@���卷�܈�[�����o���x�D�&�_oY��ſ��h��s��x�{�$7�5�{�`B�.�����yM<EB�����+(�K�_�>p�p�x+��[��F�f��V~�P=j#L��h����zFů^�����P!H�Bb�Qf����JFe�r.V��~���o����qb� �A���Z+~����|��Ɩ���>F�!7�]�Z�ט�׎u�x�s�\�o$��TE�d��w:GS#]��ve٪��~���4&~J�<x��xcq�bX�׹>��������m��x��q-����:mJ2z���Ê1&TG�ܙ	�=x��qzꖟ7���1/%����#����*�#���9�0Z��ӊ@;�3�x��[���G=���E�ı��c���g&^�Y���>~���Y��WDo��%��I�g|`�GDIc��{C����m��F�����/	�y��o}����H�c�+��m_b�߬�9������䝿������5�9�������������#�I      �   �
  x�E�K�,�Cۙ�y���\����HS�� #�Y�+,l��\��O}��k�����wx�1��c��6ƨ=�%���5�r��=_?+wD�y�����'8k�9�8��Y��Y�>�#�wZ���N�ē�e��X�fLm~�ؖ6�������S5������ؾI!�8/8�W��6�Z�kWR��ϰ8���cY�W)��;vƲ�Ϟ��������O#�^�Q+�9���T��$�Y��3��C�V�"��p�J}�D	cƲ 2g/6��X1�=cG*��Y�{�\�~Ȑ�Aߒxk,��<���U�y�K���*�cs"O~Y����TjK]c;9#������^އ"����6cW��K���i���n4��j-7�]
*K/	�/��EE�3?��:g���`�[	Lǜ�yjGFQX�y{����)�$Ӈ�}�2e4�tA�)gQ���8�}��L�fz���U,���0Q{�2��Tg�8�Q����4�w�َa��"Gb���<n�*!�߃7�m��0�Ƥ���&�	GU��ў�ne=8����OW���S�p���y�A܋*�Ə�T�6W�G�w&GjFӉ�)�Š۔���������yo���'C[g*m64\�!��U�"bHH�Dߛę��<�J/��pQ-��Q����8�,e
�oN���r���&��a^~�x'�� �hn J�0�!xJ���R�ً��&�a�`���48Q�3�i ��%dS���b�0Rm[��4t.�`tC����o��l���D��gzI�;�13 J�ɫ�)B�ѧ߫�ɽ�E(*��]bCS��&FY�����Nlx
ٵ�ws�[�I�i9�����\k^�@����g{��.�>Ґ��]�G<�+�Eҹb��Lj� ������1
�~����4-Q��4���=o��_P���G�,8@��#�����jy�.��LK&VONrft��\F��P��5���D����(7�G�Hh>q�7\�DW�`Sj���\V�@�=X3����xqK<b�VD�c�m��� ��l�_�YXR-D��|J��3���h�ތ).�:0��453�"� Q��P<QϢ���o4I��k6�H37���Nc����j6y�B��q�Y�P�I�:G8�(��]�[�M�ɻg�����?�M�b}e�カ��rZar<):����m~,�!�`��G��0� �HgT"'��x���	�h�|�������$��y��C�(uP���(G�s�0_sH����'��$4(��St��\UW$�X,h��ټ#8`�P��n Ł��=��1F��d�~p�L�:2sM���V.�T�|�X�ñ��B��7G��q�������7(P��:��1�ʜ�~'�q�P��pr�lL
X��s��x��uԁ��V���|�{p�~�Y�&�=J�1Q���浃dS��xbDn�H��gƱ|�.��yq��|�
������}��4<�1Dn����T6xl8j�1��/����o��,�h���A �b�rq���S���P����j�c�`�ҳψ�+fנ�z�A�����{��P�b>
f�du#���*O���x��A�23��MN�Rī�g��fCr���0�pZ�~I@hHc6����݂���rBO��x͔MP���(�@Vє��Me��yLz�H؟-��i q����HĽ�l^�ʎ������!C_��`�J�_�w e�eQ�u]w���	b�)�j!pT.�z��FaJV{/��R�	 3U
��P��!����/��R ��.{NL�q�ic��`��F��M�Z����0�(�$�'m�1�Ƴ�g�t_�'3K��%I��|���8?�����;6{{.�6A����Z8f�����,�`����R�����7.]���OueR9�_is���~�ǁ(4�$�W��&����Gl�2�sf�_�0Y����*�f�咪��f����	/�u".o�fՋ�*B܋�@�M��Wx�s��+�к%�SO�O�1.by�� ���%=�"�h9CW�OI���ͯ)Us�+���_�P0<����@��S}<F6����lYz&�ZV�+�e��g,L\�c�����I�|Sx�ֺ�AB.���mX\�1h��pj��|0�Ę�e�R�+�znb����5l@�+���#i�A��\�j�(XdVr�5�{��t���e�*���>)4�L�1�;� �b���p)���u�B ���BF��0����܈>�\ӭJB��^��q����=YPh�R_�a�?���[ݏԭ�҄]�UhtI*/����օyݬ~�u��y�!���RR	家J�	��A�S������ń����Djb��c�%y)�,���.������������@�3Q�҉�qH�!Sh���A�t	���JӇ��I,=������m�Y�Kb����d����!�J,o��Yh'�`��wJ�8}d.{@�v���@t��	@�[��x�d��ጷ���-Q�ێ|d��{5�:#����Ksm��N��*��Dia��ǔ#���T��g �	E�,F��A�%�2_uR��|���.����(��,�:���{�Q1��}���0mo@\�g����C�LN����~����      �   �	  x����rGE��_�+�
*��X�!J�M
&)ɚ���5N����ߘߛ/���$�GX��U�Y�7�	�}H��l�W.'�:h��l��Ց	�ɶ��\%+k�sYͺ��v~u;��nު�d+c��?b����Vo���e}z��u��G�ᢟ��|V������Z���>k����.\�r���b��Vy����C��� ��V9���f�Ey��jz�/I�ۦ{bs�b�΅��Iʘ�RR����v�n^�8�<��:��J!�vNg�	ڨ1��f��y�g;���BE��I6f��*�d���m��;��\V��hW�q1)�-f[�7���l�^�˱*�$�qT=(�}��I�^_�竡�_��Ɣ^fSY��)9�\�4X]\�C�a����9\�/�ԄFǢu*�fo�
�e�T3mWRۅ��S���xS���E�b���|=k>��z��QT9oJ�PY��P�N��9U��d�����:ct�j����py[O��r���M�b�ނ�(X�Td�,��l�v6�b����
l�W�4��4{�X-��]�U&��*���Q7F���X��6V)[�2�'gT6<�P�뛾]�wYn�zlLE]t>`�J�q�y(U����6[]��@ޫ1�u�I����e��d���a1��t3��J�5!��V̲��ԧ�*ܫg�TEFV��f�l����v�^.y����xɖbꐂ:YO����Y����=�����8��'2=@BE��u�|�X�]�0���O|�hI����RlZ~�~���5�*5�`�<݋�v���.=��§��h�I�y|`���ݪ��o���#��C�)���=Y��n����f��ގw�&��C010��b���ț�_�m���1��M��؜93)��q�@�PF04�yc�}16V���r��X#�#53`�x�㱩ǋ��5�+I��O�1�A��klL �j�r�u�U��>��1�70���S/��R���~%؎����R��\h�g�l*_���]�ւ�,�Q&F�}����]���|��1��ðQ9�R�	 Y?�dh����>�4����޾�9ю�5){�	x�����&�mF<<I[eAk0��Dʨ_9*"4��\��Zx�/k`��~?]\�xh۟�x�]%h�L�"*�\�m��}�����E	� +���?]u�;ᾟ�̨�3����E�1Q��?�{��X��ό�8@�Q���>���_���ɻ>^�뾩�o��c��/�WCwI�}��Çv��]N�9DӼ�X��x(,ؘ�&�gʖ&�(W��0P^��y�±@zj�fX��R��#_���@#GW�O'OO�r��?y����� �7�ۡ���d�X��LF�P!220{�כ�1
�G����d����F� ��F�^a	����E3�#�±���õJ�4��C�i14�׺xe���E��B���63�#��!h�D�!t�������r%��DG尜Ľ��!I�z�4ie�ކT1
�����r��X���t�HW��L Ğ�<�l���x�67�����f�S��}fK%�N��`�q�~�����f�A��a<"���%���KedVOy�-%x�U��n��=���Z���Y\9[0X|;ool�{�ք��y#��b��"ީhʕ�3v~�(����I>�A����=V�����������m/�7��<�i�����U���@¤����	RL��mV�bgvέXU�Q^���d��bl��f>&*�i�LD)G�O��"�|��>	b�Fn���-8�8MDiԭ�7�!���b�&�:l`�9�H�X	���d�W]?�a�mY����A#�动�D�D��%����C8mip������bo�	�hlH�o�ގ�/�G�F�3"$\}�?ޡ�I�k��@���":1����	c�担B��p�Fb �g�b&}A�ꋅdC�B�xXk���b��-�<_5�M�'c��>�<��@��K�%��#�y{�I��&���'oXdx��Aֱ�&�������_cI�{�Kٽ���߅V�Qi�r��-X	� D_��v�T'D�X7�"(�4!�`��w���m�,\�����]Đ�_Q�U�^f��*�	`:�`��W����t!L�
8YH!��������"��ĵ)�c��8U(�Щɢ��'9����TL�:YBPb����ް��AL4��d��;�]��C�{��ī:1�Q�%��������8+&ײ:�(����������Wâ\���YO���2/q[����=yU�u����`�H�3w��p*�WdI����L�U�vw�m3\�lm��Ulв�cD�0H�_�h�}��y�1�f@�6��,�O�q��#�9�(�����@Y��g(~��[B�����<��J>�����m}�Xn�fY)��Aʉ-�f~'�f}�4{r ����b�$���]�s���Ӫ��2�3j      �   &  x�m�[r-;
D�9���<��K���>%Í��?�M�$I�ry��Xd�U?�������GR+�l{%����Qm�j���;�ቖ����.\��O����h��YK�(��[����ر�<9%h�w��h;e���'�F���o�!k�s�Ӏot|�۾y"Xlx֖�]V��r�4�9���h����2Dh���9�5�2�wi-ZkI!i�����-k�N1p�]m�k�.��
[�}�ep�.�m�}w��nw������vi��ͧ�o\�vg�Ds��H�ȍz2�ϾG���@Y����h�p�X��D�=��<u��Ni�bu��h�s�콾Qw������v��2��ѹI�[_.QF٭s8��|��i���B%ф����^����U�]�GU�����Ѐ��>��btz�@�:<:�s��eP(�O��Y�]���OUu�RG����<��˕.��Y4�F��戽7'��o�,"��l���U���vz����V�Ȯ���I��<ڑ��-T��U��꣕���p���ڧ�7v\EnNl�w �;�~���IK̏��+����ra0�0<9�zrDO�aӀ�hH_�/�m4����I-� �BN:�N@8 �c�(x���&���L�p{���e��^�+�F�Ƞa,Xh��ˮ���3RYh���^Uy��Ng�x�{�qJ�,7�靖o�g���M��cί�	�`҄��P��t�6x�7����E�k=��|)�`�ܞo
��:���o^�c4�k��I[�ԑ۩Swp=D�>%�$��i��w��/AeӀ���ͯ�ă�NLp{���9�A��-���%&�)�l���$�=�"*|�PI4�b�`� ��.�p5v����a� !���j�A�s�a�\����8<�Ҁ���G�0NΑ\�1�+&$���������eL��O�����1x�j<���I�!�~
Ս��X ����[�ܻ�]�.��ad�����)34����jkC�p�%�N��U���i��Dw�����!��Ɗ�b�n����,������]�Qx�l�F�t�w�'����#�ܗ@�>�쨼0p�cˉ��i����L���h�Nlp�[WDI��3�w'�w��pĘ��q\x�4�\�<�����[}��41�1q���^<�P�x*Ӏ[��VA�`����sʮ�u��<+���+j��0R�SL�w��v��1�Q��:Jأ�@x}K��G�
OOn�#|y�\Nn7�����ϟ?��baX      �   .  x�m�]n�;
D�9��	��߱������c_�"%+A�l\��#׶�t�ʪ�������#�;�l�.��֏T�VS�z�Dt�o�x�]�Bx��?i�7z}DZtتڮX�|��-:W�Y�$���h�舭�l�E�)y�mȚ���
pw"���K�b+i�[�Eoۉ�r4�]n�T��%�R�&��Ki�\�9wh�2�F�q�����4Y����9Y*;��*1pO�mmuOu��6�:�'Z>��.uM�e�}wx9it��#l�|�s��Db�WӀ�v��,��=�Ѐ��o1�,�vҀ�gNb���R�4ො�q���j�ߵ����Ee�f�*�Eo�4F��;��vQ����\U�vŢ�*J�	�=��ؾ4P�J^���b�M�Ch�S����ͨ����p��9qFuJ9i�o^�<BVh�Z4��D�b5�	�z��U�}߼+D?N���59s���	����nGD�p*8؀��ݿ�`/�e�v:����
1���.{���ڊ��5;<}{w�ee�Ѐ�}�S�;ޛܺ}*B�W�����������J������0��<?�}��j���h���>�-�}x���F/eB2;r��Uq��3@K�N�4���{/C�IO���_v����\�c�4��d�$�!$�Ѐ��sr��i�,4੪����'��tZ̀��٫�LGJg�w߽���(|eC����a�0L�p��=���҉Z4�f�7o/��E���o�j�K�1m����U��3ԝ�k�=e��HO4&x<�o�k�GGaG�4�����#��L����}�P,&�.P6�7�;�':��B��M�u�e��eN^[4:�)�l��n��%�)_7(���[�0���#U�����oSǌ�f氐W�}�@#��>��\��s�)�T����JkUǝ�N�#�7�k��:�Bv��4��2&��'�~��DÌ�^��Ӏ�>���G�a4੪�# 憽o��[j�
qwh�(�ϑ�]ʂ�������_ukᶷ�RLJ�]�^�Rд�U��;<U�.�1�`�ƊG�^t�	��D+`V\߀w��>�m�q�@��o�^��Gno��>�P^x;i�}洬B�Ҁ�*7�(��>>��Uq���-y�gF޾��!#c߉��s�6Wa��aL�4����]�@F��4��Ļ#;d����1x�6f���}����Sl����:�Jlu�������A
:E���+�1ah����]���14�Mx=�'L$���i�o~�	 �N�wЀ�l�!���?���a�      �   �  x�mVۭcI���&�U�h������MY:���4PU�t��V���Y�ןߏB�v}����}����.�2��~�儌=o�z)�y���N�n�+����^B����݈"�@>=��y�7���|���R~q�O��!�ޗ|���#OB���S����4�A��:�� �N�= ��K�s �[�bE ���� �Q= ���� FI�� F�4���l3�z ����u��ca@��u`G���<�Gl��e��h�Q/{�Ϟ�ճ�a}�Vb�|�N9�.�*������n7�☳�v��=,�<�q���Z�s�޼�xky�{��{ha�>�ق-7�qۊ��6%�lö��x��c08Sϯ�U��9� �����9�q?���`��k��XSa�����P�\f!AP��1��3� İ͞D�>`�F!j�{ѓ�<��k^��NA|{R���\r0`%�#�Q�������d\NyS�9�y��-���b9w���B��%(���U�`�sZ��A�tP��Y`�k��6�=�@�>`�T�r�������u5j0`z��.Pm-���'�=p�mh�Usm���2�K�Mw���@���y���sڅ~Ơ�'R?jT����~~��Mĉ      �   1  x�m��$7�s�pm�9����]Z(`����J,��Z۔�����AY�����?�?�|��K,�_k�p���ܵ?�/�k-���zeU��0�=�>j��s��m�M���ݬ5��W�m4��J�fͼl1]�����?"ͺdq�*x��9�����T��֏��W+z�р���3�;��v�7&͓ʲ�	Geр��ڑ�S�dӀ'��zy���E.;|#(3�r.G�D���^'(�:��J�։ ��5�M4�F��e$�~��h�S�����W���ד^�H33�P��o�-v.G?.pkpƛ9�+�i�oi����bp�=&��v�U'&���c�=)D�#�4�F�Y��F�>�Ҁ'��o|���%En�١���s܀�bG.cs~��р�+{LV0�)�0�F�w�T3�<x��Uӗ(�Y�V�t���>K��0�x�U��<��Q�O�{v ��'�B�Ļg����a�h�[}�*G�uOv:<~s�;Y�4	��Wٚ'��+s��#}^��a@���p3�;M�$z��;�Wv���7C h�[v c&a�%4�vq�F�P%>ӵ�ky�t�fC�[�����3�*�í��uP 	{���n[�3�=��v�#��LM�O�(Z �؀���6L���7��٠m6�˶��0I:�)۩P|V�|�;�{�qP�::�����Cc��Kh6�*x�AiAUsc�р�'��P���2�s���wZ#f���p܀'��oEa��Mx��B��V@�p��';-���Ou?x<;���	��H�'M!��8m�f��ީ��d���;�.nsg��U�4�o���w���l�N�V0��g�3fC�����ļ�Ŏ} �ܳ[��Mto,��6S܌��biDw�;�u�uD[V�wrk�b�(�jw4׀�b[v>��:a�����1�vas�,�p�|�*l~XI���W���Hv:V#�l�p���m��n$A�[���$�l��-�
��W]�`B"�{g��mp�k�oǒ��4��|W{|�{A�0�i��R�����c�@��m;3���h�J����`���I�4v��v��O7�4ƞ���;1�p��e�B���WO�Wb��ÌV�V'XtL� �b̝oZ��h<�h���b��G�JCi�������řO4���FቋU���i1Ɋ<��4�
ѬQGy����L�"�.v��6úÝ;}"٘���ah���-�X0�PK�h�=��b�:z�γ�?�c{�@�6dx�7I����߿~~��ObF      �   /  x�m�[�d;
E��Q�	�/������m'H!�JZ
���`�m�Q��&�#�������	_�/	g�ך�G���宝���ӀϷ�Gׯ�gU��0���_kY�s�m�M>���f�Y�jo��on�f7g|�a��c]��%�!^���:�-[ZH��/��k]��
��l4��R~�3�;���F>��#햕e���Ӏ���X�w�H�T.�4�c�?����^��e�W'=�rG�D��Q'(�:�R��5�$l	�&�?po)�o��X�S�En5~�7������=��43#u����R��9��4���=A��3�R�|���NO-֠׺wq����Ĥ���"�"�4�f��wJh��/x~G�Xٚ�̥h����ߡ�е�s^7���؜�ߡg4��G0�a��<靆i��@��l�,e3���ܘ�N�ru�0�x񶮚�<��Q�/�=&ɶN(�4��Ive���`�8�X�̎�B�uOv:\��I&F�@�h���'��+[G�ܘ��Zy�0���;\e��rT�h�wJ�x#f�6>�@ЀwK�
�&�.4�޲�CU��L�o�O��LwYa6t��j/c&�����J�
$ao>�w��`�o����%�L�l�݀}5���4�y�r)P�@�c�'��ц�ނ�����>��y�2L�7�ҫ
��ke`�wx1�y6]�3�<��u�^B�1Vi��<ۨ؂��� �o�j�DE#�n������"3R�Z�܀���KEa�9�M�s�w1�I�2��|�f՟��Yh��� z$[#�[����-��q�X�"c��|?���M�=�ؤ!}^vZLPə���EnL��P�8��1:�m���y����0��b>���X���m��dd�K#��÷�Z�GT��`��mJ!q��k��e�7��g���o��$�l����u�*H�bq���Ë�ث��\X�fC�7/{vK�.H���T���=ޘ���A�рۗs��P��;�Tl������ZI��_�ԧ�U�*f;x�m6�2�T�%4��N���Nȶ��J�V�2���A��2�`��S;k��#&�=-uwb��iU��_!�HȀ�I�	�Y�0��8����	 R����O�XL�h<�h�S6�
�G�JCi��i=ނ����'��O�Ɓ0�O\�4�uC�`V��ƅ@Ӏ�C�77��3Log�ri���F
t�a��f��D�1-��Ѐ��s��C-ao��ހx:�����>���ۆ�y�4x�b������?	b      �   �  x�]W]��|����l~��g�|�:��,�C�j4k����H���S-��,����5&j%]�2F��t�c=�Q(��F�FS�5�JK�H�n��T�@��>��R����)�[���6;�Cp2����Rw��BԆ�#룷^GPϡ^s��y���)��!ĨŻ9_��g����4�H<d�s�.�4���B�Q #����������K��R{�(8�N�2��:&��V��(�Y� �R�_��Z�Ԫ��;|�d�
�1]R~Ŏ$���X�B� �8c�����Bt�H�d�(��}*�u��r����U����q�/�^Sk�n����\��S��)��d<f�`��{t�K���Ꜷ��I�1@�>�g<ÇI���I�L���-0Lǩ�����M4aq�m*o!e;�	H����P����G̃�4'���p>��0ί��Òё�{<I�q���\�\�`L�*H�8�v�o��F)�c�71�~M�5K�		z�΃Z�WdO㭬a��2��%�O_���a,�@Qyg�� >�m:"t?l��
NY�_���0��"G�����!Y������t��I��9M��o��T�}�S��9���WǨ<��Қ�k,�D�qn# ��5����٨ħ�	���2F9�O��t��>���,A�\����x��Ә�1��pm�=�1�5�xa5���<"�O���~hҗ0�`�Z��=�{Zб��:8A���pa��4�La�A[x�9��/��&��g�:��1�3P��]�X��AX�,u���~�|�Щ�o���65� /V���HZgH�m(i��B�:t�Y�~�vӵD�i5���K���Y���y��"G�Ӯ�\d����%[6GTh��l���5��$����j�e��{��^y)�[�֟!#(���D ��+Ȕ��TBB�7����@6[�9�!���j-�X߽����_
�Ή/�1��B �!P`����2����h��Fz	�X|��c��0L>�|�1��id,�E���s�I!��i؍��z�l'������Bp��x�96���m;����t��4����8��{χ�m���������y[j��<�D)�a@�[<c��#m�%�/��p�+t�� wDlB񯜾MMՐ�q�r�B���l�81Q�w ���g���5�M��+����%�����Z.-��`�1H��xN=ؙV��)h'y�ǈ#�9�RI/��+ ���#��ﷅ9�c�ÒǮ2����fm�Lz�_���[�C���=�;����򝆛� ��s���' &�Xl� �\̯��zc�`{�5f��;̩Y��&��ǝ�<�i��;�����# �k��V��a�@<F����G(�4�\�r����p��:,�Y Px8�>/�u�AA����"Oi��J3x@ - ��Z�{^ߏ�؝�����T�7d��W�r
�5
O��慬��LK,B�0H�L\O�M~QDq�8�?ݕ��N=�i#%����tk^�E�	�5\Z���"ȄSop�<d?6���S��|�1�>��8$8���p���c��(h�����SG��g\x�<-T���gNZ ��i�N�͙�5�����e�J��'��o�������w�#��{_/���qQ����aX�{`�5U�s���?p�]�1��f�C��7Q|=��������]����+�      �     x�U�[��8
��������2�_�|��\g��:�U��%I�LK[�Q�+��ާF�i>ï�ߺ������s�`o�1�^#����f5G��+�aW�~f�̚q\;c\�>ɑsE��}ʼ�v^��֙9�bʜ�=����>���=-�3,2�ۯ�9�����a����g|Vc�?��|�Qe���>o�Xg��L��،u��)��Wܩ'k�s�yp*�r�ZgE��q��󌵇��v��~�ؖ3�=vN�<;�Z�cl"9��9�`ϰ��EԆo��c��"1���'��!;�G*WV�!|�Ǝ��'������1��s�ܪ��8|���������M٪ [V��3��S���>G��y|��88�۫s@���sx�=2�kol䤆��s�c���=�;��7���O=�D�Tc�\��{$�R�I0�9s�sAлK��-��'\��=*7Ѷ�'�m��:��qC���]�@��Fl,I�w^̧g�BU��j-�ƬP�	4�fj��P=�k��m$��U���G��fk|lL^3�V{�4=�-E]d�L�_^���M���5J�ut��M���:����N��)����/j�t���=83�7�+qcYP�;������pUx9�R��=uL�@���<�����U�
j~��S�Ixo'6Uێ��q4��SGŷ��j�8PHj���� �� ��d�9��i���+�M|9�K��[��/���g������@,l�.pÔ �`�M�$�dM�à0�C�/�&G���wh��k�⩖�'�i�֩�A��=�<!1�����a�S�Dk�	�
���@���{3ŋ��f�<� �p�T���Pk	��]~b����T9�[S��� �/	%gn�qYoY�#��|t~y��[vH~��s�\��M,�����P��@8��'�OՋoiw��J �sI�^~�*<8���C#��EU e[ro��N�$#����I>�d�T >-��kC'b�O7fǁ,i�� !�c{5jJU%𓮠6�=K�Q�}�×d)g죫9��&	6 �C�	�8�k��xL�&>����MWז�\B�����O[R/ ׃]�hx�V�Q�ӼX��[��`%�mı�H4˔�!Kqr�DT����	8&��0*����uM�/.�N�@eo����]�V
�0�^RK*yX�l
D��tO�O�1��	Б6 ?��]m��k��E�yc��Q.K�����3w�\L-S.���(�`�0�B��2ea��N:�S�I�㴽z��
�9-���qhPmB�p���٪��_�w��3h} S��
������-epE�^�W���'��p������N)��C'm��7�9%#�to�,l��x�9�Q�[*��r(8�y�|��^j��-�(N#n=F��Z���UBH3�=���'�h�F��)A	M0����i�� �@���WlPSF�ˤ�h�M������Ot'x����UYa]�c�I�QS㖝�:��FU�Q��3�ӎw��!�U��~ʒvLe+$�+��#UM
~�k�@U�2�C���~��v����c����U�9�o&� (�mZ_�*K^ҵ����B*�x�N��P�2���r�e<B{Q�G$y��<��2h>�ɡķ�
 ��U�L�@r�i�}pы�t}����3�}e)L��>�
�J��G�u�,�L�DʩqLA7�<sPH�����	��?�Sǐ���-��Ɍ9h�|��T	5�!��>�e�M��iҍ��f����5�)�f��(��/A�Ez�c_!
��Pso��h	�(]����h�@�h���#^����`��P�zؑ�^5ɴ�I����L5�0M�M�(���?��=����tK}�-Q�8��`�~�#i�k���3n�n�6�G�~t4mh�ْS�����HT��[:�rR�s��'�z�)"��|�i�	�����F���������ER8�
����[��� �z�MH0Q������.-
��Aދ��`�j�`�3L
ӳ���)��KjQV/�2hfj����i�ޡZI/�50Q�J��q�fj��X2:����њ�����zi�b�=Y($tZ�B"�8T��-!:n˽m�L�Nd1S�Z���;�
r������)1���z��FxE����ЌJh\bC�w���^|y�:0dk|�t�r}��O�?�i}l6���]������Z��̶)<���'�'��ۮg�nZh��o�ꀂ�Z�)�Ruű�?BO�
z�ZN�L���2u��`#���.O96Q�޽ �$P��E'(�ޑ�XJ+�h�Z#�K};���R���ť�4��l�O>��e�^*
D1uM��iJ�h���5����215���a��^&"{������=�").��w��,���PBph	��`���.݂hQ��3�tI14�{v�{PA��?�
=\�5[j�.��Y5��-�th�&4CM_�D' �k=B��g�O����B�h#[������&̇�(�ċw�KF�`\Օ��%x��I|��Ľ�fu�[2K�ù��t�F/�������ؽ�C�3�k�Gb�{�M��	���n-��2HR�(KTW�Y�8�Z��-��x�cI���sx/���5A���z��k|j���J���*��ɢ!\h����]��T�0���(����&�<GD�Cjk2D+�R�G��������f�J���fR�*u���;LD?e����8��:(j^����`���M�d�/Ḯ�fJ�=K}H���e��Z��S��K��I����}��z��	�?t�	��G������]W��ȥ��K��ZU����Q��W��^(`r"�����>��z�n���K��VQ.�:�QN3�tD#�A�-�ޓ�i&��@W��UMh��HRr|��y��M�\4Z��"چ�\��V/q^_\B�^���|.S� ��ѷ:�X��u�ޣ��n��g��v�Y�dC�I���0˥B�X��*\����������s��� �jL      �   �  x�mV[�!�֜"���%�?G�lU[�_�m$!�9�|�x��k�?�����^�=�����{�^7�SGރ�w���S��q����u��I���^/Գ�W}��wįHs�I�	�?��h�K���IL�!��"�V�#��gQ$!y�]��ԉ!�_<��|�[�G���G�-���c���@[Q�g`��Um�\����g��s�������s1���7:���t��:�������5W3�u�Q�z{�Pk@�GW邮v��l���Z��S�j6`��C���G�ۄQ/�GMa�v��!`�L��y;�����-�G�[kKX�w�Z����]�>��BL]����p�����f���]œp�B?���}p�,�:LyVy��0e���u�ʉ�]��	A�췘��Ly�+B��C��i8�{a2�}!�LTF�=��D�� �A�}�����g	V��gM,����R��z��2,k�rı���#��څm_��[b叧�
���B�hl�O
�z�fUN$��#��y@>HCv/�k!I�i���y���B�f����Z!?�u;�@���7F	��ڧ&j���RT����P48�Q�ب�*P����{��l>�A�'R�n2�I�x�'��߯��uK�A      �   �  x�m���%)���b8+|��e�c��ӸZB�'���0:T?#?��������Я�>��n��v/�ÿ��Y���!mO��>?6�^��?�>1O|��V���ߓ�#�@�=��j�<]���� v�U�[��W��<��<�D�gw#����LH�$ς4�T�<�F7�g������g��	�l ��x�͚�l �|C%�PG��M7�y�
G� Vs#�X뀫6�5��W�^;�-��f��H�8t�SKX3P�V��
H!6a�=���`��P�q*���gA�<
��O��[����sJ����GW����#J����O�Ox3�S��x�@��О� hP���1��@_U�#Z�I�Ga\���Ú;�B�u�c"�y0^�4b�nS9���Кd3��R�z� i���9�u����������,$1�~&�p��|�kZ�@�^A�]���g²��P�bP��{�@Ek�XW�z���}-Vk��OM�lU�g�����N�`�u0�p4����c����L�8Zb�UU�0�x��0���>�¤y@���gkt	�\�.��k�˰����X~�<����+Obek��V�<|ˬ�E/$���H��6社ߏ�qU������[v�R     