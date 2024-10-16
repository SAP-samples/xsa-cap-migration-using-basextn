@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_ORDER_RANKING_AND_DISCOUNT_SQL(IP_REGION : String(4)) {
  key COMPANY_NAME : String(80)       @title: 'COMPANY_NAME';
      ORDER_RANK   : Integer          @title: 'ORDER_RANK';
  key REGION       : hana.VARCHAR(50) @title: 'REGION';
      SALES_RANK   : Integer          @title: 'SALES_RANK';
      SALES        : Decimal(15, 2)   @title: 'SALES';
      ORDERS       : Integer          @title: 'ORDERS';
      DISCOUNT     : Decimal(3, 2)    @title: 'DISCOUNT';
};
