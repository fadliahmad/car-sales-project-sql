PGDMP     9    ;                {            sql_project_car_sales    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24923    sql_project_car_sales    DATABASE     �   CREATE DATABASE sql_project_car_sales WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 %   DROP DATABASE sql_project_car_sales;
                postgres    false            �            1259    24955    cities    TABLE     �   CREATE TABLE public.cities (
    city_id integer NOT NULL,
    city_name character(100),
    latitude real,
    longitude real
);
    DROP TABLE public.cities;
       public         heap    postgres    false                       0    24955    cities 
   TABLE DATA           I   COPY public.cities (city_id, city_name, latitude, longitude) FROM stdin;
    public          postgres    false    215   �       q           2606    24959    cities cities_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (city_id);
 <   ALTER TABLE ONLY public.cities DROP CONSTRAINT cities_pkey;
       public            postgres    false    215                �  x����n�V���S�"��e�`�I�E�n�kA�X��� o_�G�u2�No���$2�R��}ڍ/�\w���elӘ��c=v�v����V>��F
WY�e�7Zz����i�5� ?�6����gs�*�U���A�(	oK���4k�3^Ii��xc�G�,��k:�:�.�wi��tU��<�W�U������>�]#T-�����<Ш���J)d���!u�:'v��Z�3_I-�F�Y>w��c�0ѣ4�P�}�D�v�����A���R>
G�(I�-�O��p<�6���u�k�[=��E�˴��+s�p�X�k�찜,cw�����lB���XD>Ի�Nt/���٭3��b����S[w�q��F�f�4T!�ʆ�xY��S�O�X`6���RTBkᐾ�r�u�!��ۊNb��DwZN�S�.u��%��.j'�ҽU��e�{��h�����g�����.w��O��������8�����G�s룧q��b��*��e}'C��qӓk���3��E�Ɖ�@\�?���2��+��9>/|������ϛ��/�B��e����?�asU�,2���O}J�y�A(B{hk����&�G��ǋƟ_U��'�n�ɶ�b1�thӿ酉�g�E䪲�����`��4�y��F��rv�R~�aq�Qx�	�! ��zy��f�}���Fs;V.H���5���ǨB��T�[g��Y�~��{��k����W_�����w룧BO)�@fI�ɷ��-�YB�Kڇ!p�=E���[߂�y�V� �A���^,'�-�`�Pʥt��p�ۻ���O���;��,6�b5A�5���݃�~�G�{�.V����>a(��I)��A���<[������ �#���P�L� �D�-���Ĥ�b=i{�S�v2��7f;v�bC��>1��ٴJe��M���=�3��#��Z��sjr2���ry�R1���,*Z-������<��Pm8��<���,���S����;)�֝��rU�>�]���+�/rW�6�|pq�"Mud��&�A�)Sx�n�ڵ���it!�]	�V��E�oO!(4�3^A�#�pr���=ǽ5�N���#�����B0jZ����BnO�3{��`m��5U����L�u�|��*���oO|�uBd`�7����y�[j2n�q�����v>��%.�`ePd��B=_������;_�����_��1��Ю蟪͔��0B�ۇ�o�^Ⱦ+����ҁ���w#9�L��c�s2/�ZC�7�_N�/c�S���_����pp<Y�p�z3����捱�im�^����]�~��?�n_7=�������R��e��w�v�:��9�U�*%_*��fi:��>@��,}�6�g�"���P�n�_�W���S�ӡ��?7�"���2c�A�<�c�~���T777���k�     