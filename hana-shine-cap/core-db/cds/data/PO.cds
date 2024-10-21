using Core as EPM from './Core.cds';
using MD as MD from './MD.cds';


context PO {
  /**
 * Purchase Order Header Entity
 */
  entity Header {
        /**
 * Purchase Order ID
 */
    key PURCHASEORDERID : EPM.BusinessKey;
        ITEMS           : Association[ * ] to Item
                            on ITEMS.PURCHASEORDERID = PURCHASEORDERID;
        HISTORY         : MD.HistT;
        /**
 * Purchase Order Note ID
 */
        NOTEID          : EPM.BusinessKey null;
        PARTNER         : Association to MD.BusinessPartner;
        /**
 * Purchase Order Currency Code
 */
        CURRENCY        : EPM.CurrencyT;
        /**
 * Purchase Order Gross Amount
 */
        GROSSAMOUNT     : EPM.AmountT;
        /**
 * Purchase Order Net Amount
 */
        NETAMOUNT       : EPM.AmountT;
        /**
 * Purchase Order Tax Amount
 */
        TAXAMOUNT       : EPM.AmountT;
        /**
 * Purchase Order Lifecycle Status
 */
        LIFECYCLESTATUS : EPM.StatusT;
        /**
 * Purchase Order Approval Status
 */
        APPROVALSTATUS  : EPM.StatusT;
        /**
 * Purchase Order Confirmation Status
 */
        CONFIRMSTATUS   : EPM.StatusT;
        /**
 * Purchase Order Status
 */
        ORDERINGSTATUS  : EPM.StatusT;
        /**
 * Purchase Order Invoice Status
 */
        INVOICINGSTATUS : EPM.StatusT;
  };

  /**
 * Purchase Order Items entity
 */
  entity Item {
        /**
 * Purchase Order ID
 */
    key PURCHASEORDERID   : EPM.BusinessKey;
    key PURCHASEORDERITEM : EPM.BusinessKey;
        HEADER            : Association[1] to Header
                              on HEADER.PURCHASEORDERID = PURCHASEORDERID;
        PRODUCT           : Association to MD.Products;
        /**
 * Purchase Order Item Note ID
 */
        NOTEID            : EPM.BusinessKey null;
        /**
 * Purchase Order Item Currency Code
 */
        CURRENCY          : EPM.CurrencyT;
        /**
 * Purchase Order Item Gross Amount
 */
        GROSSAMOUNT       : EPM.AmountT;
        /**
 * Purchase Order Item Net Amount
 */
        NETAMOUNT         : EPM.AmountT;
        /**
 * Purchase Order Item Tax Amount
 */
        TAXAMOUNT         : EPM.AmountT;
        /**
 * Purchase Order Item Quantity
 */
        QUANTITY          : EPM.QuantityT;
        /**
 * Purchase Order Item Quantity Unit
 */
        QUANTITYUNIT      : EPM.UnitT;
        /**
 * Purchase Order Item Delivery Date
 */
        DELIVERYDATE      : EPM.SDate;
  };

  /**
 * Purchase Order Header view from PO.Header entity
 */
  define view HeaderView as
    select from PO.Header {
      /**
 * Purchase Order ID
 */
      PURCHASEORDERID              as ![PurchaseOrderId],
      /**
 * Created By Employee ID
 */
      HISTORY.CREATEDBY.EMPLOYEEID as ![CreatedByEmployeeId],
      /**
 * Created By Employee First Name
 */
      HISTORY.CREATEDBY.NAME.FIRST as ![CreatedByFirstName],
      /**
 * Created By Employee Last Name
 */
      HISTORY.CREATEDBY.NAME.LAST  as ![CreatedByLastName],
      /**
 * Created By Employee Login Name
 */
      HISTORY.CREATEDBY.LOGINNAME  as ![CreatedByLoginName],
      /**
 * Created Time
 */
      HISTORY.CREATEDAT            as ![CreatedAt],
      /**
 * Buisness Partner ID
 */
      PARTNER.PARTNERID            as ![PartnerId],
      /**
 * Company Name
 */
      PARTNER.COMPANYNAME          as ![CompanyName],
      /**
 * Currency Code
 */
      CURRENCY                     as ![Currency],
      /**
 * Gross Amount
 */
      GROSSAMOUNT                  as ![GrossAmount],
      /**
 * Net Amount
 */
      NETAMOUNT                    as ![NetAmount],
      /**
 * Tax Amount
 */
      TAXAMOUNT                    as ![TaxAmount]
    };

  define view ItemView as
    select from PO.Item {
      PURCHASEORDERID   as ![PurchaseOrderItemId],
      PURCHASEORDERITEM as ![ItemPos],
      PRODUCT.PRODUCTID as ![ProductID],
      CURRENCY          as ![CurrencyCode],
      GROSSAMOUNT       as ![Amount],
      NETAMOUNT         as ![NetAmount],
      TAXAMOUNT         as ![TaxAmount],
      QUANTITY          as ![Quantity],
      QUANTITYUNIT      as ![QuantityUnit],
      DELIVERYDATE      as ![DeliveryDate1]
    };

  define view POWorklistView as
    select from PO.Item {
      PURCHASEORDERID                     as ![PurchaseOrderId],
      PURCHASEORDERITEM                   as ![PurchaseOrderItem],
      HEADER.PARTNER.PARTNERID            as ![PartnerId],
      HEADER.PARTNER.COMPANYNAME          as ![CompanyName],
      HEADER.GROSSAMOUNT                  as ![GrossAmount],
      CURRENCY                            as ![Currency],
      HEADER.LIFECYCLESTATUS,
      HEADER.APPROVALSTATUS,
      HEADER.CONFIRMSTATUS,
      HEADER.ORDERINGSTATUS,
      PRODUCT.PRODUCTID                   as ![ProductID],
      PRODUCT.NAMEID,
      PRODUCT.DESCID,
      PRODUCT.PRICE                       as ![ProductPrice],
      PRODUCT.PRODUCTPICURL               as ![ProductURL],
      HEADER.PARTNER.ADDRESSES.CITY       as ![PartnerCity],
      HEADER.PARTNER.ADDRESSES.POSTALCODE as ![PartnerPostalCode],
      GROSSAMOUNT                         as ![GrossAmount_1],
      NETAMOUNT                           as ![NetAmount],
      TAXAMOUNT                           as ![TaxAmount],
      QUANTITY                            as ![Quantity],
      QUANTITYUNIT                        as ![QuantityUnit],
      DELIVERYDATE                        as ![DeliveryDate]
    };

  define view POView as
    select from Header
    inner join Item
      on Header.PURCHASEORDERID = Item.PURCHASEORDERID
    {
      Header.PURCHASEORDERID,
      Item.PURCHASEORDERITEM,
      Header.PARTNER.PARTNERID,
      Item.PRODUCT.PRODUCTID,
      Header.CURRENCY,
      Item.GROSSAMOUNT,
      Item.NETAMOUNT,
      Item.TAXAMOUNT,
      Item.QUANTITY,
      Item.QUANTITYUNIT,
      Item.DELIVERYDATE
    };

};
