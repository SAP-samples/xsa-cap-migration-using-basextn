# Data Migration Configuration
Migrating from SAP HANA database to SAP HANA Cloud requires a dedicated user in your SAP HANA source database.
A dedicated user is required for the migration to run for which the user must be created or necessary privileges must be granted to an existing user in your SAP HANA source database. Follow the below steps to assign the privileges:

1. Login into your source SAP HANA system With Administrator User.

2. Open the SQL Console.

3. (optional) Create a data migration user by executing the following statement:
   
   **Note:** Before executing the statement, replace ```<password>``` with a password that complies with the default SAP HANA password policy. It must have at least 8 characters and comprise of at least one uppercase letter, atleast one lowercase letter and atleast one number.
   
   ```
   CREATE USER <username> PASSWORD <password> NO FORCE_FIRST_PASSWORD_CHANGE;
   ```

4. Grant the necessary privileges to the data migration user. To do that, run the following script in an SQL Console in your source SAP HANA system:

   ```
   GRANT SELECT ON _SYS_REPO.DELIVERY_UNITS TO <username>;
   GRANT SELECT ON _SYS_REPO.ACTIVE_OBJECT TO <username>; 
   GRANT CATALOG READ TO <username>;
   GRANT INIFILE ADMIN TO <username>;
   GRANT TRUST ADMIN TO <username>;
   GRANT CERTIFICATE ADMIN TO <username>;
   GRANT CREATE REMOTE SOURCE TO <username>;
   GRANT EXPORT TO <username>;
   GRANT EXECUTE ON SYS.EXPORT_CATALOG_FOR_MIGRATION_DEV TO <username>;
   DO BEGIN
   	SELECT * FROM PUBLIC.M_SERVICES WHERE SERVICE_NAME = 'diserver';
   	IF ::ROWCOUNT != 0
   	THEN
   		EXEC 'CREATE LOCAL TEMPORARY TABLE #PRIVILEGES LIKE _SYS_DI.TT_API_PRIVILEGES';
   		EXEC 'INSERT INTO #PRIVILEGES (PRINCIPAL_NAME, PRIVILEGE_NAME, OBJECT_NAME) SELECT ''<username>'', PRIVILEGE_NAME, OBJECT_NAME FROM _SYS_DI.T_DEFAULT_DI_ADMIN_PRIVILEGES';
   		EXEC 'CALL _SYS_DI.GRANT_CONTAINER_GROUP_API_PRIVILEGES_WITH_GRANT_OPTION(''_SYS_DI'', #PRIVILEGES, _SYS_DI.T_NO_PARAMETERS, ?, ?, ?)';
   		EXEC 'DROP TABLE #PRIVILEGES';
   		EXEC 'GRANT SELECT ON _SYS_DI.TT_API_PRIVILEGES to <username>';
   		EXEC 'GRANT SELECT ON _SYS_DI.T_DEFAULT_CONTAINER_GROUP_ADMIN_PRIVILEGES to <username>';
   		EXEC 'GRANT SELECT ON _SYS_DI.T_NO_PARAMETERS to <username>';
   	END IF;
   END;
   GRANT SELECT ON SCHEMA _SYS_STATISTICS TO <username>;
   GRANT SELECT ON SCHEMA _SYS_BI TO <username>;
   ```

5. The data migration user should also have the necessary privileges for each source schema that has been migrated. To grant that execute the following query:
   
   ```
   GRANT SELECT ON SCHEMA "<SCHEMA_NAME>" TO <username>;
   ```
   
6. **Note:** If the Source SAP HANA Database is in the Neo environment, then execute the following query:
   
   ```
   GRANT SAP_INTERNAL_HANA_SUPPORT TO <username>; -- Only required when migrating SAP HANA databases in the Neo environment
   ```
   
   
**Note:** 
   
   To grant the necessary privileges for migration using the SAP HANA Cloud self-service migration tool, the target HDI container schema must be accessible by the database user performing the migration. Use the following SQL commands to grant these privileges and run it in the target SAP HANA Cloud database system:
   
   ```
   CREATE LOCAL TEMPORARY COLUMN TABLE #PRIVILEGES LIKE _SYS_DI.TT_SCHEMA_PRIVILEGES;
INSERT INTO #PRIVILEGES(PRIVILEGE_NAME, PRINCIPAL_SCHEMA_NAME, PRINCIPAL_NAME) 
VALUES ('SELECT', '', '<DB_USER>');
CALL <TARGET_SCHEMA>#DI.GRANT_CONTAINER_SCHEMA_PRIVILEGES(#PRIVILEGES, _SYS_DI.T_NO_PARAMETERS, ?, ?, ?);
DROP TABLE #PRIVILEGES;
   ```
   
Replace <DB_USER> with the appropriate SAP HANA Cloud database user and <TARGET_SCHEMA> with the target schema name.

   
Once the necessary privileges are assigned, follow the below steps:

1. Open the Command palette and type, “SAP HANA Application Migration Assistant” and select the command when it appears.

<p align="center">
<img src="images\SAPHanaMigrationAssistant.png" width="700" height="150">
</p>


2. When the migration wizard opens, select the Data Migration Configuration Template as shown below:

<p align="center">
<img src="images\DataMigrationTemplateNew.png" width="600" height="400">
</p>


3. In the Data Source Page of the wizard, choose the destination that you previously created from the Dropdown menu as shown below:

<p align="center">
<img src="images\Destinations_DM.png" width="600" height="400">
</p>


4. Enter the user credentials for the SAP HANA Database Migration User – username and password – into their respective fields. Hit the login button to authorize these credentials and verify if all required privileges are granted for this Migration User. The Next button will be enabled only if all the privileges mentioned in the above step are assigned. 

<p align="center">
<img src="images\UserCredDM.png" width="600" height="350">
</p>


5. To proceed, click on the next button.

6. In the Data Migration Configuration Page of the wizard, select the Data migration configuration sql file from the drop down menu, which would have been created as part of your migrated projects.

<p align="center">
<img src="images\sqlDM.png" width="750" height="400">
</p>


7. Enter the SAP HANA cloud target schema in the next field.

<p align="center">
<img src="images\schemaDM.png" width="750" height="400">
</p>

8. Click on the finish button.

9. Once the finish button is clicked, the content of the DataMigration.sql file in your project is executed and the pop-up message, "Data migration Configuration completed successfully" appears if there are no errors.

<p align="center">
<img src="images\schemaDM2.png" width="450" height="150">
</p>


After completing the above steps, proceed with the Self Service Migration tool to migrate your data from SAP HANA database to SAP HANA Cloud. Use the Data Migration User created in Step 3 to start the migration process.

## For more details, refer to the official documentation:
  
https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide/database-migration-using-self-service-migration-tool
