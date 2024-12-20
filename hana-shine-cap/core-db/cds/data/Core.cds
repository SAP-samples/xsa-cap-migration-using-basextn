context Core {
  type BusinessKey  : String(10);
  //SP09 requirement - HANA Primitive datatype
  type SString      : hana.VARCHAR(40);
  type MString      : String(60);
  type LString      : String(255);
  type VLString     : String(1024);
  type SDate        : Date;
  type PhoneT       : String(30);
  type CurrencyT    : String(5);
  type ABAPLanguage : String(1);
  type ISOLanguageT : String(2);
  type AmountT      : Decimal(15, 2);
  type QuantityT    : Decimal(13, 3);
  type UnitT        : String(3);
  type StatusT      : String(1);
  type ABAPDate     : String(8);
  //SP09 requirement - Multi File Support
  type Source       : String(30);

  type ValidityT {
    STARTDATE : SDate;
    ENDDATE   : SDate;
  };

  entity MapKeys {
    key KEYID    : String(10);
        APP_ID   : String(50);
        APP_CODE : String(50);
        EXT1     : String(50);
        EXT2     : String(50);
  };

  entity SHINE_TIME_DIM {
    key DATETIMESTAMP   : Timestamp;
        DATE_SQL        : Date;
        DATETIME_SAP    : hana.VARCHAR(14);
        DATE_SAP        : hana.VARCHAR(8);
        YEAR            : hana.VARCHAR(4);
        QUARTER         : hana.VARCHAR(2);
        MONTH           : hana.VARCHAR(2);
        WEEK            : hana.VARCHAR(2);
        WEEK_YEAR       : hana.VARCHAR(4);
        DAY_OF_WEEK     : hana.VARCHAR(2);
        DAY             : hana.VARCHAR(2);
        HOUR            : hana.VARCHAR(2);
        MINUTE          : hana.VARCHAR(2);
        SECOND          : hana.VARCHAR(2);
        CALQUARTER      : hana.VARCHAR(5);
        CALMONTH        : hana.VARCHAR(6);
        CALWEEK         : hana.VARCHAR(6);
        YEAR_INT        : Integer;
        QUARTER_INT     : hana.TINYINT;
        MONTH_INT       : hana.TINYINT;
        WEEK_INT        : hana.TINYINT;
        WEEK_YEAR_INT   : Integer;
        DAY_OF_WEEK_INT : hana.TINYINT;
        DAY_INT         : hana.TINYINT;
        HOUR_INT        : hana.TINYINT;
        MINUTE_INT      : hana.TINYINT;
        SECOND_INT      : hana.TINYINT;
        MONTH_LAST_DAY  : hana.TINYINT;
        TZNTSTMPS       : Decimal(15, 0);
        TZNTSTMPL       : Decimal(21, 7);
  };
};
