-- Table: public.products

-- DROP TABLE IF EXISTS public.products;

CREATE TABLE IF NOT EXISTS public.products
(
    product_id integer NOT NULL,
    product_brand character(50) COLLATE pg_catalog."default",
    product_model character(100) COLLATE pg_catalog."default",
    product_body_type character(100) COLLATE pg_catalog."default",
    product_year integer,
    product_price integer,
    CONSTRAINT products_pkey PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.products
    OWNER to postgres;