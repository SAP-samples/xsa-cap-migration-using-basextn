using Core as EPM from './Core.cds';
using MD as MD from './MD.cds';


context Procedures {


  type tt_bp_addresses {
    PARTNERID    : String(10);
    PARTNERROLE  : String(3);
    EMAILADDRESS : String(255);
    COMPANYNAME  : String(80);
    ADDRESSID    : String(10);
    CITY         : String(40);
    POSTALCODE   : String(10);
    STREET       : String(60);
  };


  type tt_bp_addresses_ext {
    PARTNERID    : String(10);
    PARTNERROLE  : String(3);
    EMAILADDRESS : String(255);
    COMPANYNAME  : String(80);
    ADDRESSID    : String(10);
    CITY         : String(40);
    POSTALCODE   : String(10);
    STREET       : String(60);
    REGION       : String(4);
    DISCOUNT     : Decimal(15, 2);
  };


  type tt_product_sale_price {
    PRODUCTID : String(10);
    CATEGORY  : String(40);
    PRICE     : Decimal(15, 2);
    SALEPRICE : Decimal(15, 2);
  };


  type tt_product_ids {
    PRODUCTID : EPM.BusinessKey;
  };


  type tt_product_detail {
    PRODUCTID         : EPM.BusinessKey;
    TYPECODE          : String(2);
    CATEGORY          : EPM.SString;
    HISTORY           : MD.HistT;
    NAMEID            : EPM.BusinessKey;
    NAME_TEXT         : String(40);
    DESCID            : EPM.BusinessKey;
    DESC_TEXT         : String(80);
    SUPPLIERPARTNERID : String(10);
    TAXTARIFFCODE     : Integer;
    QUANTITYUNIT      : EPM.UnitT;
    WEIGHTMEASURE     : EPM.QuantityT;
    WEIGHTUNIT        : EPM.UnitT;
    CURRENCY          : EPM.CurrencyT;
    PRICE             : EPM.AmountT;
    PRODUCTPICURL     : EPM.LString;
    WIDTH             : EPM.QuantityT;
    DEPTH             : EPM.QuantityT;
    HEIGHT            : EPM.QuantityT;
    DIMENSIONUNIT     : EPM.UnitT;
  };


  type tt_customer_discount_calculation {
    COMPANY_NAME : String(50);
    REGION       : String(50);
    SALES        : Decimal(15, 2);
    ORDERS       : Integer;
    SALES_RANK   : Integer;
    ORDER_RANK   : Integer;
  };


  type tt_tax_calculation {
    PARTNERID   : String(10);
    COMPANYNAME : String(80);
    PRODUCTID   : String(10);
  };


  type tt_tax_calculation_out {
    PARTNERID   : String(10);
    COMPANYNAME : String(80);
    PRODUCTID   : String(10);
    TAX         : Decimal(15, 3);
  };


  type tt_variable {
    SESSIONID   : String(32);
    NAME        : String(30);
    APPLICATION : String(128);
    EXPIRY      : Timestamp;
    DATA        : LargeString;
  };


  type tt_errors {
    HTTP_STATUS_CODE : Integer;
    ERROR_MESSAGE    : String(100);
    DETAIL           : String(100);
  };


  type tt_scookie {
    SESSIONID   : String(32);
    NAME        : String(30);
    APPLICATION : String(128);
    EXPIRY      : Timestamp;
  };

};
