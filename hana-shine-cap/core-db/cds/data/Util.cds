using Core as EPM from './Core.cds';


context Util {

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

  entity Messages {
    key MESSAGECLASS  : String(20);
    key MESSAGENUMBER : String(3);
    key LANGUAGE      : EPM.ISOLanguageT;
        DESCRIPTION   : EPM.LString null;
        TEXT          : LargeString null;
  };

  entity SSCOOKIE {
    key SESSIONID   : String(32);
    key NAME        : String(30);
    key APPLICATION : String(128);
        EXPIRY      : Timestamp;
        DATA        : LargeString;
  };

  entity Notes {
    key NOTEID    : EPM.BusinessKey;
        LINKID    : EPM.BusinessKey;
        AUTHOR    : String(30);
        TEXT      : EPM.LString;
        CREATEDAT : EPM.SDate;
        THUMBNAIL : EPM.LString;
  };

  entity SeriesData {
    key setid  : Integer;
    key t      : Timestamp;
        FACTOR : Decimal(9, 6);

  };

  entity MySeriesEntity {
    key setId : Integer;
    key t     : Timestamp;
        value : Decimal(10, 4);

  };

  //for SHINE 10.3
  /* temporary */
  entity DataGenerationTime {
    STARTTIME : Integer64;
    ENDTIME   : Integer64;
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

  define view AttachementsView as
    select from Attachments {
      NOTEID,
      TYPE        as ![Type],
      TITLE       as ![Title],
      CREATEDAT,
      DESCRIPTION as ![Description],
      SIZE        as ![Size],
      LINKID
    };

  define view NotesView as
    select from Notes {
      NOTEID,
      AUTHOR    as ![Author],
      TEXT      as ![Text],
      CREATEDAT,
      THUMBNAIL as ![Thumbnail],
      LINKID
    };

  @Search.searchable: true
  define view textsView as
    select from Util.Texts as B {

      B.TEXTID,
      B.LANGUAGE,
      B.ISOLANGUAGE,
      @Search.defaultSearchElement: true
      B.TEXT

    //SP09 requirement - Order By Clause
    }
    order by
      B.TEXTID;

};
