select
  id as order_item_id,
  order_id,
  product_id,
  QUATITY as QUANTITY,
  unit_price,
  (QUATITY * unit_price) as total_price
from {{ source('raw_data', 'order_items') }}