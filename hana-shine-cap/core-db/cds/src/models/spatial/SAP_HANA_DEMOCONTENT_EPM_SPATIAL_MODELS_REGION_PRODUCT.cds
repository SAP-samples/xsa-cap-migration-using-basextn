@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_SPATIAL_MODELS_REGION_PRODUCT {
      SALESORDERID      : String(10)       @title: 'SALESORDERID';
      SALESORDERITEM    : String(10)       @title: 'SALESORDERITEM';
      GROSSAMOUNT       : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      CURRENCY          : String(5)        @title: 'CURRENCY';
  key PRODUCT_PRODUCTID : String(10)       @title: 'PRODUCT_PRODUCTID';
      QUANTITY          : Decimal(13, 3)   @title: 'QUANTITY';
      QUANTITYUNIT      : String(3)        @title: 'QUANTITYUNIT';
      HISTORY_CREATEDAT : Date             @title: 'HISTORY_CREATEDAT';
      COMPANYNAME       : String(80)       @title: 'COMPANYNAME';
      LEGALFORM         : String(10)       @title: 'LEGALFORM';
      CITY              : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE        : String(10)       @title: 'POSTALCODE';
      LATITUDE          : Double           @title: 'LATITUDE';
      LONGITUDE         : Double           @title: 'LONGITUDE';
      STREET            : String(60)       @title: 'STREET';
      BUILDING          : String(10)       @title: 'BUILDING';
      COUNTRY           : String(3)        @title: 'COUNTRY';
      REGION            : String(4)        @title: 'REGION';
};
