@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SALES_ORDER_HEADER_W_BUYER {
  key BILLINGSTATUS                : String(1)        @title: 'BILLINGSTATUS';
  key CURRENCY                     : String(5)        @title: 'CURRENCY';
  key DELIVERYSTATUS               : String(1)        @title: 'DELIVERYSTATUS';
  key GROSSAMOUNT                  : Decimal(15, 2)   @title: 'GROSSAMOUNT';
  key HISTORY_CHANGEDAT            : Date             @title: 'HISTORY_CHANGEDAT';
      HISTORY_CHANGEDBY_EMPLOYEEID : String(10)       @title: 'HISTORY_CHANGEDBY_EMPLOYEEID';
      HISTORY_CREATEDAT            : Date             @title: 'HISTORY_CREATEDAT';
  key HISTORY_CREATEDBY_EMPLOYEEID : String(10)       @title: 'HISTORY_CREATEDBY_EMPLOYEEID';
  key LIFECYCLESTATUS              : String(1)        @title: 'LIFECYCLESTATUS';
  key NETAMOUNT                    : Decimal(15, 2)   @title: 'NETAMOUNT';
  key NOTEID                       : String(10)       @title: 'NOTEID';
  key PARTNER_PARTNERID            : String(10)       @title: 'PARTNER_PARTNERID';
  key SALESORDERID                 : String(10)       @title: 'SALESORDERID';
      TAXAMOUNT                    : Decimal(15, 2)   @title: 'TAXAMOUNT';
      BUILDING                     : String(10)       @title: 'BUILDING';
      CITY                         : hana.VARCHAR(40) @title: 'CITY';
  key COMPANYNAME                  : String(80)       @title: 'COMPANYNAME';
  key COUNTRY                      : String(3)        @title: 'COUNTRY';
      EMAILADDRESS                 : String(255)      @title: 'EMAILADDRESS';
  key LEGALFORM                    : String(10)       @title: 'LEGALFORM';
  key PARTNERID                    : String(10)       @title: 'PARTNERID';
  key PARTNERROLE                  : String(3)        @title: 'PARTNERROLE';
  key POSTALCODE                   : String(10)       @title: 'POSTALCODE';
      REGION                       : String(4)        @title: 'REGION';
      STREET                       : String(60)       @title: 'STREET';
};
