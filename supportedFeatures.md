## Features Currently supported in SAP HANA Application Migration Assistant:
- Creating an initial CAP application involves enhancing project configuration for SAP HANA Cloud and XSUAA, generating an MTA deployment descriptor, odata v2 support , sqlite support and Build Configuration.
  
- Converting "hdbconstraint", "hdbindex", "hdbview", "hdbtable", "hdbsequence", "hdbprocedure", "hdbtablefunction", "hdbfunction", "hdbstructuredprivilege", "hdblibrary", "hdbcalculationview", "hdbanalyticprivilege",
"hdbrole", "hdbsynonymconfig", "hdbtabledata", artifacts into a CAP (Cloud Application Programming) compliant format.

- Converting the file extensions from "hdbcds" files into "cds" for CAP compliance.
  
- As part of the transition to CAP compliant format, the notation in view definitions should be modified from "" to ![]. This specific [delimiter](https://cap.cloud.sap/docs/cds/cdl#delimited-identifiers) enhances the reliability of processing in CAP CDS.
  
- Converts HANA CDS Datatypes to CAP CDS Datatypes.
    | HANA CDS | CAP CDS |
    |----------|---------|
    |LocalDate|Date|
    |LocalTime|Time|
    |UTCDateTime|DateTime|
    |UTCTimestamp|Timestamp|
    |BinaryFloat|Double|
    |decimal|Decimal|
    |hana.CHAR|hana.VARCHAR|
  
- Replacing @OData.publish:true with @cds.autoexpose for enhanced functionality.
  
- Creates “.hdbtabletype” files corresponding to each table type definition.
  
- Converts temporary entities to regular entities in CAP CDS.
  
- Relocating all the CDS files from their individual directories, for instance, src/, to the corresponding db/cds folder in the CAP project. Additionally, an index.cds file referring to these CDS files is created in the src folder.
  
- Log file generation using CDS Compile.
  
- Converts the technical configuration and element configuration to be CAP compliant, accomplished through the use of “@sql.append”. 
- Remove Series Entity which is not supported in CAP CDS.
  
- Replacing the annotation  @Comment  for table and element with “/** */ “to CAP Compliant Format and adding parameters required in package.json.
  
- Remove Schema Configuration.
  
- Updates .hdinamespace file with the proper configuration.
  
- Rename the other Hana database artifacts to SAP CAP CDS supported format. Specifically, entities should be converted to uppercase and any instances of “.”, “::” should be replaced with “_”.
  
- Copy the UI/ web folder into CAP Application.
  
- Removes empty directories.
  
- Removes full text index which is no longer supported in hana-cloud.

- A folder named 'unsupported_feature' has been created by the extension to contain file extensions that are not supported in HANA Cloud.
  
- Creates skeleton file for calculation views.
  
- Formatting the cds files is done with @sap/cds-lsp.
  
- Renaming the annotations.

- Creating Proxy Table entities for Hana Native object ".hdbtable".

- Creating Proxy Views for Hana Native object ".hdbcalculationview".

- Creating Proxy Hdbview for Hana Native object ".hdbview".

- Creating Proxy Hdbfunction for Hana Native object ".hdbtablefunction".

- Support for [type of](https://cap.cloud.sap/docs/cds/cdl#typereferences) operator is provided.

- Converting Join, Aggregation, Union and Projection in calculation views into supported format.

- In calculation Views unsupported data types date(), day(), time() and counter datatype ( Integer )  are converted into respective supported data types daydate(), daytime(), secondtime() and counter datatype ( BIGINT ) .

- The SAP HANA Application Migration Assistant performs the following type conversions on these files: ".hdbtable", ".hdbprocedure", ".hdbfunction", ".hdbdropcreatetable", ".hdbtrigger", ".hdblibrary", ".hdbstructuredprivilege", ".hdbview", ".hdbindex", ".hdbconstraint", ".hdbtablefunction", ".hdbsequence" :

    - ALPHANUM is changed to NVARCHAR
    - TEXT is changed to NCLOB
    - SHORTTEXT is changed to NVARCHAR
    - CHAR is changed to VARCHAR
