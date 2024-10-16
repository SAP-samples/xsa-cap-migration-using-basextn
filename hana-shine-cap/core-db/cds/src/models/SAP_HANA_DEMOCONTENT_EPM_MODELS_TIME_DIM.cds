@cds.persistence.exists
@cds.persistence.calcview
entity SAP_HANA_DEMOCONTENT_EPM_MODELS_TIME_DIM {
  CALMONTH        : hana.VARCHAR(6)  @title: 'CALMONTH';
  DATETIMESTAMP   : Timestamp        @title: 'DATETIMESTAMP';
  CALQUARTER      : hana.VARCHAR(5)  @title: 'CALQUARTER';
  DATE_SQL        : Date             @title: 'DATE_SQL';
  DATETIME_SAP    : hana.VARCHAR(14) @title: 'DATETIME_SAP';
  CALWEEK         : hana.VARCHAR(6)  @title: 'CALWEEK';
  DATE_SAP        : hana.VARCHAR(8)  @title: 'DATE_SAP';
  YEAR            : hana.VARCHAR(4)  @title: 'YEAR';
  QUARTER         : hana.VARCHAR(2)  @title: 'QUARTER';
  MONTH           : hana.VARCHAR(2)  @title: 'MONTH';
  DAY             : hana.VARCHAR(2)  @title: 'DAY';
  WEEK            : hana.VARCHAR(2)  @title: 'WEEK';
  WEEK_YEAR       : hana.VARCHAR(4)  @title: 'WEEK_YEAR';
  DAY_INT         : hana.TINYINT     @title: 'DAY_INT';
  DAY_OF_WEEK     : hana.VARCHAR(2)  @title: 'DAY_OF_WEEK';
  DAY_OF_WEEK_INT : hana.TINYINT     @title: 'DAY_OF_WEEK_INT';
  HOUR            : hana.VARCHAR(2)  @title: 'HOUR';
  MINUTE          : hana.VARCHAR(2)  @title: 'MINUTE';
  HOUR_INT        : hana.TINYINT     @title: 'HOUR_INT';
  SECOND          : hana.VARCHAR(2)  @title: 'SECOND';
  MINUTE_INT      : hana.TINYINT     @title: 'MINUTE_INT';
  MONTH_INT       : hana.TINYINT     @title: 'MONTH_INT';
  MONTH_LAST_DAY  : hana.TINYINT     @title: 'MONTH_LAST_DAY';
  YEAR_INT        : Integer          @title: 'YEAR_INT';
  QUARTER_INT     : hana.TINYINT     @title: 'QUARTER_INT';
  WEEK_INT        : hana.TINYINT     @title: 'WEEK_INT';
  SECOND_INT      : hana.TINYINT     @title: 'SECOND_INT';
  WEEK_YEAR_INT   : Integer          @title: 'WEEK_YEAR_INT';
  TZNTSTMPL       : Decimal(21, 7)   @title: 'TZNTSTMPL';
  TZNTSTMPS       : Decimal(15, 0)   @title: 'TZNTSTMPS';
};
