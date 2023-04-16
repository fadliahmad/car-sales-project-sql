-- Table: public.bids

-- DROP TABLE IF EXISTS public.bids;

CREATE TABLE IF NOT EXISTS public.bids
(
    bid_id integer NOT NULL,
    bid_date date,
    bidder_user_id integer,
    ads_id integer,
    product_id integer,
    product_brand character(50) COLLATE pg_catalog."default",
    product_model character(50) COLLATE pg_catalog."default",
    product_body_type character(50) COLLATE pg_catalog."default",
    product_year integer,
    product_price integer,
    bid_price integer,
    bid_status character(20) COLLATE pg_catalog."default",
    is_active boolean,
    CONSTRAINT bids_pkey PRIMARY KEY (bid_id),
    CONSTRAINT bids_ads_idfkeys FOREIGN KEY (ads_id)
        REFERENCES public.advertisement (ads_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT bids_product_idfkeys FOREIGN KEY (product_id)
        REFERENCES public.products (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT bids_user_idfkeys FOREIGN KEY (bidder_user_id)
        REFERENCES public.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bids
    OWNER to postgres;
-- Index: fki_bids_ads_idfkeys

-- DROP INDEX IF EXISTS public.fki_bids_ads_idfkeys;

CREATE INDEX IF NOT EXISTS fki_bids_ads_idfkeys
    ON public.bids USING btree
    (ads_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_bids_user_idfkeys

-- DROP INDEX IF EXISTS public.fki_bids_user_idfkeys;

CREATE INDEX IF NOT EXISTS fki_bids_user_idfkeys
    ON public.bids USING btree
    (bidder_user_id ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: fki_p

-- DROP INDEX IF EXISTS public.fki_p;

CREATE INDEX IF NOT EXISTS fki_p
    ON public.bids USING btree
    (product_id ASC NULLS LAST)
    TABLESPACE pg_default;