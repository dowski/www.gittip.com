-- http://stackoverflow.com/questions/8092086/create-postgresql-role-user-if-it-doesnt-exist
DO
$body$
BEGIN
   IF NOT EXISTS (
      SELECT *
      FROM   pg_catalog.pg_user
      WHERE  username = 'gittip') THEN

      CREATE ROLE vagrant LOGIN PASSWORD 'gittip';
   END IF;
END
$body$
