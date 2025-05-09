context lrep {
  entity variants {
    key id               : Integer;
        fileName         : String(255);
        fileType         : String(10);
        changeType       : String(40);
        reference        : String(100);
        packageName      : String(100);
        content          : LargeString;
        namespace        : String(100);
        creation         : DateTime default current_timestamp;
        originalLanguage : String(2);
        conditions       : String(254);
        context          : String(254);
        supportGenerator : String(100);
        supportService   : String(30);
        supportUser      : String(100);
        layer            : String(20);
        selector         : String(255);
        texts            : LargeString;
        variantName      : String(255);
  };

  define view userVariants as
    select from variants {
      fileName,
      fileType,
      changeType,
      reference,
      packageName,
      content,
      namespace,
      creation,
      originalLanguage,
      conditions,
      context,
      supportGenerator,
      supportService,
      supportUser,
      layer,
      selector,
      texts,
      variantName
    }
    where
      supportUser = session_context('APPLICATIONUSER');
};
