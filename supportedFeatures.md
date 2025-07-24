## Features Currently supported in SAP HANA Application Migration Assistant:

**Project Configuration Features During Migration**

The following features and changes have been applied as part of the project configuration during the migration process:

    - Enhancing project configuration for SAP HANA Cloud and XSUAA
    - Generating an MTA deployment descriptor
    - Enabling OData V2 support
    - Adding SQLite support
    - Setting up build configuration
    - Configuring comments

**HANA native artifacts:**

such as `hdbtable`, `hdbcalculationviews`, `hdbview`, and `hdbfunctions` are not directly read by CDS. Make the Object Known to CDS, proxy files are created with certain limitations.  
  _For more information, refer to the [SAP CAP Documentation](https://cap.cloud.sap/docs/advanced/hana#make-the-object-known-to-cds).

**HANA Native Artifact Conversion: .hdbcds to CAP CDS**

The migration assistant converts HANA native artifact `.hdbcds` files into SAP CAP CDS format. During this process:

- The tool parses the `.hdbcds` file and rewrites the content into CAP CDS syntax.
- HANA Cloud and CAP-supported datatypes are mapped accordingly
- Unsupported or deprecated datatypes are either omitted or replaced with the closest CAP equivalent.
- Entity definitions, associations, and annotations are translated to CAP CDS constructs.
- The resulting CDS files are compatible with SAP HANA Cloud and CAP data models.

This ensures seamless migration of your HANA data definitions into the CAP environment, preserving structure and datatype compatibility.

**Proxy entities:** 

for calculation views are created in their respective folders under the `CDS folder`.  
For `hdbtables`, `hdbviews`, and `hdbfunctions`, proxies are created in the CDS folder with the prefix `Proxy_` followed by the object type and     the extension `.cds`.

**Data type conversion** in calculation views:  
  - `date()` → `daydate()`  
  - `day()` → `daydate()`  
  - `time()` → `daytime()`  
  - `counter` (Integer) → `BIGINT`

**Table renaming:**  
  During migration, tables are renamed. All dependent SAP HANA Cloud artifacts are updated accordingly.For example, a table originally named `sap.hana.democontent::product.item` in HANA XSA is renamed to `SAP_HANA_DEMOCONTENT_PRODUCT_ITEM` in sap CAP CDS.

**Table type definitions** are not supported in SAP CAP CDS.  
  Hence `.hdbtabletype` definitions are created and placed in the `types` folder in the migrated project.

**Calculation views with parameters:**  
  If a parameter's datatype is not defined as a variable property, the proxy will default to `string`. Adjust manually if needed.

**Series entity** is not supported in SAP HANA Cloud and will be converted to a regular entity. Please refer the [SAP HANA Cloud Documentation](https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide/series-data).

**Handling Reserved Words and Identifiers:**  
  If reserved words like `KEY` are used as elements in CDS entities, they are changed to `![key]`.If an entity name or element is defined using a string or double quotes (e.g., "id") are converted into `![id]`.
  
  **Example:**  
  Instead of: `entity "product item" { "id": String; }`  
  Use: `entity ![product item] { ![id]: String; }`

**@sql.append support:**  
  The following configurations are supported using @sql.append in SAP CAP CDS: `Partitioning`, `Storagetype`, `Grouping`, and `Unload Priority`.

**Indexes:**  
  Based on the technical configuration in SAP HANA hdbcds, if indexes are enabled for a table, then respective index files are created under the `hdbindex` folder.

**Fuzzy Search Indexes:**  
  If fuzzy search is enabled on a table or column, corresponding fuzzy search index files are generated under the `hdbindex` folder.
  - **Implicit Fuzzy Search Indexes:**  
    Indexes that are automatically created by the system (such as primary key indexes) are considered implicit indexes and are handled by the database without explicit index files. In HANA 2.0, certain SQL types (like SHORTTEXT and TEXT) always had an implicit fulltext index, but in HANA Cloud, these require explicit fuzzy search index creation during migration.created fuzzy search/text indexes for SHORTTEXT and TEXT datatype elements.
  - **Explicit Fuzzy Search Indexes:**  
    Indexes that are specifically defined in the technical configuration are created as explicit index files under the `hdbindex` folder.

**Full Text Index Removal:**  
  Full text indexes, which are no longer supported in SAP HANA Cloud, are removed during the migration process. For cases involving Text Analysis or Text Mining, please refer to the post-migration steps.

**File Extension Conversion:**  
  All file extensions are converted from `.hdbcds` to `.cds` for SAP CAP compliance.

**CDS Datatype Conversion:**  
  The migration process converts SAP HANA CDS datatypes to SAP CAP CDS datatypes as follows:
- LocalDate → Date
- LocalTime → Time
- UTCDateTime → DateTime
- UTCTimestamp → Timestamp
- BinaryFloat → Double
- decimal → Decimal
- hana.CHAR → hana.VARCHAR

**OData Annotation Update:**  
  Replaced `@OData.publish:true` with `@cds.autoexpose` for enhanced functionality and alignment with SAP CAP best practices.

**CDS File Relocation:**  
  All CDS files are relocated from their individual directories (e.g., `src/`) to the corresponding `db/cds` folder in the SAP CAP project. Additionally, an `index.cds` file referring to these CDS files is created in the `src` folder.

**Row Table Creation:**  
  Row table creation configuration is achieved by using the annotation `@sql.prepend`.

**Comment Annotation Update:**  
  The annotation `@Comment` for tables and elements is replaced with the SAP CAP compliant format using `/** ... */` style comments and Required parameters are added to `package.json` for SAP CAP compliance.

**Unsupported Features Folder:**  
  A folder named `unsupported_feature` has been created by the extension to contain file extensions that are not supported in SAP HANA Cloud.

**CDS File Formatting:**  
  Formatting of CDS files is performed using `@sap/cds-lsp` to ensure consistent formatting across the entire CAP CDS project.

**Calculation View Conversion:**  
  Join, Aggregation, Union, and Projection operations in calculation views are converted into SAP Hana Cloud supported formats during migration.

**Data Type Conversion:**  
  The following data type conversions are done during migration in the respective files `.hdbtable`, `.hdbprocedure`, `.hdbfunction`, `.hdbdropcreatetable`, `.hdbtrigger`, `.hdblibrary`, `.hdbstructuredprivilege`, `.hdbview`, `.hdbindex`, `.hdbconstraint`, `.hdbtablefunction`, `.hdbsequence`:
- ALPHANUM → NVARCHAR
- TEXT → NCLOB
- SHORTTEXT → NVARCHAR
- CHAR → VARCHAR
- BINTEXT → NCLOB

**Cross Container Access and Schema Configuration:** 
  Cross container access and schema configuration are set up in the `mta.yaml` file to enable required access and integration between containers during migration.

**SAP HANA CDS Access Policy entity:**
Not supported in CAP CDS hence it is removed.
