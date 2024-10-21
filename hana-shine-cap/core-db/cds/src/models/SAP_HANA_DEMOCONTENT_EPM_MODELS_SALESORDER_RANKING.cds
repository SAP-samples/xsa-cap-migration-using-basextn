@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALESORDER_RANKING {
  key COMPANY_NAME : hana.VARCHAR(20) @title: 'COMPANY_NAME';
  key SALES        : hana.VARCHAR(20) @title: 'SALES';
  key ORDERS       : hana.VARCHAR(20) @title: 'ORDERS';
  key ORDER_RANK   : hana.VARCHAR(20) @title: 'ORDER_RANK';
  key SALES_RANK   : hana.VARCHAR(20) @title: 'SALES_RANK';
};
