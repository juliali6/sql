PGDMP                          z            Test    14.3    14.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16649    Test    DATABASE     c   CREATE DATABASE "Test" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Test";
                postgres    false            �            1259    16679    games    TABLE     |   CREATE TABLE public.games (
    id integer NOT NULL,
    game_id integer NOT NULL,
    name text NOT NULL,
    date text
);
    DROP TABLE public.games;
       public         heap    postgres    false            �            1259    16672    toys    TABLE     �   CREATE TABLE public.toys (
    id integer NOT NULL,
    toy_id integer NOT NULL,
    name text NOT NULL,
    status text NOT NULL,
    status_update text
);
    DROP TABLE public.toys;
       public         heap    postgres    false            �            1259    16686 
   toys_games    TABLE     �   CREATE TABLE public.toys_games (
    id integer NOT NULL,
    game_id integer NOT NULL,
    toy_id integer NOT NULL,
    note text
);
    DROP TABLE public.toys_games;
       public         heap    postgres    false            �          0    16679    games 
   TABLE DATA           8   COPY public.games (id, game_id, name, date) FROM stdin;
    public          postgres    false    210   �       �          0    16672    toys 
   TABLE DATA           G   COPY public.toys (id, toy_id, name, status, status_update) FROM stdin;
    public          postgres    false    209   Z       �          0    16686 
   toys_games 
   TABLE DATA           ?   COPY public.toys_games (id, game_id, toy_id, note) FROM stdin;
    public          postgres    false    211   �       f           2606    16685    games games_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.games DROP CONSTRAINT games_pkey;
       public            postgres    false    210            h           2606    16692    toys_games toys_games_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.toys_games
    ADD CONSTRAINT toys_games_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.toys_games DROP CONSTRAINT toys_games_pkey;
       public            postgres    false    211            d           2606    16678    toys toys_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.toys
    ADD CONSTRAINT toys_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.toys DROP CONSTRAINT toys_pkey;
       public            postgres    false    209            i           2606    16693    toys_games toys_games_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.toys_games
    ADD CONSTRAINT toys_games_id_fkey FOREIGN KEY (id) REFERENCES public.toys(id) NOT VALID;
 G   ALTER TABLE ONLY public.toys_games DROP CONSTRAINT toys_games_id_fkey;
       public          postgres    false    211    209    3172            �   a   x�3�4���,(V��S(�HU�ONM��420��50�54�2�4���WJ��)�OL���(p�p�rI~Ai�nJjqIQ~ej\��W� �"Z      �   P   x�3�4�L�O,�L*��N��420��50�5�T�2�4�IMI�TpJM,R��φK(p�sQ~rI~Ai1�$Ho� ,��      �   4   x�3�4¼����Ԃ��".SNLJM,RHKM�)V(O��QP������ 2�a     