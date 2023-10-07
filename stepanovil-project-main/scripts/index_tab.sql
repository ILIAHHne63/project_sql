CREATE INDEX IF NOT EXISTS price_idx
    ON public.products USING btree
    (price DESC NULLS FIRST)
    TABLESPACE pg_default;

CREATE INDEX IF NOT EXISTS stuff_full_name_idx
    ON public.stuff USING btree
    (full_name COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;

