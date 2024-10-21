@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_CUSTOMER_DISCOUNT_BY_RANKING_AND_REGION(IP_EMEA : String(4)) {
  key REGION       : String(4)      @title: 'REGION';
  key COMPANY_NAME : String(80)     @title: 'COMPANY_NAME';
  key DISCOUNT     : Decimal(3, 2)  @title: 'DISCOUNT';
      SALES_AMER   : Decimal(15, 2) @title: 'SALES_AMER';
      SALES_EMEA   : Decimal(15, 2) @title: 'SALES_EMEA';
      SALES_AFR    : Decimal(15, 2) @title: 'SALES_AFR';
      SALES_APJ    : Decimal(15, 2) @title: 'SALES_APJ';
};
