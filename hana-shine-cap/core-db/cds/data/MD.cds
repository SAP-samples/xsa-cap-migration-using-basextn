using Core as EPM from './Core.cds';
using Util as Util from './Util.cds';


context MD {

  type HistT {
    CREATEDBY : Association to Employees;
    CREATEDAT : EPM.SDate;
    CHANGEDBY : Association to Employees;
    CHANGEDAT : EPM.SDate;
  };

  type NameT {
    FIRST    : EPM.SString;
    MIDDLE   : EPM.SString;
    LAST     : EPM.SString;
    INITIALS : EPM.BusinessKey;
  };

  type SexT : String(1);

  /**
 * Addresses entity
 */
  @sql.append: `unload priority 8`
  entity Addresses {
        /**
 * Address ID
 */
    key ADDRESSID   : EPM.BusinessKey;
        /**
 * City
 */
        CITY        : EPM.SString;
        /**
 * Postal Code
 */
        POSTALCODE  : EPM.BusinessKey;
        /**
 * Street
 */
        STREET      : EPM.MString;
        /**
 * Building
 */
        BUILDING    : EPM.BusinessKey;
        /**
 * Country
 */
        COUNTRY     : String(3);
        /**
 * Region
 */
        REGION      : String(4);
        /**
 * Address Type
 */
        ADDRESSTYPE : String(2);
        VALIDITY    : EPM.ValidityT;
        /**
 * Latitude
 */
        LATITUDE    : Double;
        /**
 * Longitude
 */
        LONGITUDE   : Double;

  };

  /**
   * Buisness Partner entity
   */
  @sql.append: `partition by HASH(PARTNERID) Partitions GET_NUM_SERVERS()`
  entity BusinessPartner {
        /**
   * Partner ID
   */
    key PARTNERID    : EPM.BusinessKey;
        /**
   * Partner Role
   */
        PARTNERROLE  : String(3); //Business Partner Role

        /**
   * Partner EmailID
   */
        EMAILADDRESS : EPM.LString;
        /**
   * Partner Phone Number
   */
        PHONENUMBER  : EPM.PhoneT;
        /**
   * Partner Fax Number
   */
        FAXNUMBER    : EPM.PhoneT null;
        /**
   * Partner Website
   */
        WEBADDRESS   : EPM.VLString;
        ADDRESSES    : Association to Addresses;
        /**
   * Partner Company Name
   */
        COMPANYNAME  : String(80);
        /**
   * Partner Legal Form
   */
        LEGALFORM    : EPM.BusinessKey;
        HISTORY      : HistT;
        /**
   * Partner Currency Code
   */
        CURRENCY     : EPM.CurrencyT;
  };

  entity Employees {
    key EMPLOYEEID     : EPM.BusinessKey;
        NAME           : NameT null;
        SEX            : SexT;
        LANGUAGE       : EPM.ABAPLanguage;
        PHONENUMBER    : EPM.PhoneT null;
        EMAILADDRESS   : EPM.LString;
        LOGINNAME      : String(12);
        ADDRESSES      : Association to Addresses null;
        VALIDITY       : EPM.ValidityT;
        CURRENCY       : EPM.CurrencyT;
        SALARYAMOUNT   : EPM.AmountT;
        ACCOUNTNUMBER  : EPM.BusinessKey;
        BANKID         : EPM.BusinessKey;
        BANKNAME       : EPM.LString;
        EMPLOYEEPICURL : EPM.LString;
        FULLNAME       : String(100) = NAME.FIRST || ' ' || NAME.LAST;
  };

  entity Products {
    key PRODUCTID     : EPM.BusinessKey;
        TYPECODE      : String(2);
        CATEGORY      : EPM.SString;
        HISTORY       : HistT;
        NAMEID        : EPM.BusinessKey;
        DESCID        : EPM.BusinessKey;
        SUPPLIER      : Association to MD.BusinessPartner;
        TAXTARIFFCODE : Integer;
        QUANTITYUNIT  : EPM.UnitT;
        WEIGHTMEASURE : EPM.QuantityT;
        WEIGHTUNIT    : EPM.UnitT;
        CURRENCY      : EPM.CurrencyT;
        PRICE         : EPM.AmountT;
        PRODUCTPICURL : EPM.LString null;
        WIDTH         : EPM.QuantityT;
        DEPTH         : EPM.QuantityT;
        HEIGHT        : EPM.QuantityT;
        DIMENSIONUNIT : EPM.UnitT;
  };

  entity productLog {
    key PRODUCTID : String(10);
    key LOGID     : Integer;
    key DATETIME  : DateTime;
    key USERNAME  : String(20);
        LOGTEXT   : String(500);
  };

};
