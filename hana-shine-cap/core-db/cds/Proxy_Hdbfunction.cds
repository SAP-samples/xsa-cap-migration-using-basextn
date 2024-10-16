@cds.persistence.exists
@cds.persistence.udf
entity APPLY_DISCOUNT(IM_PRICE : Decimal(15, 2), IM_DISCOUNT : Decimal(15, 2)) {
  EX_RESULT : Decimal(15, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity COUNT_CHAR_MAPPER(IM_ID : Integer, IM_STRDATA : hana.VARCHAR(5000)) {
  ID   : Integer;
  VAL  : hana.VARCHAR;
  FREQ : Integer;
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_ADDRESS_FUNC(IM_ADDRESSID : String(10)) {
  ADDRESSID  : String(10);
  CITY       : hana.VARCHAR(40);
  POSTALCODE : String(10);
  STREET     : String(60);
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_BUYER_CITY(TERMS : String(40)) {
  CITY : String(40);
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_COUNTRIES {
  NAME : String(40);
  CODE : String(2)
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_EMPLOYEES_BY_NAME_FILTER(IM_LASTNAMEFILTER : String(40)) {
  EMPLOYEEID   : String(10);
  NAME_FIRST   : String(40);
  NAME_LAST    : String(40);
  EMAILADDRESS : String(255);
  ADDRESSID    : String(10);
  CITY         : String(40);
  POSTALCODE   : String(10);
  STREET       : String(60);
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_FULL_NAME(IM_FIRSTNAME : String(40), IM_MIDDLENAME : String(40), IM_LASTNAME : String(40), IM_EMPLOYEEID : String(10)) {
  EX_FULLNAME : String(256);
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_PARTNER_ROLES {
  PARTNERROLE : String(3);
  PARTNERDESC : String(40)
}

@cds.persistence.exists
@cds.persistence.udf
entity GET_PO_COUNTS(IM_FDATE : Date) {
  EMPLOYEEID   : String(10);
  FULLNAME     : String(256);
  CREATE_CNT   : Integer;
  CHANGE_CNT   : Integer;
  COMBINED_CNT : Integer;
}

@cds.persistence.exists
@cds.persistence.udf
entity GETTABLESIZE {
  RECORD_COUNT  : Integer;
  TABLE_SIZE    : hana.VARCHAR(20);
  TABLE_SYNONYM : hana.VARCHAR(20)
}

@cds.persistence.exists
@cds.persistence.udf
entity POTEXTSEARCH(TERMS : String(40), ATTRIBUTE : String(20)) {
  RESULTS   : String(40);
  ATTRIBUTE : String(20);
}

@cds.persistence.exists
@cds.persistence.udf
entity PRODUCT_SALE_PRICE(PRODUCT_ID : String(10)) {
  PRODUCTID : String(10);
  CATEGORY  : String(40);
  PRICE     : Decimal(15, 2);
  SALEPRICE : Decimal(15, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity SALES_ORDER_RANKING_AND_DISCOUNT(IP_FR_DTE : Date, IP_TO_DTE : Date) {
  COMPANY_NAME : String(80);
  REGION       : String(4);
  SALES        : Decimal(18, 2);
  ORDERS       : Integer64;
  SALES_RANK   : Integer64;
  ORDER_RANK   : Integer64;
  DISCOUNT     : Decimal(15, 2);
}

@cds.persistence.exists
@cds.persistence.udf
entity SALES_RANKING(IP_FR_DTE : Date, IP_TO_DTE : Date) {
  COMPANY_NAME : hana.VARCHAR(20);
  SALES        : hana.VARCHAR(20);
  ORDERS       : hana.VARCHAR(20);
  SALES_RANK   : hana.VARCHAR(20);
  ORDER_RANK   : hana.VARCHAR(20);
}

@cds.persistence.exists
@cds.persistence.udf
entity SALESORDER_RANKING_AND_DISCOUNT_SQL(IP_FR_DATE : Date, IP_TO_DATE : Date, IP_REGION : String(4)) {
  COMPANY_NAME : String(80);
  REGION       : String(4);
  SALES        : Decimal(18, 2);
  ORDERS       : Integer;
  SALES_RANK   : Integer;
  ORDER_RANK   : Integer;
}

@cds.persistence.exists
@cds.persistence.udf
entity TAX_CALCULATION {
  PARTNERID   : String(10);
  COMPANYNAME : String(80);
  PRODUCTID   : String(10);
  TAX         : Decimal(15, 3)
}
