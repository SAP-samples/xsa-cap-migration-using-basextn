using Core as EPM from './Core.cds';
using Util as Util from './Util.cds';
using PO as PO from './PO.cds';
using SO as SO from './SO.cds';
using MD as MD from './MD.cds';
using annotations.Importance as Importance from './annotations.cds';
using SAP_HANA_DEMOCONTENT_EPM_MODELS_GET_PARTNER_ROLES as getPartnerRoles from '../src/models/SAP_HANA_DEMOCONTENT_EPM_MODELS_GET_PARTNER_ROLES.cds';
using SAP_HANA_DEMOCONTENT_EPM_MODELS_GET_COUNTRIES as getCountries from '../src/models/SAP_HANA_DEMOCONTENT_EPM_MODELS_GET_COUNTRIES.cds';
using SAP_HANA_DEMOCONTENT_EPM_MODELS_PRODUCTS as PRODUCTS from '../src/models/SAP_HANA_DEMOCONTENT_EPM_MODELS_PRODUCTS.cds';


context MDViews {
  define view BPView as
    select from MD.BusinessPartner
    mixin {
      ORDERS : Association[ * ] to SO.Header
                 on ORDERS.PARTNER.PARTNERID = $projection.PARTNERID;
    }
    into {
      PARTNERID,
      ORDERS
    };

  view BPOrdersView as
    select from BPView {
      PARTNERID,
      ORDERS[LIFECYCLESTATUS = 'N'].SALESORDERID as orderId
    };

  view BPOrders2View as
    select from BPView {
      PARTNERID,
      ORDERS[LIFECYCLESTATUS = 'N'].{
        SALESORDERID as orderId,
        GROSSAMOUNT as grossAmt
      }
    };

  view BPOrders3View as
    select from BPView {
      PARTNERID,
      ORDERS[LIFECYCLESTATUS = 'N'].{
        SALESORDERID as orderId,
        GROSSAMOUNT as grossAmt,
        ITEMS[NETAMOUNT > 200].{
          PRODUCT.PRODUCTID,
          NETAMOUNT
        }
      }
    };

  @Search.searchable       : true
  @EnterpriseSearch.enabled: true
  define view BuyerView as
    select from MD.BusinessPartner {
      @EnterpriseSearch.key             : true
      @EnterpriseSearch.presentationMode: [ #HIDDEN]
      PARTNERID                   as ![Id],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      EMAILADDRESS                as ![EmailAddress],

      @EnterpriseSearch.presentationMode: [ #TITLE]
      @EnterpriseSearch.usageMode       : [ #SUGGESTION, #AUTO_FACET]
      @Search.defaultSearchElement      : true
      COMPANYNAME                 as ![CompanyName],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      ADDRESSES.CITY              as ![City],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      ADDRESSES.POSTALCODE        as ![PostalCode],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      ADDRESSES.STREET            as ![Street],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      ADDRESSES.BUILDING          as ![Building],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      ADDRESSES.COUNTRY           as ![Country],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      ADDRESSES.REGION            as ![Region],

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @Search.defaultSearchElement      : true
      HISTORY.CREATEDBY.LOGINNAME as ![CreatedBy]
    }
    where
      PARTNERROLE = '1';

  define view partnerRoles as
    select from getPartnerRoles {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Partner Role'
      }]
      PARTNERROLE,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 20}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Role Description'
      }]
      PARTNERDESC
    };

  define view counties as
    select from getCountries {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Country Name'
      }]
      NAME,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 20}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Country Code'
      }]
      CODE
    };

  define view SupplierView as
    select from MD.BusinessPartner {
      PARTNERID                   as ![Id],
      EMAILADDRESS                as ![EmailAddress],
      COMPANYNAME                 as ![CompanyName],
      ADDRESSES.CITY              as ![City],
      ADDRESSES.POSTALCODE        as ![PostalCode],
      ADDRESSES.STREET            as ![Street],
      ADDRESSES.BUILDING          as ![Building],
      ADDRESSES.COUNTRY           as ![Country],
      ADDRESSES.REGION            as ![Region],
      HISTORY.CREATEDBY.LOGINNAME as ![CreatedBy]
    };

  define view SupplierViewVH as
    select from SupplierView {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Supplier ID'
      }]
      ![Id]          as ![Supplier_Id],

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 20}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Supplier Name'
      }]
      ![CompanyName] as ![Supplier_CompanyName]
    };

  define view BPAddrExt as
    select from MD.BusinessPartner {
      PARTNERID,
      ADDRESSES.STREET || ', ' || ADDRESSES.CITY as FULLADDRES
    };

  define view NewYorkEmployees as
    select from MD.Employees as emp {
      NAME.FIRST,
      NAME.LAST,
      ADDRESSES.ADDRESSID as ![ADDID],
      ADDRESSES.CITY      as CITY
    }
    where
      'New York' = ADDRESSES.CITY;

  define view ProductViewSub as
    select from MD.Products as prod {
      PRODUCTID as ![Product_Id],
      (
        select from PO.Item as a {
          sum(![GROSSAMOUNT]) as SUM
        }
        where
          a.PRODUCT.PRODUCTID = prod.PRODUCTID
      )         as PO_SUM
    };

  define view ProductView as
    select from MD.Products
    mixin {
      PO_ORDERS : Association[ * ] to PO.ItemView
                    on PO_ORDERS.![ProductID] = $projection.![Product_Id];
    }
    into {
      PRODUCTID                     as ![Product_Id],
      NAMEID,
      DESCID,
      CATEGORY                      as ![Product_Category],
      CURRENCY                      as ![Product_Currency],
      PRICE                         as ![Product_Price],
      TYPECODE                      as ![Product_TypeCode],
      WEIGHTMEASURE                 as ![Product_WeightMeasure],
      WEIGHTUNIT                    as ![Product_WeightUnit],
      SUPPLIER.PARTNERID            as ![Supplier_Id],
      SUPPLIER.COMPANYNAME          as ![Supplier_CompanyName],
      SUPPLIER.ADDRESSES.CITY       as ![Supplier_City],
      SUPPLIER.ADDRESSES.POSTALCODE as ![Supplier_PostalCode],
      SUPPLIER.ADDRESSES.STREET     as ![Supplier_Street],
      SUPPLIER.ADDRESSES.BUILDING   as ![Supplier_Building],
      SUPPLIER.ADDRESSES.COUNTRY    as ![Supplier_Country],
      PO_ORDERS
    };

  define view ProductsValueHelp as
    select from PRODUCTS {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Product ID'
      }, {
        language: 'DE',
        text    : 'Produkt ID'
      }]
      PRODUCT_ID,

      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 20}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Product Name'
      }]
      PRODUCT_NAME
    };

  define view productCategoryVH as
    select from MD.Products distinct {
      @UI.LineItem      : [{importance: Importance.High}]
      @UI.FieldGroup    : [{position: 10}]
      @EndUserText.label: [{
        language: 'EN',
        text    : 'Product Category'
      }]
      CATEGORY as ![Product_Category]
    };

  define view ProductsConsumption as
    select from MD.Products {
      @UI.LineItem          : [{importance: Importance.High}]
      @UI.FieldGroup        : [{position: 10}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Product ID'
      }, {
        language: 'DE',
        text    : 'Produkt ID'
      }]
      @EndUserText.quickInfo: [{
        language: 'EN',
        text    : 'Product ID Quick'
      }, {
        language: 'DE',
        text    : 'Produkt ID Schnell'
      }]
      @valueList            : {
        collectionPath: 'ProductsVH', searchSupported: false, parameterInOut: [{
          localDataProperty: 'Product_Id',
          valueListProperty: 'Product_Id'
        }], parameterDisplayOnly: [{valueListProperty: 'Product_Name'}]
      }
      PRODUCTID                     as ![Product_Id],

      @UI.LineItem          : [{importance: Importance.High}]
      @UI.FieldGroup        : [{position: 20}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Product Category'
      }]
      @valueList            : {
        collectionPath: 'ProductCatVh', searchSupported: false, parameterInOut: [{
          localDataProperty: 'Product_Category',
          valueListProperty: 'Product_Category'
        }]
      }
      CATEGORY                      as ![Product_Category],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Currency'
      }]
      @UI.FieldGroup        : [{position: 30}]
      CURRENCY                      as ![Product_Currency],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Product Price'
      }]
      @UI.FieldGroup        : [{exclude: true}]
      PRICE                         as ![Product_Price],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Type Code'
      }]
      @UI.FieldGroup        : [{position: 40}]
      TYPECODE                      as ![Product_TypeCode],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Weight'
      }]
      @UI.FieldGroup        : [{exclude: true}]
      WEIGHTMEASURE                 as ![Product_WeightMeasure],

      @UI.LineItem          : [{importance: Importance.Low}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Weight Unit'
      }]
      @UI.FieldGroup        : [{exclude: true}]
      WEIGHTUNIT                    as ![Product_WeightUnit],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Supplier ID'
      }]
      @UI.FieldGroup        : [{position: 50}]
      @valueList            : {
        collectionPath: 'SupplierVH', searchSupported: false, parameterInOut: [{
          localDataProperty: 'Supplier_Id',
          valueListProperty: 'Supplier_Id'
        }], parameterDisplayOnly: [{valueListProperty: 'Supplier_CompanyName'}]
      }
      SUPPLIER.PARTNERID            as ![Supplier_Id],

      @UI.LineItem          : [{importance: Importance.High}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Supplier'
      }]
      @UI.FieldGroup        : [{position: 60}]
      SUPPLIER.COMPANYNAME          as ![Supplier_CompanyName],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Supplier City'
      }]
      @UI.FieldGroup        : [{position: 70}]
      SUPPLIER.ADDRESSES.CITY       as ![Supplier_City],
      SUPPLIER.ADDRESSES.POSTALCODE as ![Supplier_PostalCode],
      SUPPLIER.ADDRESSES.STREET     as ![Supplier_Street],
      SUPPLIER.ADDRESSES.BUILDING   as ![Supplier_Building],

      @UI.LineItem          : [{importance: Importance.Medium}]
      @EndUserText.label    : [{
        language: 'EN',
        text    : 'Supplier Country'
      }]
      @UI.FieldGroup        : [{position: 80}]
      @valueList            : {
        collectionPath: 'Countries', searchSupported: false, parameterInOut: [{
          localDataProperty: 'Supplier_Country',
          valueListProperty: 'CODE'
        }], parameterDisplayOnly: [{valueListProperty: 'NAME'}]
      }
      SUPPLIER.ADDRESSES.COUNTRY    as ![Supplier_Country]
    };

  define view ProductValuesView as
    select from MDViews.ProductView {
      ![Product_Id],
      PO_ORDERS.![CurrencyCode] as ![CurrencyCode],
      sum(
        PO_ORDERS.![Amount]
      )                         as ![POGrossAmount]
    }
    group by
      ![Product_Id],
      PO_ORDERS.![CurrencyCode];

  @Search.searchable: true
  define view texts as
    select from Util.Texts as B {
      B.TEXTID,
      B.LANGUAGE,
      B.ISOLANGUAGE,

      @Search.defaultSearchElement: true
      B.TEXT
    };


  @Search.searchable       : true
  @EnterpriseSearch.enabled: true
  define view ProductTexts as
    select from MD.Products as P
    join MDViews.texts as T
      on P.NAMEID = T.TEXTID
    {
      @EnterpriseSearch.key             : true
      P.PRODUCTID,

      @EnterpriseSearch.presentationMode: [ #TITLE]
      @EnterpriseSearch.usageMode       : [ #SUGGESTION, #AUTO_FACET]
      @Search.defaultSearchElement      : true
      P.CATEGORY,

      @EnterpriseSearch.presentationMode: [ #DETAIL]
      @EnterpriseSearch.usageMode       : [ #SUGGESTION, #AUTO_FACET]
      @Search.defaultSearchElement      : true
      T.TEXT
    };


/*@Search.searchable        : true
@EnterpriseSearch.enabled : true
define view productTexts as
   select from MD.Products as A
   mixin
   {
      T : association [ 1 ] to texts on
         A.NAMEID = T.TEXTID;
   }
   into
   {
      @EnterpriseSearch.key : true
      @EnterpriseSearch.presentationMode: [ #HIDDEN ]
      A.PRODUCTID,

      @EnterpriseSearch.presentationMode: [ #TITLE ]
      @EnterpriseSearch.usageMode: [ #SUGGESTION, #AUTO_FACET ]
      @Search.defaultSearchElement : true
      A.CATEGORY,

      @EnterpriseSearch.highlighted      : {
                                              enabled : true
                                           }
      @Search.defaultSearchElement       : true
      @EnterpriseSearch.presentationMode : [ #DETAIL ]
      T.TEXT
   };*/

};
