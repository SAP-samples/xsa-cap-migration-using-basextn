@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PROD {
  key PRODUCTID             : String(10)       @title: 'PRODUCTID';
      PRODUCT_TYPECODE      : String(2)        @title: 'PRODUCT_TYPECODE';
      PRODUCT_CATEGORY      : hana.VARCHAR(40) @title: 'PRODUCT_CATEGORY';
      PRODUCT_CURRENCY      : String(5)        @title: 'PRODUCT_CURRENCY';
      PRODUCT_WEIGHTUNIT    : String(3)        @title: 'PRODUCT_WEIGHTUNIT';
      PRODUCT_WEIGHTMEASURE : Decimal(13, 3)   @title: 'PRODUCT_WEIGHTMEASURE';
      PRODUCT_PRICE         : Decimal(15, 2)   @title: 'PRODUCT_PRICE';
      PRODUCTPICURL         : String(255)      @title: 'PRODUCTPICURL';
      SUPPLIER_ID           : String(10)       @title: 'SUPPLIER_ID';
      COMPANYNAME           : String(80)       @title: 'COMPANYNAME';
      SUPPLIER_CITY         : hana.VARCHAR(40) @title: 'SUPPLIER_CITY';
      SUPPLIER_POSTALCODE   : String(10)       @title: 'SUPPLIER_POSTALCODE';
      SUPPLIER_STREET       : String(60)       @title: 'SUPPLIER_STREET';
      SUPPLIER_BUILDING     : String(10)       @title: 'SUPPLIER_BUILDING';
      SUPPLIER_COUNTRY      : String(3)        @title: 'SUPPLIER_COUNTRY';
      SUPPLIER_REGION       : String(4)        @title: 'SUPPLIER_REGION';
      PRODUCT_NAME          : String(1024)     @title: 'PRODUCT_NAME';
      PRODUCT_DESCRIPTION   : String(1024)     @title: 'PRODUCT_DESCRIPTION';
};
