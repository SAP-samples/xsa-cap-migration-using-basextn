@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALESORDER_RANKING_AND_DISCOUNT(IP_REGION : String(4)) {
  key ORDER_RANK   : Integer        @title: 'ORDER_RANK';
      COMPANY_NAME : String(80)     @title: 'COMPANY_NAME';
      REGION       : String(4)      @title: 'REGION';
      SALES        : Decimal(18, 2) @title: 'SALES';
      ORDERS       : Integer        @title: 'ORDERS';
      SALES_RANK   : Integer        @title: 'SALES_RANK';
};
