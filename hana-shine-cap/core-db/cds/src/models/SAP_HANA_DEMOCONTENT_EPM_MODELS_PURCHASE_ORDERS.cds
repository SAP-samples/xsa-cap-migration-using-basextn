@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PURCHASE_ORDERS {
  key GROSSAMOUNT_CURRENCY  : String(5)        @title: 'GROSSAMOUNT_CURRENCY';
  key HISTORY_CREATEDAT     : Date             @title: 'HISTORY_CREATEDAT';
  key PURCHASEORDERID       : String(10)       @title: 'PURCHASEORDERID';
  key CURRENCY              : String(5)        @title: 'CURRENCY';
  key PURCHASEORDERITEM     : String(10)       @title: 'PURCHASEORDERITEM';
  key PRODUCT_PRODUCTID     : String(10)       @title: 'PRODUCT_PRODUCTID';
      GROSSAMOUNT           : Decimal(15, 2)   @title: 'GROSSAMOUNT';
  key PRODUCT_CATEGORY      : hana.VARCHAR(40) @title: 'Product_Category';
  key PRODUCT_CURRENCY      : String(5)        @title: 'Product_Currency';
  key PRODUCT_DESCIPTION    : String(1024)     @title: 'Product_Desciption';
  key PRODUCT_ID            : String(10)       @title: 'Product_Id';
  key PRODUCT_NAME          : String(1024)     @title: 'Product_Name';
  key PRODUCT_PICTURE_URL   : String(255)      @title: 'Product_Picture_URL';
      PRODUCT_PRICE         : Decimal(15, 2)   @title: 'Product_Price';
  key PRODUCT_TYPECODE      : String(2)        @title: 'Product_TypeCode';
      PRODUCT_WEIGHTMEASURE : Decimal(13, 3)   @title: 'Product_WeightMeasure';
  key PRODUCT_WEIGHTUNIT    : String(3)        @title: 'Product_WeightUnit';
  key SUPPLIER_BUILDING     : String(10)       @title: 'Supplier_Building';
  key SUPPLIER_CITY         : hana.VARCHAR(40) @title: 'Supplier_City';
  key SUPPLIER_COMPANYNAME  : String(80)       @title: 'Supplier_CompanyName';
  key SUPPLIER_COUNTRY      : String(3)        @title: 'Supplier_Country';
  key SUPPLIER_ID           : String(10)       @title: 'Supplier_Id';
  key SUPPLIER_POSTALCODE   : String(10)       @title: 'Supplier_PostalCode';
  key SUPPLIER_REGION       : String(4)        @title: 'Supplier_Region';
  key SUPPLIER_STREET       : String(60)       @title: 'Supplier_Street';
      CONVGROSSAMOUNT       : Decimal(15, 3)   @title: 'ConvGrossAmount';
};
