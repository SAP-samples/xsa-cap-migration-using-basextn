context annotations {


  type InnvocationD : String(255);
  type elementRef   : String(255);

  type Importance   : String(10) enum {
    Low                          = 'Low';
    Medium                       = 'Medium';
    High                         = 'High';
  };

  type Type         : String(30) enum {
    FOR_ACTION                   = 'FOR_ACTION';
    AS_ADDRESS                   = 'AS_ADDRESS';
    AS_DATAPOINT                 = 'AS_DATAPOINT';
    AS_CONTACT                   = 'AS_CONTACT';
    AS_CHART                     = 'AS_CHART';
    FOR_INTENT_BASED_NAVIGATION  = 'FOR_INTENT_BASED_NAVIGATION';
    STANDARD                     = 'STANDARD';
    WITH_INTENT_BASED_NAVIGATION = 'WITH_INTENT_BASED_NAVIGATION';
    WITH_NAVIGATION_PATH         = 'WITH_NAVIGATION_PATH';
    WITH_URL                     = 'WITH_URL';
  };

  type Innvocation  : String(16) enum {
    ISOLATED                     = 'ISOLATED';
    CHANGE_SET                   = 'CHANGE_SET';
  };

  type Direction    : String(20) enum {
    MINIMIZE                     = 'MINIMIZE';
    TARGET                       = 'TARGET';
    MAXIMIZE                     = 'MAXIMIZE';
  };

/*  */

};
