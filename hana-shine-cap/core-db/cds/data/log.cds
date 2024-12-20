context log {

  entity errors {
    ERROR_TIMESTAMP    : DateTime;
    OBJECT_SCHEMA_NAME : String(256);
    OBJECT_NAME        : String(256);
    PARAMETER          : String(256);
    SQL_ERROR_CODE     : Integer;
    SQL_ERROR_MESSAGE  : String(5000);
  };

  entity messages {
    ERROR_TIMESTAMP    : DateTime;
    OBJECT_SCHEMA_NAME : String(256);
    OBJECT_NAME        : String(256);
    PARAMETER          : String(256);
    SQL_ERROR_CODE     : Integer;
    SQL_ERROR_MESSAGE  : String(5000);
  };

};
