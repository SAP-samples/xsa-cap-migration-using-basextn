@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_GET_PARTNER_ROLES {
  key PARTNERROLE : String(3)  @title: 'PARTNERDESC';
      PARTNERDESC : String(40) @title: 'PARTNERDESC';
};
