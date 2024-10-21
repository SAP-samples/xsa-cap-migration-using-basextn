@cds.persistence.exists
entity CUSTOMERS {
  key ID      : Integer;
      NAME    : String(256);
      ACTIVE  : hana.TINYINT;
      COUNTRY : String(256);
}
