@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PRODUCT {
      PRODUCT_DESCIPTION    : String(1024)     @title: 'Product_Desciption';
      PRODUCT_NAME          : String(1024)     @title: 'Product_Name';
      SUPPLIER_ID           : String(10)       @title: 'Supplier_Id';
      SUPPLIER_REGION       : String(4)        @title: 'Supplier_Region';
      SUPPLIER_COUNTRY      : String(3)        @title: 'Supplier_Country';
      SUPPLIER_BUILDING     : String(10)       @title: 'Supplier_Building';
      SUPPLIER_STREET       : String(60)       @title: 'Supplier_Street';
      SUPPLIER_POSTALCODE   : String(10)       @title: 'Supplier_PostalCode';
      SUPPLIER_CITY         : hana.VARCHAR(40) @title: 'Supplier_City';
      SUPPLIER_COMPANYNAME  : String(80)       @title: 'Supplier_CompanyName';
      PRODUCT_PICTURE_URL   : String(255)      @title: 'Product_Picture_URL';
      PRODUCT_PRICE         : Decimal(15, 2)   @title: 'Product_Price';
      PRODUCT_CURRENCY      : String(5)        @title: 'Product_Currency';
      PRODUCT_WEIGHTUNIT    : String(3)        @title: 'Product_WeightUnit';
      PRODUCT_WEIGHTMEASURE : Decimal(13, 3)   @title: 'Product_WeightMeasure';
      PRODUCT_CATEGORY      : hana.VARCHAR(40) @title: 'Product_Category';
      PRODUCT_TYPECODE      : String(2)        @title: 'Product_TypeCode';
  key PRODUCT_ID            : String(10)       @title: 'Product_Id';
};
