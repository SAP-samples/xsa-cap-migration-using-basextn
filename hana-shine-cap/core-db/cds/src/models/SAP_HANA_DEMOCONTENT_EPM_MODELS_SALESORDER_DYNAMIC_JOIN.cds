@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALESORDER_DYNAMIC_JOIN {
      SALES        : Decimal(15, 2) @title: 'SALES';
  key PRODUCTID    : String(10)     @title: 'PRODUCTID';
  key PRODUCT_NAME : String(1024)   @title: 'PRODUCT_NAME';
  key COUNTRY      : String(3)      @title: 'COUNTRY';
      REGION       : String(4)      @title: 'REGION';
      TOTAL_SALES  : Decimal(15, 2) @title: 'TOTAL_SALES';
      SHARE_SALES  : Decimal(12, 5) @title: 'SHARE_SALES';
};
