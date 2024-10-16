@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALESORDER_BASKET_ANALYSIS {
  key SALESORDERID      : String(10)       @title: 'SALESORDERID';
  key HISTORY_CREATEDAT : Date             @title: 'History_CREATEDAT';
  key SALESORDERITEM    : String(10)       @title: 'SALESORDERITEM';
  key CATEGORY          : hana.VARCHAR(40) @title: 'CATEGORY';
      NETAMOUNT         : Decimal(15, 2)   @title: 'NETAMOUNT';
      SALES             : Decimal(12, 2)   @title: 'SALES';
};
