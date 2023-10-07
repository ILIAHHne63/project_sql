INSERT INTO public.equipments(
	id, qr_code, full_name, manufacturer, material, electricity_or_not, expiration_date, warranty_card)
	VALUES (?, ?, ?, ?, ?, ?, ?, ?);

INSERT INTO public.grocery_departments(
	id, name_department, place, storage_temperature)
	VALUES (?, ?, ?, ?);

INSERT INTO public.products(
	id, qr_code, full_name, state_of_aggregation, shelf_and_row, price, expiration_date, manufacturer, purchase_price, date_of_delivery_to_shop, compound_amount)
	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

INSERT INTO public.shop(
	id, street, street_number, full_name, stuff_id, grocery_departments_id, equipment_id)
	VALUES (?, ?, ?, ?, ?, ?, ?);

INSERT INTO public.stuff(
	id, passport_number, full_name, position_held, phone_number, salary)
	VALUES (?, ?, ?, ?, ?, ?);
