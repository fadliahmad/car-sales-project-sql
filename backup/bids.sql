PGDMP         ;                {            sql_project_car_sales    15.2    15.2     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24923    sql_project_car_sales    DATABASE     �   CREATE DATABASE sql_project_car_sales WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 %   DROP DATABASE sql_project_car_sales;
                postgres    false            �            1259    25005    bids    TABLE     }  CREATE TABLE public.bids (
    bid_id integer NOT NULL,
    bid_date date,
    bidder_user_id integer,
    ads_id integer,
    product_id integer,
    product_brand character(50),
    product_model character(50),
    product_body_type character(50),
    product_year integer,
    product_price integer,
    bid_price integer,
    bid_status character(20),
    is_active boolean
);
    DROP TABLE public.bids;
       public         heap    postgres    false                      0    25005    bids 
   TABLE DATA           �   COPY public.bids (bid_id, bid_date, bidder_user_id, ads_id, product_id, product_brand, product_model, product_body_type, product_year, product_price, bid_price, bid_status, is_active) FROM stdin;
    public          postgres    false    218          q           2606    25009    bids bids_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_pkey PRIMARY KEY (bid_id);
 8   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_pkey;
       public            postgres    false    218            r           1259    25021    fki_bids_ads_idfkeys    INDEX     G   CREATE INDEX fki_bids_ads_idfkeys ON public.bids USING btree (ads_id);
 (   DROP INDEX public.fki_bids_ads_idfkeys;
       public            postgres    false    218            s           1259    25015    fki_bids_user_idfkeys    INDEX     P   CREATE INDEX fki_bids_user_idfkeys ON public.bids USING btree (bidder_user_id);
 )   DROP INDEX public.fki_bids_user_idfkeys;
       public            postgres    false    218            t           1259    25033    fki_p    INDEX     <   CREATE INDEX fki_p ON public.bids USING btree (product_id);
    DROP INDEX public.fki_p;
       public            postgres    false    218            u           2606    25016    bids bids_ads_idfkeys    FK CONSTRAINT        ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_ads_idfkeys FOREIGN KEY (ads_id) REFERENCES public.advertisement(ads_id);
 ?   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_ads_idfkeys;
       public          postgres    false    218            v           2606    25028    bids bids_product_idfkeys    FK CONSTRAINT     �   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_product_idfkeys FOREIGN KEY (product_id) REFERENCES public.products(product_id);
 C   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_product_idfkeys;
       public          postgres    false    218            w           2606    25010    bids bids_user_idfkeys    FK CONSTRAINT     |   ALTER TABLE ONLY public.bids
    ADD CONSTRAINT bids_user_idfkeys FOREIGN KEY (bidder_user_id) REFERENCES public.users(id);
 @   ALTER TABLE ONLY public.bids DROP CONSTRAINT bids_user_idfkeys;
       public          postgres    false    218                  x�ݝm�l�q�?o�
