PGDMP     ;                     {            sql_project_car_sales    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24923    sql_project_car_sales    DATABASE     �   CREATE DATABASE sql_project_car_sales WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 %   DROP DATABASE sql_project_car_sales;
                postgres    false            �            1259    24960    products    TABLE     �   CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_brand character(50),
    product_model character(100),
    product_body_type character(100),
    product_year integer,
    product_price integer
);
    DROP TABLE public.products;
       public         heap    postgres    false                       0    24960    products 
   TABLE DATA           |   COPY public.products (product_id, product_brand, product_model, product_body_type, product_year, product_price) FROM stdin;
    public          postgres    false    216   >       q           2606    24964    products products_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    216                �  x���j1���O�H��p�B(J���7�c�%��]�����Fi���}���c����VYv;l��b�/-��t�eҺi�,?W|:n"��L�ϿN���7	�)����W��s�$�W?���p��� ��#�
�#�,�)�ڡy�I�|=���t����Y�C�4K�v4��3�l�!%{���>LxH^r����s�7��Y���
q�"���~Ze��&>·��Ѳ��8�'�%\�=��:����W$i�t��t0)�tP/�3L�P��+�|�&����� ��R����!$�-0����r}���6
p����h��\��O#R:��X�-��c?�!iɻݾ�TJ�E�QJ3A>�Y��S��>�����g�'�+P{�p�8@:��f��S�9v�6;8�����E�'o, 3i((��ͱ���x0(��IǤ��(�&>������0�r@�P�W<�^_���N�D�v�#gRK>�&�B�3�m�Tj앲����S���Z��8y�2p��o� �����;J"z���@^;�8R�X�2J�,��Z)��œ/4�fEIkCH��M�|���,e���8��
�o���&����+�f!+G��O.kX��J�ed4,�9~���7�\�.     