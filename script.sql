CREATE TABLE mth3902 (
id bigint NOT NULL,
start_date_epoch bigint,
create_user varchar(32),
CONSTRAINT mth3902_pk PRIMARY key(id)
);
PARTITION TABLE mth3902 ON COLUMN id;
--dr table mth3902;
INSERT INTO mth3902 (id, start_date_epoch, create_user) VALUES (1,1235437683, 'HAMZA');
INSERT INTO mth3902 (id, start_date_epoch, create_user) VALUES (2,8925036651, 'MENNAN');
SELECT * FROM mth3902 LIMIT 1;
--drop procedure proc_select_mth3902_by_id
CREATE PROCEDURE proc_select_mth3902_by_id
PARTITION ON TABLE mth3902 COLUMN id
AS
BEGIN
	SELECT start_date_epoch, create_user FROM mth3902 WHERE id=?;
END;