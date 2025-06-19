namespace vtpoc.demo;

entity Books {
  key ID    : Integer;
      title : String;
      stock : Integer;
}

entity order_summary {
  key order_id      : String(20);
      order_date    : Date;
      customer_name : String(100);
  key product_name  : String(100);
      quantity      : Integer;
      unit_price    : Decimal(10, 2);
      total_amount  : Decimal(15, 2);
}

 @cds.persistence.exists
 entity mapping_customers {
 key customer_id : String(10);
  customer_name : String(100);
  email : String(100);
  country : String(50);
 }
  @cds.persistence.exists
 entity mapping_orders {
  key order_id : String(20);
	customer_id : String(10);
	order_date : Date;
	status : String(20);
 }
   @cds.persistence.exists
 entity mapping_order_items {
	key order_item_id : Integer;
	order_id : String(20);
	product_id : String(20);
	quantity : Integer
 }

  @cds.persistence.exists
 entity mapping_products {
	key product_id : String(10);
	product_name : String(100);
	unit_price : Decimal(10, 2);
	category : String(50);
 }

view mapping_cds_order_summary as select from mapping_orders as o
  inner join mapping_customers as c on o.customer_id = c.customer_id
  inner join mapping_order_items as i on o.order_id = i.order_id
  inner join mapping_products as p on i.product_id = p.product_id
{
  key o.order_id         as order_id,
      o.order_date       as order_date,
      c.customer_name    as customer_name,
      p.product_name     as product_name,
      i.quantity         as quantity,
      p.unit_price       as unit_price,
      i.quantity * p.unit_price as total_amount : Decimal(15, 2)
}


entity ShippingDetails {
  key shippingId     : String(20);
      order       : Association to mapping_orders;
      shippingDate   : Date;
      shippingMethod : String(50);
      shippingStatus : String(50);
}

view mapping_cds_order_shipping_summary as SELECT 
FROM
    mapping_orders as o
JOIN
    mapping_customers as c ON o.customer_id = c.customer_id
JOIN
    mapping_order_items as i ON o.order_id = i.order_id
JOIN
    mapping_products as  p ON i.product_id = p.product_id
LEFT JOIN
    ShippingDetails as s ON o.order_id = s.order.order_id
{
  key  o.order_id,
    c.customer_name,
    o.order_date,
    p.product_name,
    i.quantity,
    p.unit_price,
    i.quantity * p.unit_price as total_amount : Decimal(15, 2),
    s.shippingDate,
    s.shippingMethod,
    s.shippingStatus
}


entity Payments {
  key paymentId     : String(20);
      orderId        : String(20);      // Foreign key to Orders
      paymentDate    : Date;
      amount         : Decimal(15,2);
      paymentMethod  : String(50);
      paymentStatus  : String(50);
}