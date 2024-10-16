@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_YEAR_COMPARISON(IP_YEAR_2 : String(4)) {
  key PRODUCT_CATEGORY : hana.VARCHAR(40) @title: 'PRODUCT_CATEGORY';
      YEAR1_NET_AMOUNT : Decimal(15, 2)   @title: 'YEAR1_NET_AMOUNT';
  key YEAR             : hana.VARCHAR(4)  @title: 'YEAR';
      YEAR2_NET_AMOUNT : Decimal(15, 2)   @title: 'YEAR2_NET_AMOUNT';
};
