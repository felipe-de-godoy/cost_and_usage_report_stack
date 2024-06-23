SELECT
  line_item_usage_account_id,
  product_servicecode,
  product_product_name,
  SUM(line_item_blended_cost) as cost
FROM your_cur_table
GROUP BY line_item_usage_account_id, product_servicecode, product_product_name
ORDER BY cost DESC;