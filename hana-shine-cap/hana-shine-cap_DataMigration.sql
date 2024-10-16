

CREATE TABLE <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST (
    SOURCE_SCHEMA VARCHAR(256) NOT NULL,
    SOURCE_NAME VARCHAR(256) NOT NULL,
    TARGET_SCHEMA VARCHAR(256) NOT NULL,
    TARGET_NAME VARCHAR(256) NOT NULL
);

-- Insert one pair of Source Table and Target Table 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_USER', 'UserData.User', '<TARGET_SCHEMA_NAME>', 'USERDATA_USER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.DataGenerationTime', '<TARGET_SCHEMA_NAME>', 'UTIL_DATAGENERATIONTIME'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.T006', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_T006'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.T006A', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_T006A'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURC', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURC'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURF', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURF'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURN', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURN'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURR', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURR'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURT', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURT'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURV', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURV'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURW', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURW'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Conversions.TCURX', '<TARGET_SCHEMA_NAME>', 'CONVERSIONS_TCURX'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Core.MapKeys', '<TARGET_SCHEMA_NAME>', 'CORE_MAPKEYS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Core.SHINE_TIME_DIM', '<TARGET_SCHEMA_NAME>', 'CORE_SHINE_TIME_DIM'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Customers', '<TARGET_SCHEMA_NAME>', 'CUSTOMERS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Jobs.Data', '<TARGET_SCHEMA_NAME>', 'JOBS_DATA'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Jobs.ScheduleDetails', '<TARGET_SCHEMA_NAME>', 'JOBS_SCHEDULEDETAILS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'JobsDemo.Details', '<TARGET_SCHEMA_NAME>', 'JOBSDEMO_DETAILS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'JobsDemo.RuntimeSchedules', '<TARGET_SCHEMA_NAME>', 'JOBSDEMO_RUNTIMESCHEDULES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'MD.Addresses', '<TARGET_SCHEMA_NAME>', 'MD_ADDRESSES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'MD.BusinessPartner', '<TARGET_SCHEMA_NAME>', 'MD_BUSINESSPARTNER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'MD.Employees', '<TARGET_SCHEMA_NAME>', 'MD_EMPLOYEES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'MD.Products', '<TARGET_SCHEMA_NAME>', 'MD_PRODUCTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'MD.productLog', '<TARGET_SCHEMA_NAME>', 'MD_PRODUCTLOG'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'PO.Header', '<TARGET_SCHEMA_NAME>', 'PO_HEADER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'PO.Item', '<TARGET_SCHEMA_NAME>', 'PO_ITEM'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Product.ProductLog', '<TARGET_SCHEMA_NAME>', 'PRODUCT_PRODUCTLOG'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Product.Products', '<TARGET_SCHEMA_NAME>', 'PRODUCT_PRODUCTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'PurchaseOrder.Header', '<TARGET_SCHEMA_NAME>', 'PURCHASEORDER_HEADER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'PurchaseOrder.Item', '<TARGET_SCHEMA_NAME>', 'PURCHASEORDER_ITEM'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'SO.Filter', '<TARGET_SCHEMA_NAME>', 'SO_FILTER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'SO.Header', '<TARGET_SCHEMA_NAME>', 'SO_HEADER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'SO.Item', '<TARGET_SCHEMA_NAME>', 'SO_ITEM'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'User.Details', '<TARGET_SCHEMA_NAME>', 'USER_DETAILS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.Attachments', '<TARGET_SCHEMA_NAME>', 'UTIL_ATTACHMENTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.Constants', '<TARGET_SCHEMA_NAME>', 'UTIL_CONSTANTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.Messages', '<TARGET_SCHEMA_NAME>', 'UTIL_MESSAGES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.MySeriesEntity', '<TARGET_SCHEMA_NAME>', 'UTIL_MYSERIESENTITY'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.Notes', '<TARGET_SCHEMA_NAME>', 'UTIL_NOTES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.SSCOOKIE', '<TARGET_SCHEMA_NAME>', 'UTIL_SSCOOKIE'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.SeriesData', '<TARGET_SCHEMA_NAME>', 'UTIL_SERIESDATA'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'Util.Texts', '<TARGET_SCHEMA_NAME>', 'UTIL_TEXTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'jsonExamples.jsonTbl1', '<TARGET_SCHEMA_NAME>', 'JSONEXAMPLES_JSONTBL1'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'log.errors', '<TARGET_SCHEMA_NAME>', 'LOG_ERRORS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'log.messages', '<TARGET_SCHEMA_NAME>', 'LOG_MESSAGES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'lrep.variants', '<TARGET_SCHEMA_NAME>', 'LREP_VARIANTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::MDShadow.Addresses', '<TARGET_SCHEMA_NAME>', 'SHADOW_MDSHADOW_ADDRESSES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::MDShadow.BusinessPartner', '<TARGET_SCHEMA_NAME>', 'SHADOW_MDSHADOW_BUSINESSPARTNER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::MDShadow.Employees', '<TARGET_SCHEMA_NAME>', 'SHADOW_MDSHADOW_EMPLOYEES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::MDShadow.Products', '<TARGET_SCHEMA_NAME>', 'SHADOW_MDSHADOW_PRODUCTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::POShadow.Header', '<TARGET_SCHEMA_NAME>', 'SHADOW_POSHADOW_HEADER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::POShadow.Item', '<TARGET_SCHEMA_NAME>', 'SHADOW_POSHADOW_ITEM'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::SOShadow.Filter', '<TARGET_SCHEMA_NAME>', 'SHADOW_SOSHADOW_FILTER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::SOShadow.Header', '<TARGET_SCHEMA_NAME>', 'SHADOW_SOSHADOW_HEADER'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::SOShadow.Item', '<TARGET_SCHEMA_NAME>', 'SHADOW_SOSHADOW_ITEM'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::UtilShadow.Attachments', '<TARGET_SCHEMA_NAME>', 'SHADOW_UTILSHADOW_ATTACHMENTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::UtilShadow.Constants', '<TARGET_SCHEMA_NAME>', 'SHADOW_UTILSHADOW_CONSTANTS'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::UtilShadow.Notes', '<TARGET_SCHEMA_NAME>', 'SHADOW_UTILSHADOW_NOTES'); 
INSERT INTO <MIGRATION_USER>.XSC2CAP_DATA_MIGRATION_TABLE_LIST(SOURCE_SCHEMA, SOURCE_NAME, TARGET_SCHEMA, TARGET_NAME) VALUES ('SHINE_CORE', 'shadow::UtilShadow.Texts', '<TARGET_SCHEMA_NAME>', 'SHADOW_UTILSHADOW_TEXTS'); 

-- Create Table DDL for MIGRATION_PARAMETERS
CREATE TABLE <MIGRATION_USER>.MIGRATION_PARAMETERS(PARAMETER_NAME NVARCHAR(256), PARAMETER_VALUE NVARCHAR(5000)); 

-- Enable xsc2cap data migration mode by inserting an instruction
INSERT INTO <MIGRATION_USER>.MIGRATION_PARAMETERS VALUES ('enable_xsc2cap_migration', 'TRUE');
