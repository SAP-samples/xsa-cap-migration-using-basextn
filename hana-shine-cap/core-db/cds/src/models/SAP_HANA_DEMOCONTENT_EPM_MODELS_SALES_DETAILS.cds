@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_DETAILS {
  key SALESORDERITEM    : String(10)       @title: 'SALESORDERITEM';
  key HISTORY_CREATEDAT : Date             @title: 'History_CREATEDAT';
  key SALESORDERID      : String(10)       @title: 'SALESORDERID';
  key CATEGORY          : hana.VARCHAR(40) @title: 'CATEGORY';
};
