@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_HEADER_ONLY {
  key APPROVALSTATUS               : String(1)        @title: 'APPROVALSTATUS';
      CONFIRMSTATUS                : String(1)        @title: 'CONFIRMSTATUS';
      CURRENCY                     : String(5)        @title: 'CURRENCY';
      GROSSAMOUNT                  : Decimal(15, 2)   @title: 'GROSSAMOUNT';
      HISTORY_CHANGEDAT            : Date             @title: 'HISTORY_CHANGEDAT';
      HISTORY_CHANGEDBY_EMPLOYEEID : String(10)       @title: 'HISTORY_CHANGEDBY_EMPLOYEEID';
      HISTORY_CREATEDAT            : Date             @title: 'HISTORY_CREATEDAT';
      HISTORY_CREATEDBY_EMPLOYEEID : String(10)       @title: 'HISTORY_CREATEDBY_EMPLOYEEID';
      INVOICINGSTATUS              : String(1)        @title: 'INVOICINGSTATUS';
      LIFECYCLESTATUS              : String(1)        @title: 'LIFECYCLESTATUS';
      NETAMOUNT                    : Decimal(15, 2)   @title: 'NETAMOUNT';
      NOTEID                       : String(10)       @title: 'NOTEID';
      ORDERINGSTATUS               : String(1)        @title: 'ORDERINGSTATUS';
      PARTNER_PARTNERID            : String(10)       @title: 'PARTNER_PARTNERID';
      PURCHASEORDERID              : String(10)       @title: 'PURCHASEORDERID';
      TAXAMOUNT                    : Decimal(15, 2)   @title: 'TAXAMOUNT';
      APPROVALSTATUSDESC           : String(60)       @title: 'APPROVALSTATUSDESC';
      CONFIRMSTATUSDESC            : String(60)       @title: 'CONFIRMSTATUSDESC';
      LIFECYCLESTATUSDESC          : String(60)       @title: 'LIFECYCLESTATUSDESC';
      ORDERINGSTATUSDESC           : String(60)       @title: 'ORDERINGSTATUSDESC';
      CITY                         : hana.VARCHAR(40) @title: 'CITY';
      COMPANYNAME                  : String(80)       @title: 'COMPANYNAME';
      LEGALFORM                    : String(10)       @title: 'LEGALFORM';
};
