-- Table: public.advertisement

-- DROP TABLE IF EXISTS public.advertisement;

CREATE TABLE IF NOT EXISTS public.advertisement
(
    ads_id integer NOT NULL,
    created_date date,
    user_id integer,
    first_name character(50) COLLATE pg_catalog."default",
    last_name character(100) COLLATE pg_catalog."default",
    phone_number character(20) COLLATE pg_catalog."default",
    city_id integer,
    city_name character(100) COLLATE pg_catalog."default",
    product_id integer,
    product_brand character(100) COLLATE pg_catalog."default",
    product_model character(50) COLLATE pg_catalog."default",
    product_body_type character(50) COLLATE pg_catalog."default",
    product_year integer,
    product_price integer,
    is_active boolean,
    CONSTRAINT advertisement_pkey PRIMARY KEY (ads_id),
    CONSTRAINT ads_city_idfkeys FOREIGN KEY (city_id)
        REFERENCES public.cities (city_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ads_product_idfkeys FOREIGN KEY (product_id)
        REFERENCES public.products (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT ads_user_idfkeys FOREIGN KEY (user_id)
        REFERENCES public.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.advertisement
    OWNER to postgres;
-- Index: fki_ads_city_idfkeys

-- DROP INDEX IF EXISTS public.fki_ads_city_idfkeys;

CREATE INDEX IF NOT EXISTS fki_ads_city_idfkeys
    ON public.advertisement USING btree
    (city_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_ads_user_idfkeys

-- DROP INDEX IF EXISTS public.fki_ads_user_idfkeys;

CREATE INDEX IF NOT EXISTS fki_ads_user_idfkeys
    ON public.advertisement USING btree
    (user_id ASC NULLS LAST)
    TABLESPACE pg_default;