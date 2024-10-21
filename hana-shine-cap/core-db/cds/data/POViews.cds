using PO as PO from './PO.cds';
using MDViews as MDViews from './MDViews.cds';
using annotations.Importance as Importance from './annotations.cds';
using SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_ITEM as PO_ITEM from '../src/models/SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_ITEM.cds';
using SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_HEADER_ONLY as PO_HEADER from '../src/models/SAP_HANA_DEMOCONTENT_EPM_MODELS_PO_HEADER_ONLY.cds';


context POViews {
  define view POHeaderConsumption as
    select from PO_HEADER {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Purchase Order ID'
      }]
      PURCHASEORDERID,

      @UI.LineItem      : [{importance: Importance.Medium}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Supplier ID'
      }]
      @UI.FieldGroup    : [{position: 20}]
      @valueList        : {
        collectionPath: 'SupplierVH', searchSupported: false, parameterInOut: [{
          localDataProperty: 'PARTNER_PARTNERID',
          valueListProperty: 'Supplier_Id'
        }], parameterDisplayOnly: [{valueListProperty: 'Supplier_CompanyName'}]
      }
      PARTNER_PARTNERID,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 30}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Company Name'
      }]
      COMPANYNAME,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 40}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'City'
      }]
      CITY,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 41}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Changed At'
      }]
      HISTORY_CHANGEDAT,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 42}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Changed By'
      }]
      HISTORY_CHANGEDBY_EMPLOYEEID,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 43}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Created Date'
      }]
      HISTORY_CREATEDAT,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 44}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Created By'
      }]
      HISTORY_CREATEDBY_EMPLOYEEID,

      @UI.LineItem      : [{importance: 'High'}]
      @UI.FieldGroup    : [{position: 50}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Gross Amount'
      }]
      GROSSAMOUNT,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 51}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Net Amount'
      }]
      NETAMOUNT,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 52}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Tax Amount'
      }]
      TAXAMOUNT,

      @UI.LineItem      : [{importance: 'Low'}]
      @UI.FieldGroup    : [{position: 60}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Currency'
      }]
      CURRENCY,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 61}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Note ID'
      }]
      NOTEID,

      @UI.LineItem      : [{importance: 'High'}]
      @UI.FieldGroup    : [{position: 70}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Approval Status'
      }]
      APPROVALSTATUSDESC,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 71}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Confirmation Status'
      }]
      CONFIRMSTATUSDESC,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 72}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Lifecycle Status'
      }]
      LIFECYCLESTATUSDESC,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 73}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Ordering Status'
      }]
      ORDERINGSTATUSDESC
    };

  define view POItemConsumption as
    select from PO_ITEM {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Purchase Order ID'
      }]
      PURCHASEORDERID,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 20}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Purchase Order Item ID'
      }]
      PURCHASEORDERITEM,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 30}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Product ID'
      }]
      PRODUCT_PRODUCTID,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 40}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Product Name'
      }]
      PRODUCTNAME,

      @UI.LineItem      : [{importance: 'High'}]
      @UI.FieldGroup    : [{position: 50}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Gross Amount'
      }]
      GROSSAMOUNT,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 51}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Net Amount'
      }]
      NETAMOUNT,

      /*            @UI.LineItem       : [ {
                                           exclude: true
                                        } ]*/
      @UI.FieldGroup    : [{position: 52}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Tax Amount'
      }]
      TAXAMOUNT,

      @UI.LineItem      : [{importance: 'Low'}]
      @UI.FieldGroup    : [{position: 60}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Currency'
      }]
      CURRENCY,

      @UI.LineItem      : [{importance: 'High'}]
      @UI.FieldGroup    : [{position: 70}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Quantity'
      }]
      QUANTITY,

      @UI.LineItem      : [{importance: 'Low'}]
      @UI.FieldGroup    : [{position: 71}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Quantity Unit'
      }]
      QUANTITYUNIT,

      @UI.LineItem      : [{importance: 'High'}]
      @UI.FieldGroup    : [{position: 80}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Delivery Date'
      }]
      DELIVERYDATE,

      @UI.LineItem      : [{importance: 'High'}]
      @UI.FieldGroup    : [{position: 81}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Product Category'
      }]
      CATEGORY
    };
};
