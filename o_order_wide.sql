SELECT a.*,
       ifnull(b.first_order_send_id, 0) first_order_send_id,
       'o_order_wide' entity_table_name
FROM o_order a left join u_user b on a.uid = b.id AND a.regtype = 1
WHERE a.utime > :sql_last_value
ORDER BY a.utime ASC;