@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_ORDER_WORKLIST {
  key SALESORDERID    : String(10)       @title: 'SALESORDERID';
  key PARTNERID       : String(10)       @title: 'PARTNERID';
  key LIFECYCLESTATUS : String(1)        @title: 'LIFECYCLESTATUS';
  key CURRENCY        : String(5)        @title: 'CURRENCY';
  key GROSSAMOUNT     : Decimal(15, 2)   @title: 'GROSSAMOUNT';
  key SALESORDERITEM  : String(10)       @title: 'SALESORDERITEM';
  key PRODUCTID       : String(10)       @title: 'PRODUCTID';
  key QUANTITY        : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT    : String(3)        @title: 'QUANTITYUNIT';
      TYPECODE        : String(2)        @title: 'TYPECODE';
      CATEGORY        : hana.VARCHAR(40) @title: 'CATEGORY';
  key PRODUCTNAME     : String(1024)     @title: 'PRODUCTNAME';
  key PRODUCTDESC     : String(1024)     @title: 'PRODUCTDESC';
  key CITY            : hana.VARCHAR(40) @title: 'CITY';
      COMPANYNAME     : String(80)       @title: 'COMPANYNAME';
  key POSTALCODE      : String(10)       @title: 'POSTALCODE';
};
