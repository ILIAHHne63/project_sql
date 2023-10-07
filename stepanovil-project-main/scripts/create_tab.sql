CREATE TABLE IF NOT EXISTS public.equipments
(
    id integer NOT NULL,
    qr_code character varying(255) COLLATE pg_catalog."default",
    full_name character varying(255) COLLATE pg_catalog."default",
    manufacturer character varying(255) COLLATE pg_catalog."default",
    material character varying(255) COLLATE pg_catalog."default",
    electricity_or_not boolean,
    expiration_date date,
    warranty_card date,
    CONSTRAINT equipments_pkey PRIMARY KEY (id)
)

CREATE TABLE IF NOT EXISTS public.grocery_departments
(
    id integer NOT NULL,
    name_department character varying(255) COLLATE pg_catalog."default",
    place character varying(255) COLLATE pg_catalog."default",
    storage_temperature character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT grocery_departments_pkey PRIMARY KEY (id),
    CONSTRAINT fk_products FOREIGN KEY (id)
        REFERENCES public.products (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.products
(
    id integer NOT NULL,
    qr_code character varying(255) COLLATE pg_catalog."default",
    full_name character varying(255) COLLATE pg_catalog."default",
    state_of_aggregation character varying(255) COLLATE pg_catalog."default",
    shelf_and_row character varying(255) COLLATE pg_catalog."default",
    price double precision,
    expiration_date date,
    manufacturer character varying(255) COLLATE pg_catalog."default",
    purchase_price double precision,
    date_of_delivery_to_shop date,
    compound_amount integer,
    CONSTRAINT products_pkey PRIMARY KEY (id)
)
CREATE TABLE IF NOT EXISTS public.shop
(
    id integer NOT NULL,
    street character varying(255) COLLATE pg_catalog."default",
    street_number integer,
    full_name character varying(255) COLLATE pg_catalog."default",
    stuff_id integer,
    grocery_departments_id integer,
    equipment_id integer,
    CONSTRAINT shop_pkey PRIMARY KEY (id),
    CONSTRAINT fk_equipment FOREIGN KEY (equipment_id)
        REFERENCES public.equipments (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_grocery_departments FOREIGN KEY (grocery_departments_id)
        REFERENCES public.grocery_departments (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_stuff FOREIGN KEY (stuff_id)
        REFERENCES public.stuff (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

CREATE TABLE IF NOT EXISTS public.stuff
(
    id integer NOT NULL,
    passport_number integer,
    full_name character varying(255) COLLATE pg_catalog."default",
    position_held character varying(255) COLLATE pg_catalog."default",
    phone_number character varying(255) COLLATE pg_catalog."default",
    salary double precision,
    CONSTRAINT stuff_pkey PRIMARY KEY (id)
)



