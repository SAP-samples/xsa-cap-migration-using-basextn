using Core.Source as Source from './Core.cds';


context JobsDemo {

  entity Details {
    key TIME   : Timestamp;
        SOURCE : Source;
  };

  entity RuntimeSchedules {
    key NAME    : hana.VARCHAR(40);
        ID      : Integer;
        JOBTYPE : hana.VARCHAR(40);
  };
};
