delete from target where id in (select temp.id from (select id from target where update_at < UNIX_TIMESTAMP()-3600) temp);