��	��E�G�L �B��؃}��{�}j�O�]�p�O����`gnpg�UK��Uuk��oJ����l:�_��o���?��O��O?|�ݧ�������[�'�Զ����m^����~����/��v���m����������������O��ӟ>���?�է~������?���rAk�FTk��lr��m�@�~��w�}��o?��O����Ut��>�t^�M:�t�cc�~=�/?���߼�'������{���F7w�Zo�Y������t�w��7�|����m��v���_����ܘ����6��D믌6n��Z�pks��O���?���ӟ?��o���.���@ �\�!$�3����v���n/]�$�alx����^#Jn�O-Rb	����/���2���R�d[�������;�n{�6䍮k�����l��/?��Qa��O����`�q>\e��*�ZƳ�r�#*�������y����GL�tװ�ͫ��]?��AF��nA=>���zA��S���Ssf�#6��%��7�>�_���D���|���%�bۘ��{��cw^�B�?�櫙O�Ok�>;߾?��Y������%�2�]�??����A7��i�u�3���� ���A4�|q2�AY?9�\��5�E>�|>���A�c�M�SG�X�9޾:��v��/(^�o��y�B��Jt>7����;秔̧||5�E,����{��zw�����%�������b+������ۃO�������]4�������ҏ������ɝ���т���/qo��Q����%"�]�ڞ��_�|�H���gz��Z>�}�/�ߌ�22�:���z�ϱ�gN���m��WeΛxZN����%�"�W>������>���ש3dS��̌0;��-�u��_ݬQm�$^�氙Pi3��7�g����V?��������*Ӿ��O�S���v��wԗ��x:��,I�f|}ɗ'μ�؝G���\[�|A���3�˻�5����e�*t|����e��3K���f�حl|I���ϕ�]ڒz���H��X�t]���"��w�b3�'��/r�y�|(|2u�x�xblx-�)�u<u\���oL���l�E*V�7�"]�L׍��X ��?`��u�x!�������P�T�����*�3�ş��JG����/#�'����>�'~J�u�w>�w���g/�g��$�E�����g���X��NGt=�_D�����7��k������-���2���q�e��K�ŷ�8}�B�{���g���S�:�>2��E
Րϼ=#���D*�f��73�D�8U%�(������ ��=[����I�,cR9e�v��آL^C2�4�J��FR/��٘l%�e��j�B�g^��:��g�ثSQP��|q���2d����8�LO�����t��w#ٗ����E�C��u+�K�>3���o~r'8���x̴�Իs "컳�N-͒�2� ���_�f�ثsR�8̖�������pi�kB�Ρ7�~��.�Aһ2U�M�|�]kiT&{�/u��Z�������2�bͫx��9agNT�2ǁ�_�D|�o�僫Y�&q���A_3�daӴ�֟�w;����&Q]�]����-�]"\�f�
�C|�=H�v�R�1�V�!�[��2�A�S���3��V�VKR1ˠ����'EX�8b�:�-���	��S=B�ZN�(T��&%����O��|����F�^Zj�h8K+�Sg����_Bj�FU�V�!f�S�CJ��)j�L(XC�z�Z{&t��QY��:2��)���L���	*�~�"�h�&��SU�V2aC��dəV3�-�Ie2U[;!�"��"��R��զQ��B�h�U�1)ݼD�\�ʵ����I�`�G�-�� �����qӹ��RN�8;!b͈�!b;mT�?�!&u�/�8�"&u�7]n1�+=,vB����r���\q�K!T�UzFl>GF��K6���*���&u���.��T�\��Q�G��2������`���!�n,��o+U�EUˈ~)
c�c���E���eY\�7-��ʍ+U�SՑupW��U\rι*2�dD_��T���m�� �0eP��2�,�.��j����ȸ��VY�8M�G�k��AĤmds�yU.;�j�Mm0�~�}�n�;a�w��!*�+�gs�qڧH�W&c�j3
��&�'a��"OU�܍��L�˨lP��{˄� n��㸺dBCz#R�v����Q6&��vZ@h��dv\�O� V3ވV0��y���g~M|���GFl�d��ɴI��A�*J�^�{��^�I���۞_{�K�����&���(G�������aoy��U���_�c��.Qq���~ߓ�A)�I�Q�Έq����?E���8�.�gBG\Wem�Q�����Q�����2�8�"N��mT�Q}fD�E�<�a�X6q$e/݊-��<3jF4��J�j��-�\m�C2��Xb�>sTD��O��}zH������ʓ�@X1����gB�չIe�Yw�(��򍩹mw��S<��r�5� l��c��zh�^��7Eu�2��S���=��J��p5����n��p bF*�ɥ�vka]S�P���ԥ0����#H��hvN�I���8|�
�Uq&m�7C�������92���۔��dΌ��3C�1u��R2�:Lͩ�����*��J7c3\�lPك�"'D\mRy��r��D����Di�V,#6�9�j�j�O�h=q�ѣ���)j�k�h+##*�R�T5����Y��hwkɈ��L7�7�VkF\����&�\l�P7�O@?j��z0[��(�����ߛ�ު�VqY�L���V��A����T5ժgDE�I�L�}�&q�H�w	G^C������̄�$#l%�R��d��#�W(�Z̀���e@C�'����D�
�it|�d�I���q��M6QGM�݇m��n!(#Q�v�ᅈ)�D��m�^|���(>�i�m��aD���4kc��v��E��=a=���*�Q�}�/�pZR�
���BaD�1�Z|�J��v�a���&ό&�	}V>�C���[W�it��U�1�$��Lk~�qC4L��!l0����A���Z3�;>E��z�l�<3}=�P�#�dD�@��z���QqY4�wD��ڨd��	A!Ӄ���*�؍q�����z��<!��!ZR7���*
W��Ռhp�Bc�u��n�5�=Dɫ�������R�c4�L(�%p�B~��O��'+�7ψ�&��p��g��'W���Ӂ�'�p�*X7}Si���0ܼ�;��I�y�6���������-#n)�MԻ�<i�ap����ڨN���2"2�ҹ����1�[��j�Oߢ!hPyK5�E�A�-���6�j���߈��Z/)�e�F��z͈>�,��i�[FT<����!mPM4�o�Ro]3"������Q�[Ftj���i�-^Bڌ�U��{F4T:�C�4�ȏG�BUI����GɄn=Q����O0�0�qi#���% ���fHD%#`�4��Q�fҵa�Фa�*�I��NYST�m��tB�82"������_:��*W�,Q#B*<Q���f=��L<~3���C�H����U,5%#bQ�5#V4��!ZF\��L��3���lU�<�*>��8�y�B�C�H5��E"�o�?A�>Z�����{��n$^�ͣRJF��8����4}��z[��nA�m��7*�	�-���d�-���݁x�?� T�ܩ�Ď�
p(�fT)~��/�k�:U߰���bH�js�݀x!�F��TE��}��/��;?fuII�#�ڪ#f� ��5NS��fJ�qU�	נ:�I��k"N��(y}���>�d��7Ha��^�_��z~�z���T�����is�d4��*��~(�S�!"��^鬹{����eESQ���C��0O�H�=�q�X���	�`6�^�ՌXW�BU}*�P6h�Ǎߩ���ɉ�ި�j��6��	�꫑f�R
�   )��oi~ZE���'�)*��m"^�"��iI���P��+���Q+A<��&DJFD�C��̋��[�H=/b�'�,_�ڈ�B��h�!����hA�s�ь�)0�*ˈ��T�-2=�gDG�����/��A{Ti��L�������w��I�FְH��sY���i3�^�4��m��A�ƯI��g(p���M�O�
ߙ��E���k�y��{����i�L�]Dm#ˊ�b��T�����}�T�n�q����عR���BTؠ�;��,l�#^�qA	D�7�ݎ��2��21J��Ds�#^���8+U)��F�WmR���ZRv;⾪m^�ޙo*�q����%R��ۤ
��]��{��ݎx���|q*����/�h�F��/�č�%q�� Lz�fF�5a�S�1x�6csm��ߞ~�=HJ<i�X@]3'�Dl�+�V*�ϚG�Q�%�Je)~��N���g�s˄��j����Y��4��#L�g>\��r��&~(�58�DZ⇞Y�t8e:�
�r� ]JU��9����@�L����g0��Z?�\�#�[���+=�L���y�UtˈU�8q�n�=陸�j_޵Ti��O�6�1?SIf��|�祪���8�2����$]3V��U�n2]��Zm�Ȫ�Gˈ���F֡8m�b�D��"�м��1۔�	sX^�:Q�O��=<#"9eBք9��S�{�	W�8�M�p�xfS5a��]�Oɚ0gɈqD�*�I����q��̖eb��*3��LɈ�g<s��8��������I��a���z���n���{����?����J��a3]�g7}C�p,���2gF��Q��|���"���1U�č�zF�ۢru*hi�#`�3�:��$q3��!CQ�=!*��AU���P7@ u����F�gD���o�F�h�-C���S�e��Al\m�Z��[�C���x��C��Zu#u��5S�Gp�}�f,4�T3�b�m���|D�0g*��݅xVag*��݅x^�kes�r%�݅x!zDw.W"�m�/��"�+��>��R#�U�r%�݇x��C]ݹ\�t�!�(�|E�~q7"^�XC�9��xIw#ⅈ�Ew.�%ݍ���hq�2^�݈x^���O�����	�b�2^�f�޹���yF���n���6���xI�ȑژXGd����m`R��9CJFD��w*�%��	k��6�Tާ�N��1;��xI%i|�����PU4#��U\�K*�l&��J�6�L�}��+ѽ�7��k�$��\�TFF��\�n*3#����+�j�6hm"�+�j͈u�ʕH��1��.W"UɈأ>�\�T��Yu:�n�\�T�D�%�T�D��	��I�J��ϻ����\�T�i1�|����
��cr%RK�F/!�'�+�ڡg����\��Z4ș��J�&�E��dڤzZø����J�f����+�ڡf0����.aτר^�|��9��}�"r�.�͌X�"Y"�KFt�*R�.���"^p�.�'Y#��ݷ.�%uɈp@��wI]O�=��O���y,��	�evT=0=ϸ�Qca�K䄢�3b�S�ب�P���@�?v�=sT|�YJ=I�K�IG���+Oz9���0�L(�S{�2���2":{}-�{F}��8-�\�'a
��%�Uuˈ����v?#�oT.vړ�	X܅�����]�O�\�ό(q����NG9�⌨ظ\�tԌ�T r���H��KبT.v:$:^w���͈Rj r���H��5q�.;I��G.\.v:zF�h�.\.v:FF�+c2�q���Ǎ���͒��mQ�ھf͈�dڅ��n��������B\��6х���jCĶ�#.���]m��h��h�6��U�ߢ��]m��=�l�͗�A�k�r�!"<c�p�\m�/���Du�E+崈��7�*w����!���e�`W�ED�ѕ�ӊ�'��*e��6�|!.��Tb+vB�kT��Q�ߊg�GMw��0+=#6C��T���Ȉ��{�n>5b�<�ʷ���|�2O�l�\�aVKF�d��U�jR7�j��P�AT�b�eĊw~pUY��*���ƪf�T�*z��č�>ŧH�|j5i�؞��1�r�V{F��<�T�V���Dwg^E���D��=�ZɈ���(Q!*��V�F�Mh�*�h�eDǷ8�*MlMN�H��˶����0��kI�D��8Q��:����[�LX�Ə�2MkI܌C�{���.��ȈQ��IU�g-��˨��"�l��k�Y��l�fDL��1�e��!�ܧP�M���5�<�TM�&�	�Sxh��XF4<-�@��.��3":�:|���Lm�.0$砲�6��=t8S5���T,�(\~�%#�,u��U����؀�^���N���mBx�fs�k����T2�y	D�	���k\�l^�z�>�Alj�}�A-���n�7S?-�a;���iπR8��M��	Idإ��.�tfB��(N��6K��h"��JUHl5Ɩ���VcI� cGͪ*zv�^�L2�.D"�s3�|��,Ea
�Ic'B|L�y�k�c�S��g���d{n�OK�ؤd�K�M����Ues���fF "N��n^2 �e�F5�żfB5���[&l=ֿ	W�ۓ��/���"jF��T����2"��h\�(�L(���"��q⇰�%����GF�0�����N��	1�t��dĶ�E6ī�iK���h�d\݈����F�"|5#B�K�a�K�y�ڦ\ƒv5#� �b����}5#~��߳�7���*���z�_�E��(\o�W7��b�*�l��_Q�?ר3����9���{�F�.�9�*/5$�^B��-̈́R$��%�bD,ߔ
�Ūإ�����C�B~�k��G^K/&�W>˚c2��],���M�^�7�����)�?+�
^쇯���~�F!��ċ������Mz1� 
�P����z�
?1�������_s�U�N;-"�4�b��Τg �� �di��3b�'���E�O��Ԝ�Q�fc�����~�����     