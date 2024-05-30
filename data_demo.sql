PGDMP                         |            nguyentv_demo    15.1    15.1 ,    +           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ,           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            -           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            .           1262    214552    nguyentv_demo    DATABASE     �   CREATE DATABASE nguyentv_demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Vietnamese_Vietnam.1258';
    DROP DATABASE nguyentv_demo;
                nguyentv    false            �            1259    214601    alembic_version    TABLE     X   CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);
 #   DROP TABLE public.alembic_version;
       public         heap    nguyentv    false            �            1259    214569    items    TABLE     }   CREATE TABLE public.items (
    id integer NOT NULL,
    name character varying(80),
    price real,
    store_id integer
);
    DROP TABLE public.items;
       public         heap    nguyentv    false            �            1259    214568    items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public          nguyentv    false    219            /           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
          public          nguyentv    false    218            �            1259    214581    product    TABLE     �   CREATE TABLE public.product (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    price double precision NOT NULL,
    description text,
    url_store character varying(255)
);
    DROP TABLE public.product;
       public         heap    nguyentv    false            �            1259    214580    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          nguyentv    false    221            0           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          nguyentv    false    220            �            1259    214590    product_image    TABLE     �   CREATE TABLE public.product_image (
    id integer NOT NULL,
    image_url character varying(255) NOT NULL,
    product_id integer NOT NULL
);
 !   DROP TABLE public.product_image;
       public         heap    nguyentv    false            �            1259    214589    product_image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.product_image_id_seq;
       public          nguyentv    false    223            1           0    0    product_image_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.product_image_id_seq OWNED BY public.product_image.id;
          public          nguyentv    false    222            �            1259    214555    stores    TABLE     X   CREATE TABLE public.stores (
    id integer NOT NULL,
    name character varying(80)
);
    DROP TABLE public.stores;
       public         heap    nguyentv    false            �            1259    214554    stores_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stores_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.stores_id_seq;
       public          nguyentv    false    215            2           0    0    stores_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.stores_id_seq OWNED BY public.stores.id;
          public          nguyentv    false    214            �            1259    214562    users    TABLE        CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(80),
    password character varying(80)
);
    DROP TABLE public.users;
       public         heap    nguyentv    false            �            1259    214561    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          nguyentv    false    217            3           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          nguyentv    false    216                       2604    214572    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public          nguyentv    false    218    219    219            �           2604    214584 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          nguyentv    false    221    220    221            �           2604    214593    product_image id    DEFAULT     t   ALTER TABLE ONLY public.product_image ALTER COLUMN id SET DEFAULT nextval('public.product_image_id_seq'::regclass);
 ?   ALTER TABLE public.product_image ALTER COLUMN id DROP DEFAULT;
       public          nguyentv    false    223    222    223            }           2604    214558 	   stores id    DEFAULT     f   ALTER TABLE ONLY public.stores ALTER COLUMN id SET DEFAULT nextval('public.stores_id_seq'::regclass);
 8   ALTER TABLE public.stores ALTER COLUMN id DROP DEFAULT;
       public          nguyentv    false    215    214    215            ~           2604    214565    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          nguyentv    false    217    216    217            (          0    214601    alembic_version 
   TABLE DATA           6   COPY public.alembic_version (version_num) FROM stdin;
    public          nguyentv    false    224   �-       #          0    214569    items 
   TABLE DATA           :   COPY public.items (id, name, price, store_id) FROM stdin;
    public          nguyentv    false    219   .       %          0    214581    product 
   TABLE DATA           J   COPY public.product (id, name, price, description, url_store) FROM stdin;
    public          nguyentv    false    221   ;.       '          0    214590    product_image 
   TABLE DATA           B   COPY public.product_image (id, image_url, product_id) FROM stdin;
    public          nguyentv    false    223   �3                 0    214555    stores 
   TABLE DATA           *   COPY public.stores (id, name) FROM stdin;
    public          nguyentv    false    215   p4       !          0    214562    users 
   TABLE DATA           7   COPY public.users (id, username, password) FROM stdin;
    public          nguyentv    false    217   �4       4           0    0    items_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.items_id_seq', 1, false);
          public          nguyentv    false    218            5           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 1, false);
          public          nguyentv    false    220            6           0    0    product_image_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.product_image_id_seq', 1, false);
          public          nguyentv    false    222            7           0    0    stores_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.stores_id_seq', 1, false);
          public          nguyentv    false    214            8           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 1, true);
          public          nguyentv    false    216            �           2606    214605 #   alembic_version alembic_version_pkc 
   CONSTRAINT     j   ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);
 M   ALTER TABLE ONLY public.alembic_version DROP CONSTRAINT alembic_version_pkc;
       public            nguyentv    false    224            �           2606    214574    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            nguyentv    false    219            �           2606    214595     product_image product_image_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_pkey;
       public            nguyentv    false    223            �           2606    214588    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            nguyentv    false    221            �           2606    214560    stores stores_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.stores
    ADD CONSTRAINT stores_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.stores DROP CONSTRAINT stores_pkey;
       public            nguyentv    false    215            �           2606    214567    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            nguyentv    false    217            �           2606    214575    items items_store_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_store_id_fkey FOREIGN KEY (store_id) REFERENCES public.stores(id);
 C   ALTER TABLE ONLY public.items DROP CONSTRAINT items_store_id_fkey;
       public          nguyentv    false    215    3203    219            �           2606    214596 +   product_image product_image_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_image
    ADD CONSTRAINT product_image_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(id);
 U   ALTER TABLE ONLY public.product_image DROP CONSTRAINT product_image_product_id_fkey;
       public          nguyentv    false    221    3209    223            (      x�35533LLMJIKM����� .�v      #      x������ � �      %   ?  x��V�N�V^��8K~B���J�&ah�B`6lL��M���j�bT�g����ՐA�Ѵ F�H��Uua�{�/�>BϹ��	�y��&�{��w�{��'%��}���y�K�D.C��~���|x{��O����:Զ<��ra�����7�Q���0M���-��ݟ��y>��?�@su-�7���u<�-����L���{u�X,
.ܷ���0�s�y�~u�Uwp�{�48�L���m��{7��C�Y;�=�9��<���q�	+~��h��L����=�����d(/t�PFÔ����MLh_`f4R�l9'H_�)F"�ֳ��Q��Ц� �j�<���Zc��~�:���'�}D���k��	E��/�����9ͽdZ���cāL�~s��_�h�t�/��nN�d�V*+uBzVbV�,l��l��V!�Z���v���f�F�W�M��>�rJ�r�A6�"�+L8*n_y�����a��}�Z#�-�8�1�=`���J�����9�@g��'�h29��G=Ղ}b�LBU������Q�E���{�N�N��;�a�m�B�{,x��z��yk��7v<��F�V����W���;� E�ߴ���e��S�=)|����}]Gj��C㏢D��;��@���F`D/DNef�ȕ��}���G3��l*S %���a�])UW�AY���`�e����+��Q��t�u_��^�G��S%�-�%~� v�ʺ���v��r��)Xf3���r`�a���a:�ZZ�R�_/>�S0=��?:Y�{%%�RbA�ev���8r)T������5*}&���,��Wӛ%�g���(�D�Yy�C����k��"�s��Yi�_ìDgA���\̄��j�>�[^��w�޺?��&�Y���J�������8�wfF;%�Tq�Y��׀���3����D����ސ��;�m�ؽ�L-�S���0MTH�R�;�����h��+�u$:�c[��c�i�S�g[�G[��ԑ�x�'����<, �	�n���l���a�:���w������]1�X��T@R���t�.qХ��Պ�Is���Yb_��Q��p�I���/g� ��� x6!��5��c�=�FRD��"��8�s��SH�)�OrHt���l��X>k�/����
�UԱ��6��~�^	>iE.���EsI�HY�6��Kh��-�Ӈ:cM3uȦ�q�M,�,��P�B9�,��P�B9�,��P���Y�+g9�(��P�B9�,��P�B9�,��P�B9�+g%���D^(g���r�Y(g���r�Y(g���rW�{�����d�      '   �   x���[��0��z/I�p${�2P�
-��������pd���m���4�e�ܞ����:-�G��x��=��L9��%��ISc�x�����$J�3���䠵D�Z?w|n�J��w���Z�*&�ậ���]DdO��������)��F������,�E�F߫�߫�o���M��ޔ?92�O��<:�ϙ��tD���ιwi�            x������ � �      !      x�3��K/�L�+)�3�b���� q��     