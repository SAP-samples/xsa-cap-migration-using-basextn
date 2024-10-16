@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_SUPPLIER(VAR_PARTNERROLE : String(10)) {
      CITY         : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE   : String(10)       @title: 'POSTALCODE';
      STREET       : String(60)       @title: 'STREET';
      BUILDING     : String(10)       @title: 'BUILDING';
      COUNTRY      : String(3)        @title: 'COUNTRY';
      REGION       : String(4)        @title: 'REGION';
  key SUPPLIERID   : String(10)       @title: 'SUPPLIERID';
      PARTNERROLE  : String(3)        @title: 'PARTNERROLE';
      EMAILADDRESS : String(255)      @title: 'EMAILADDRESS';
      COMPANYNAME  : String(80)       @title: 'COMPANYNAME';
      LEGALFORM    : String(10)       @title: 'LEGALFORM';
};
