UPDATE public.equipments
	SET id=?, qr_code=?, full_name=?, manufacturer=?, material=?, electricity_or_not=?, expiration_date=?, warranty_card=?
	WHERE <condition>;

UPDATE public.products
	SET id=?, qr_code=?, full_name=?, state_of_aggregation=?, shelf_and_row=?, price=?, expiration_date=?, manufacturer=?, purchase_price=?, date_of_delivery_to_shop=?, compound_amount=?
	WHERE <condition>;
