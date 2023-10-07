 SELECT equipments.full_name,
    concat('****', "substring"(equipments.qr_code::text, 5, 8), '****') AS qr_code
   FROM equipments;

 SELECT DISTINCT grocery_departments.name_department,
    grocery_departments.storage_temperature,
    concat('*') AS masked_place
   FROM grocery_departments;

 SELECT stuff.full_name,
    stuff.position_held
   FROM stuff;
