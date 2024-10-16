@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_ITEM {
      PRODUCTNAME       : String(1024)     @title: 'ProductName';
  key PURCHASEORDERID   : String(10)       @title: 'PURCHASEORDERID';
      TAXAMOUNT         : Decimal(15, 2)   @title: 'TAXAMOUNT';
  key PURCHASEORDERITEM : String(10)       @title: 'PURCHASEORDERITEM';
      PRODUCT_PRODUCTID : String(10)       @title: 'PRODUCT_PRODUCTID';
      CURRENCY          : String(5)        @title: 'CURRENCY';
      GROSSAMOUNT       : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      NETAMOUNT         : Decimal(15, 2)   @title: 'NETAMOUNT';
      QUANTITY          : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT      : String(3)        @title: 'QUANTITYUNIT';
      DELIVERYDATE      : Date             @title: 'DELIVERYDATE';
      CATEGORY          : hana.VARCHAR(40) @title: 'CATEGORY';
};
