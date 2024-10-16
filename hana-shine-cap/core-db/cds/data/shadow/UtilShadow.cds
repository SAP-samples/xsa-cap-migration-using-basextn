namespace shadow;

using Core as EPM from '../Core.cds';

context UtilShadow {

  entity Constants {
    key DOMAIN      : String(30);
    key FIXEDVALUE  : String(30);
    key LANGUAGE    : EPM.ABAPLanguage;
        DESCRIPTION : EPM.MString;
  };

  entity Texts {
    key TEXTID      : EPM.BusinessKey;
        LANGUAGE    : EPM.ABAPLanguage;
        ISOLANGUAGE : EPM.ISOLanguageT;
        TEXT        : EPM.VLString null;
  };

  entity Notes {
    key NOTEID    : EPM.BusinessKey;
        LINKID    : EPM.BusinessKey;
        AUTHOR    : String(30);
        TEXT      : EPM.LString;
        CREATEDAT : EPM.SDate;
        THUMBNAIL : EPM.LString;
  };

  entity Attachments {
    key NOTEID      : EPM.BusinessKey;
        LINKID      : EPM.BusinessKey;
        TYPE        : String(30);
        TITLE       : EPM.LString;
        CREATEDAT   : EPM.SDate;
        DESCRIPTION : EPM.LString;
        SIZE        : String(40);
  };

};
