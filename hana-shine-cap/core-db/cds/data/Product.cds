context Product {

  /**
 * Products entity
 */
  entity Products {
        /**
 * Product ID
 */
    key PRODUCTID : String(10);
        /**
 * Product Category
 */
        CATEGORY  : String(40);
        /**
 * Product Price
 */
        PRICE     : Decimal(15, 2);
  };

  entity ProductLog {
    key PRODUCTID : String(10);
    key LOGID     : Integer;
    key DATETIME  : DateTime;
    key USERNAME  : String(80);
        LOGTEXT   : String(500);
  };
};
