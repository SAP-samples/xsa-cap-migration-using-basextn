@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PRODUCT_SALE_PRICE(PRODUCT_ID : String(10)) {
  key PRODUCTID : String(10)     @title: 'PRODUCTID';
  key CATEGORY  : String(40)     @title: 'CATEGORY';
      PRICE     : Decimal(15, 2) @title: 'PRICE';
      SALEPRICE : Decimal(15, 2) @title: 'SALEPRICE';
};
