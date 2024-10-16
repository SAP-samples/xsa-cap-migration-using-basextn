context jsonExamples {
  entity jsonTbl1 {
    key id   : Integer @sql.append: `generated always as identity( start with 1 increment by 1)`;
        data : LargeString;
  }
}
