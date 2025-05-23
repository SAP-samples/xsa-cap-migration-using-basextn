using Core as EPM from './Core.cds';


context Conversions {

  type MandtT : String(3);


  entity T006 {
    key MANDT      : MandtT;
    key MSEHI      : String(3);
        KZEX3      : String(1);
        KZEX6      : String(1);
        ANDEC      : Integer;
        KZKEH      : String(1);
        KZWOB      : String(1);
        KZ1EH      : String(1);
        KZ2EH      : String(1);
        DIMID      : String(6);
        ZAEHL      : Integer;
        NENNR      : Integer;
        EXP10      : Integer;
        ADDKO      : Decimal(9, 6);
        EXPON      : Integer;
        DECAN      : Integer;
        ISOCODE    : String(3);
        PRIMARY    : String(1);
        TEMP_VALUE : Double;
        TEMP_UNIT  : String(3);
        FAMUNIT    : String(3);
        PRESS_VAL  : Double;
        PRESS_UNIT : String(3);
  };

  entity T006A {
    key MANDT : MandtT;
    key SPRAS : EPM.ABAPLanguage;
    key MSEHI : String(3);
        KZEX3 : String(3);
        KZEX6 : String(6);
        MSEHT : EPM.BusinessKey null;
        MSEHL : String(30) null;
  };

  entity TCURC {
    key MANDT    : MandtT;
    key WAERS    : EPM.CurrencyT;
        ISOCD    : String(3);
        ALTWR    : String(3);
        GDATU    : EPM.ABAPDate;
        XPRIMARY : String(1);
  };

  entity TCURF {
    key MANDT : MandtT;
    key KURST : String(4);
    key FCURR : EPM.CurrencyT;
    key TCURR : EPM.CurrencyT;
    key GDATU : EPM.ABAPDate;
        FFACT : Decimal(9, 0);
        TFACT : Decimal(9, 0);
        ABWCT : String(4);
        ABWGA : String(8);
  };

  entity TCURN {
    key MANDT    : MandtT;
    key FCURR    : EPM.CurrencyT;
    key TCURR    : EPM.CurrencyT;
    key GDATU    : EPM.ABAPDate;
        NOTATION : String(1);
  };

  entity TCURR {
    key MANDT : MandtT;
    key KURST : String(4);
    key FCURR : EPM.CurrencyT;
    key TCURR : EPM.CurrencyT;
    key GDATU : EPM.ABAPDate;
        UKURS : Decimal(9, 5);
        FFACT : Decimal(9, 0);
        TFACT : Decimal(9, 0);
  };

  entity TCURT {
    key MANDT : MandtT;
    key SPRAS : EPM.ABAPLanguage;
    key WAERS : EPM.CurrencyT;
        LTEXT : String(40);
        KTEXT : String(15) null;
  };

  entity TCURV {
    key MANDT : MandtT;
    key KURST : String(4);
        XINVR : String(1);
        BWAER : EPM.CurrencyT;
        XBWRL : String(1);
        GKUZU : String(4);
        BKUZU : String(4);
        XFIXD : String(1);
        XEURO : String(1);
  };

  entity TCURW {
    key MANDT : MandtT;
    key SPRAS : EPM.ABAPLanguage;
    key KURST : String(4);
        CURVW : String(40);
  };

  entity TCURX {
    key CURRKEY : EPM.CurrencyT;
        CURRDEC : Integer;
  };


};
