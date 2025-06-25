@cds.persistence.exists
entity TEST_VT_TABLE_DEMO_CDS {
     key   ID   :  Integer;
    NAME      :  String(100);
    CREATED_AT : Date;
    AMOUNT   :   Decimal(10, 2);
}