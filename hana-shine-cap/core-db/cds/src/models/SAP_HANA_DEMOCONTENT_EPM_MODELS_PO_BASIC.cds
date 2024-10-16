@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_BASIC {
  key POLD            : String(10)     @title: 'pold';
      CREATEDBY       : String(10)     @title: 'createdBy';
      CREATEDAT       : Date           @title: 'createdAt';
      CHANGEDBY       : String(10)     @title: 'changedBy';
      CHANGEDAT       : Date           @title: 'changedAt';
      PARTNERID       : String(10)     @title: 'partnerId';
      CURRENCY        : String(5)      @title: 'currency';
      GROSSAMOUNT     : Decimal(15, 2) @title: 'grossAmount';
      NETAMOUNT       : Decimal(15, 2) @title: 'netAmount';
      TAXAMOUNT       : Decimal(15, 2) @title: 'taxAmount';
      LIFECYCLESTATUS : String(1)      @title: 'lifecycleStatus';
      APPROVALSTATUS  : String(1)      @title: 'approvalStatus';
      CONFIRMSTATUS   : String(1)      @title: 'confirmStatus';
      ORDERINGSTATUS  : String(1)      @title: 'orderingStatus';
      INVOICINGSTATUS : String(1)      @title: 'invoicingStatus';
};
