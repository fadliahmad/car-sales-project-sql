-- Table: public.cities

-- DROP TABLE IF EXISTS public.cities;

CREATE TABLE IF NOT EXISTS public.cities
(
    city_id integer NOT NULL,
    city_name character(100) COLLATE pg_catalog."default",
    latitude real,
    longitude real,
    CONSTRAINT cities_pkey PRIMARY KEY (city_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cities
    OWNER to postgres;