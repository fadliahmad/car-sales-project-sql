-- Table: public.users

-- DROP TABLE IF EXISTS public.users;

CREATE TABLE IF NOT EXISTS public.users
(
    id integer NOT NULL,
    first_name character(50) COLLATE pg_catalog."default",
    last_name character(50) COLLATE pg_catalog."default",
    email character(100) COLLATE pg_catalog."default",
    gender character(10) COLLATE pg_catalog."default",
    phone_number character(20) COLLATE pg_catalog."default",
    city_id integer,
    city_name character(100) COLLATE pg_catalog."default",
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT city_idfkey FOREIGN KEY (city_id)
        REFERENCES public.cities (city_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.users
    OWNER to postgres;
-- Index: fki_city_idfkey

-- DROP INDEX IF EXISTS public.fki_city_idfkey;

CREATE INDEX IF NOT EXISTS fki_city_idfkey
    ON public.users USING btree
    (city_id ASC NULLS LAST)
    TABLESPACE pg_default;