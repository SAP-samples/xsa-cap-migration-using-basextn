using Core as EPM from './Core.cds';
using MD as MD from './MD.cds';
using annotations as annotations from './annotations.cds';


context SO {
  /**
 * Sales Order Header Entity
 */
  entity Header {
        /**
 * Sales Order ID
 */
    key SALESORDERID    : EPM.BusinessKey;
        ITEMS           : Association[ * ] to Item
                            on ITEMS.SALESORDERID = SALESORDERID;
        HISTORY         : MD.HistT;
        /**
 * Sales Order Note ID
 */
        NOTEID          : EPM.BusinessKey null;
        PARTNER         : Association to MD.BusinessPartner;
        /**
 * Sales Order Currency Code
 */
        CURRENCY        : EPM.CurrencyT;
        /**
 * Sales Order Gross Amount
 */
        GROSSAMOUNT     : EPM.AmountT;
        /**
 * Sales Order Net Amount
 */
        NETAMOUNT       : EPM.AmountT;
        /**
 * Sales Order Tax Amount
 */
        TAXAMOUNT       : EPM.AmountT;
        /**
 * Sales Order Lifecycle Status
 */
        LIFECYCLESTATUS : EPM.StatusT;
        /**
 * Sales Order Billing Status
 */
        BILLINGSTATUS   : EPM.StatusT;
        /**
 * Sales Order Delivery Status
 */
        DELIVERYSTATUS  : EPM.StatusT;
  };

  /**
 * Sales Order Item Entity
 */
  entity Item {
        /**
 * Sales Order ID
 */
    key SALESORDERID   : EPM.BusinessKey;
    key SALESORDERITEM : EPM.BusinessKey;
        HEADER         : Association[1] to Header
                           on HEADER.SALESORDERID = SALESORDERID;
        PRODUCT        : Association to MD.Products;
        /**
 * Sales Order Note ID
 */
        NOTEID         : EPM.BusinessKey null;
        /**
 * Sales Order Item Currency Code
 */
        CURRENCY       : EPM.CurrencyT;
        /**
 * Sales Order Item Gross Amount
 */
        GROSSAMOUNT    : EPM.AmountT;
        /**
 * Sales Order Item Net Amount
 */
        NETAMOUNT      : EPM.AmountT;
        /**
 * Sales Order Item Tax Amount
 */
        TAXAMOUNT      : EPM.AmountT;
        ITEMATPSTATUS  : String(1);
        OPITEMPOS      : EPM.BusinessKey null;
        /**
 * Sales Order Item Quantity
 */
        QUANTITY       : EPM.QuantityT;
        /**
 * Sales Order Item Quantity Unit
 */
        QUANTITYUNIT   : EPM.UnitT;
        /**
 * Sales Order Item Delivery Date
 */
        DELIVERYDATE   : EPM.SDate;
  };

  entity Filter {
    key MODEL    : String(30);
    key COLNAME  : String(8);
        COLVALUE : String(8);
  };
};
