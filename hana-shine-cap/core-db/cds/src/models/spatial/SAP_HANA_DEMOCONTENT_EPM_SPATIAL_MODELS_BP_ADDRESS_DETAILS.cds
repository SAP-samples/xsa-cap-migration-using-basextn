@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_SPATIAL_MODELS_BP_ADDRESS_DETAILS {
      ADDRESSID    : String(10)       @title: 'ADDRESSID';
      CITY         : hana.VARCHAR(40) @title: 'CITY';
      POSTALCODE   : String(10)       @title: 'POSTALCODE';
      STREET       : String(60)       @title: 'STREET';
      BUILDING     : String(10)       @title: 'BUILDING';
      COUNTRY      : String(3)        @title: 'COUNTRY';
      REGION       : String(4)        @title: 'REGION';
      LATITUDE     : Double           @title: 'LATITUDE';
      LONGITUDE    : Double           @title: 'LONGITUDE';
  key PARTNERID    : String(10)       @title: 'PARTNERID';
      EMAILADDRESS : String(255)      @title: 'EMAILADDRESS';
      PHONENUMBER  : String(30)       @title: 'PHONENUMBER';
      FAXNUMBER    : String(30)       @title: 'FAXNUMBER';
      WEBADDRESS   : String(1024)     @title: 'WEBADDRESS';
      COMPANYNAME  : String(80)       @title: 'COMPANYNAME';
      LEGALFORM    : String(10)       @title: 'LEGALFORM';
};
