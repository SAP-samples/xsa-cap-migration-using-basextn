context Jobs {

  entity Data {
    key ID        : String(10);
        NAME      : hana.VARCHAR(40);
        TIMESTAMP : Timestamp;
  };

  entity ScheduleDetails {
    key JOBID     : String(10);
        NAME      : hana.VARCHAR(40);
        STARTTIME : Timestamp;
        ENDTIME   : Timestamp;
        CRON      : hana.VARCHAR(40);
        SCHEDULE  : hana.VARCHAR(40);
  };
};
