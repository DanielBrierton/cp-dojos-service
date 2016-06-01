DO $$
	BEGIN
		BEGIN
			ALTER TABLE cd_dojos ADD COLUMN locality character varying;
		EXCEPTION
			WHEN duplicate_column THEN RAISE NOTICE 'column locality already exists in cd_dojos.';
		END;
	END;
$$