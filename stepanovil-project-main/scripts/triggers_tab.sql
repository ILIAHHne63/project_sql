BEGIN
  IF NEW.price < 0 THEN  SET MESSAGE_TEXT = "Price cannot be negative";
    END IF;
END;


BEGIN
    IF NEW.salary < 0 THEN
        SET error_message = 'Salary cannot be negative';
    END IF;
    IF error_message IS NOT NULL THEN
        SET MESSAGE_TEXT = error_message;
    END IF;
END;




