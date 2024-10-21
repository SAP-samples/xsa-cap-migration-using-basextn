@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_SPATIAL_MODELS_PRODUCT_SALES {
      SALESORDERID      : String(10)       @title: 'SALESORDERID';
      GROSSAMOUNT       : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      SALESORDERITEM    : String(10)       @title: 'SALESORDERITEM';
      CURRENCY          : String(5)        @title: 'CURRENCY';
  key PRODUCT_PRODUCTID : String(10)       @title: 'PRODUCT_PRODUCTID';
      QUANTITY          : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT      : String(3)        @title: 'QUANTITYUNIT';
      HISTORY_CREATEDAT : Date             @title: 'HISTORY_CREATEDAT';
      COMPANYNAME       : String(80)       @title: 'COMPANYNAME';
      LEGALFORM         : String(10)       @title: 'LEGALFORM';
      CITY              : hana.VARCHAR(40) @title: 'CITY';
      LATITUDE          : Double           @title: 'LATITUDE';
      POSTALCODE        : String(10)       @title: 'POSTALCODE';
      STREET            : String(60)       @title: 'STREET';
      LONGITUDE         : Double           @title: 'LONGITUDE';
      BUILDING          : String(10)       @title: 'BUILDING';
      COUNTRY           : String(3)        @title: 'COUNTRY';
      REGION            : String(4)        @title: 'REGION';
      GROSSAMOUNT_1     : Decimal(15, 2)   @title: 'GROSSAMOUNT_1';
  key YEAR_OF_SALE      : String(1)        @title: 'YEAR_OF_SALE';
};
