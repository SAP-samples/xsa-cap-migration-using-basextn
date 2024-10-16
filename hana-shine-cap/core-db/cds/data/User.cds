using Core as EPM from './Core.cds';


context User {

  entity Details {
    key PERS_NO   : String(10);
        FIRSTNAME : EPM.SString;
        LASTNAME  : EPM.SString;
        E_MAIL    : EPM.LString;
  };

};
