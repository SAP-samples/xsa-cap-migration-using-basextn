using vtpoc.demo as vtdemo from '../db/schema';
using TEST_VT_TABLE_DEMO_CDS from '../db/vtdemo';
service VtService {
    @readonly
    entity customers as projection on vtdemo.mapping_customers;
    @readonly
    entity products as projection on vtdemo.mapping_products;
    @readonly
    entity orders as projection on vtdemo.mapping_orders;
    @readonly
    entity order_items as projection on vtdemo.mapping_order_items;
    @readonly
    entity ShippingDetails as projection on vtdemo.ShippingDetails;
    @readonly
    entity order_summary as projection on vtdemo.order_summary;
    @readonly
    entity shipping_summary as projection on vtdemo.mapping_cds_order_shipping_summary;
    @readonly
    entity mapping_cds_order_summary as projection on vtdemo.mapping_cds_order_summary;

    entity OrderPaymentSummary as select from vtdemo.mapping_orders as o
  left outer join vtdemo.Payments as p on o.order_id = p.orderId
{
  key o.order_id      as orderId,
      o.order_date     as orderDate,
      o.customer_id    as customerId,
      p.paymentId     as paymentId,
      p.paymentDate   as paymentDate,
      p.amount        as amount,
      p.paymentMethod as paymentMethod,
      p.paymentStatus as paymentStatus
}

@readonly entity DEMO_VT_TABLE_NAME as projection on TEST_VT_TABLE_DEMO_CDS;
}