@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_PURCHASE_COMMON_CURRENCY(IP_O_TARGET_CURRENCY : String(3)) {
  key CONVGROSSAMOUNT_CURRENCY : String(5)        @title: 'CONVGROSSAMOUNT_CURRENCY';
  key PURCHASEORDERID          : String(10)       @title: 'PURCHASEORDERID';
  key PURCHASEORDERITEM        : String(10)       @title: 'PURCHASEORDERITEM';
  key HISTORY_CREATEDAT        : Date             @title: 'HISTORY_CREATEDAT';
  key POSTALCODE               : String(10)       @title: 'POSTALCODE';
  key CITY                     : hana.VARCHAR(40) @title: 'CITY';
      GROSSAMOUNT              : Decimal(15, 2)   @title: 'GROSSAMOUNT';
  key CURRENCY                 : String(5)        @title: 'CURRENCY';
  key COMPANYNAME              : String(80)       @title: 'COMPANYNAME';
  key CATEGORY                 : hana.VARCHAR(40) @title: 'CATEGORY';
  key PARTNERID                : String(10)       @title: 'PARTNERID';
  key PRODUCTID                : String(10)       @title: 'PRODUCTID';
      CONVGROSSAMOUNT          : Decimal(13, 2)   @title: 'CONVGROSSAMOUNT';
};
