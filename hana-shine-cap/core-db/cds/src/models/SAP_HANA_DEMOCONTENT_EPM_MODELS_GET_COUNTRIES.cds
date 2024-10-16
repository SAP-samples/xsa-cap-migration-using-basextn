@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_GET_COUNTRIES {
  key CODE : String(2)  @title: 'NAME';
      NAME : String(40) @title: 'NAME';
};
