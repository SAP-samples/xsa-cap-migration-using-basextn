@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_BUYER {
  key PARTNERID    : String(10)       @title: 'PARTNERID';
      PARTNERROLE  : String(3)        @title: 'PARTNERROLE';
      EMAILADDRESS : String(255)      @title: 'EMAILADDRESS';
      COMPANYNAME  : String(80)       @title: 'COMPANYNAME';
      LEGALFORM    : String(10)       @title: 'LEGALFORM';
      CITY         : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE   : String(10)       @title: 'POSTALCODE';
      BUILDING     : String(10)       @title: 'BUILDING';
      STREET       : String(60)       @title: 'STREET';
      COUNTRY      : String(3)        @title: 'COUNTRY';
      REGION       : String(4)        @title: 'REGION';
};
