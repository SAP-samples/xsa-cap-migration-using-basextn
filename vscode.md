# SAP HANA XS Advanced to CAP Migration Using Visual Studio Code

This guide provides step-by-step instructions for migrating SAP HANA XS Advanced applications to SAP Cloud Application Programming Model (CAP) using Visual Studio Code with the SAP HANA Application Migration extension.

## Table of Contents
- [Solution Architecture](#solution-architecture)
- [Prerequisites](#prerequisites)
- [Installation and Setup](#install-sap-hana-application-migration-extension)
- [Migration Steps](#migration-steps)
  - [Step 1: Invoke the SAP HANA Application Migration Extension](#step-1-invoke-the-sap-hana-application-migration-extension)
  - [Step 2: Configure Migration Options](#step-2-configure-migration-options)
  - [Step 3: Configure SAP GenAI capabilities](#step-3-configure-sap-genai-capabilities)
  - [Step 4: Select Schema](#step-4-select-schema)
  - [Step 5: Execute Migration](#step-5-execute-migration)
- [Post-Migration Steps](#post-migration-steps)
- [Next Steps](#next-steps)

---

## Solution Architecture

The following diagram illustrates the migration architecture when using Visual Studio Code:

   <p align="center">
   <img src="images/SAP_HAMA.png" alt="VS Code Migration Architecture">
   </p>

## Prerequisites

Before starting the migration process in Visual Studio Code, ensure you have the following:

### Software Requirements

| Component | Version | Purpose |
|-----------|---------|---------|
| **Visual Studio Code** | 1.104 or higher | Development IDE |
| **Java (JDK)** | 17 or higher | Required for migration extension |
| **Node.js** | 20 or higher | Required for migration extension |
| **Python** | 3.10 to 3.13 | Required for migration extension |
| **SAP Cloud Connector**(Optional) | Latest | Connects local environment to on-premise HANA|

### SAP Infrastructure Requirements

- **XS Advanced Source System**
  - - XS Advanced on-premise database source system with the [SHINE](https://github.com/SAP-samples/hana-shine-xsa.git) content. Specifically the schema name of the deployed container.

- **SAP BTP Account**
  - SAP BTP Cloud Foundry subaccount
  - Service instances:
    - **SAP HANA Cloud**
    - **SAP HANA Schemas and HDI Containers**
  - (Optional) **SAP AI Core** subscription for Service Layer GenAI conversion - To set up SAP AI Core, see [Initial Setup](https://help.sap.com/docs/sap-ai-core/sap-ai-core-service-guide/initial-setup?version=CLOUD).

> [!NOTE]
> **Service Layer Conversion:** GenAI-based service layer conversion (`.xsodata`, `.xsjs`, `.xsjslib` files) requires additional AI services. This feature  require SAP AI Core Instances.
> Ensure the files in your project contain no sensitive or confidential information, as they will be processed by a Large Language Model (LLM). Review the converted project files carefully before deployment to verify correctness, security, and compliance.
---

## Install SAP HANA Application Migration Extension

1. **Open Visual Studio Code**

2. **Open Extensions View**
   - Click on the Extensions icon in the Activity Bar (left sidebar)
   - Or press `Ctrl+Shift+X` (Windows/Linux) or `Cmd+Shift+X` (macOS)

3. **Search for the Extension**
   - Type `SAP HANA Application Migration Extension` in the search box

4. **Install the Extension**
   - Click on the extension in the search results
   - Click the **Install** button

   <p align="center">
   <img src="images/extvsc.png" alt="Installing SAP HANA Application Migration Extension" width="700">
   </p>

5. **Verify Installation**
   - After installation, the extension should appear in your installed extensions list
   - You may need to reload VS Code

---

## Migration Steps

### Step 1: Invoke the SAP HANA Application Migration Extension

1. **Open Command Palette**
   - Press `F1` or `Ctrl+Shift+P` (Windows/Linux) / `Cmd+Shift+P` (macOS)

2. **Search for Migration Command**
   - Type: `SAP HANA Application Migration`
   - Select: **SAP HANA Application Migration Extension**

### Step 2: Configure Migration Options

#### 2.1 Select Migration Path

1. When the Migration extension Wizard opens, select the migration path. Since we are migrating from XS Advanced to SAP CAP, select `XSA to CAP` as your migration path.	

   <p align="center">
   <img src="images\homescreen1.png" width="600">
   </p>

#### 2.2 Enter Source System Details

1. **Enter Host and Port Details**
   - **Enter SAP HANA Host Name**: Migration user username
   - **Enter SAP HANA Port Number**: Migration user password
2. **Enter Database Credentials**
   - **Enter the SAP HANA Database Migration User Name**: Migration user username
   - **Enter the SAP HANA Database Migration User Password**: Migration user password
> [!NOTE]
> The entered user must be granted SELECT permission on M_ALL_CONTAINERS, M_ALL_CONTAINER_SCHEMAS, as well as the corresponding HDI container schemas to access the required metadata and data objects
```
GRANT SELECT ON "_SYS_DI"."M_ALL_CONTAINERS" TO <USER_NAME>;
GRANT SELECT ON "_SYS_DI"."M_ALL_CONTAINER_SCHEMAS" TO <USER_NAME>';
```	

3. **Click Login** to authenticate

   <p align="center">
   <img src="images/logindb.png" width="600">
   </p>

4. **Verify Connection**

- Once authenticated, you'll see a success message

   <p align="center">
   <img src="images/loginEnabled.png" width="600">
   </p>

#### 2.3 Select Source Type

1. **Choose Source Type** from dropdown:select your cloned project from the drop down. In this case, its `hana-shine-xsa`.

>[!NOTE]
> clone the source application into your workspace, in this example we are using SAP HANA [SHINE](https://github.com/SAP-samples/hana-shine-xsa.git)

2. Select the DB Folders(It can be multiple). In this case it will be `core-db` and `user-db`.

   <p align="center">
   <img src="images/sourcevsc.png" width="600">
   </p>

#### 2.4 Configure Target Settings

1. **Select Target Directory**
   - Choose the target directory. where the migration results will be stored

2. **Enter Target Folder Name**
   - Specify a unique name for the migrated project
   - Example: `hana-shine-cap`

   <p align="center">
   <img src="images/targetvsc.png" width="600">
   </p>

### Step 3 :Configure SAP GenAI capabilities

#### 3.1 Service Layer using GenAI capabilities.

1. **Service Layer Migration**
    - Select ***Yes*** for service layer migration. Service layer migration uses SAP generative-AI tools to convert XS objects to SAP CAP service definitions and custom handlers.
      <p align="center">
      <img src="images/srvvsc.png" width="600">
      </p>
>[!NOTE]
>An SAP AI Core instance & service key and the gpt-4o model are required for the service layer conversion. You can find more information about SAP AI Core API access [here](https://help.sap.com/docs/sap-ai-core/sap-ai-core-service-guide/what-is-sap-ai-core?locale=en-US).

#### 3.2 Enter SAP AI Core credentials.

1. Enter the value for AI Core Client ID
2. Enter the value for AI Core Client Secret
3. Enter the value for AI Core Auth URL
4. Enter the value for AI Core Base URL
5. Enter the value for AI Core Resource Group

> [!NOTE]
> More Information refer [SAP AI CORE Quick Start](https://help.sap.com/docs/sap-ai-core/generative-ai/quick-start?version=CLOUD)

**Click Next**

### Step 4: Select Schema

   1. Enter the schema name of the containers
      example : for shine two schema 1. SHINE_USER and 2. SHINE_CORE

         <p align="center">
         <img src="images/schemavsc.png" width="600">
         </p>

### Step 5: Execute Migration

1. **Click "Finish"** to start migration

2. **Monitor Progress**
   - A notification will appear showing migration progress
   - Check the Output panel for detailed logs:
     - View → Output
     - Select "SAP HANA Application Migration" from dropdown

      <p align="center">
      <img src="images/migvsc.png" width="600">
      </p>

4. **Migration Complete**
   - The extension will generate:
     - **CAP project structure** with migrated artifacts
     - **db/** folder with CDS models and HANA artifacts
     - **srv/** folder (if service layer conversion enabled)
     - **report.html** with migration summary and manual review items

5. **Open Migration Report**
   - Locate `report.html` in your target folder
   - Open in browser to review:
     - Successfully migrated artifacts
     - Items requiring manual intervention
     - Known issues and recommendations

---

## Post-Migration Steps

After migration completes, follow these steps to prepare for deployment:

### 1. Review Migration Report

- Open `report.html` in your browser
- Review all warnings and errors
- Note items requiring manual changes

### 2. Database Post-Migration Changes

Follow the detailed steps in the main [README.md - Step 5: Database Post Migration Changes](README.md#step-5-post-migration-changes)

Key actions include:
- Remove references to external schemas not yet migrated
- Configure synonyms for public schemas (SYS, _SYS_BI)
- Update role configurations
- Fix entity references and naming convention changes
- Adjust SQL syntax for HANA Cloud compatibility

### 3. Service Layer Post-Migration Changes (If Applicable)

If you enabled service layer conversion, follow [README.md - Step 6: Service Layer Migration](README.md#step-6-service-layer-migration)

Key actions include:
- Validate generated `service.cds` and `service.js` files
- Review custom handlers in `handlers/` folder
- Update import paths
- Test service endpoints
- Refine GenAI-generated code

### 4. Build the Project

```bash
cds build --profile production
```

### 6. Deploy to SAP HANA Cloud

Follow [README.md - Step 7: Deployment](README.md#step-7-deployment-of-the-migrated-database-artifacts)

---

## Next Steps

- **Data Migration**: See [DataMigration.md](DataMigration.md) for data migration procedures
- **Deployment**: Deploy artifacts to SAP HANA Cloud
- **Testing**: Validate migrated functionality
- **Optimization**: Review and optimize generated code

## Additional Resources
- [SAP Hana Application Migration Vscode](https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide/migrate-xs-advanced-application-to-sap-cap-and-sap-hana-cloud-with-sap-hana-application-migration-assistant-in-visual-studio-code)
- [Main README](README.md) - Complete migration guide
- [Supported Features](supportedFeatures.md) - List of supported artifacts
- [Data Migration Guide](DataMigration.md) - Data migration procedures
- [SAP HANA Cloud Migration Guide](https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide)
- [SAP CAP Documentation](https://cap.cloud.sap/docs/)

## Troubleshooting

### Common Issues

**Extension not appearing in Command Palette**
- Verify extension is installed and enabled
- Reload VS Code window (Ctrl+R / Cmd+R)
- Check VS Code version meets minimum requirements

**Connection to source system fails**
- Verify host and post is reachable using curl
- Ensure migration user has correct privileges

**Migration fails during execution**
- Check Output panel for detailed error messages
- Verify source artifacts have no errors
- Ensure all prerequisites are met
- Review migration report for specific issues

**GenAI service layer conversion not available**
- Verify AI services are configured in BTP
- Check your BTP account entitlements
- Contact SAP support for AI service access

---

For additional support, see [README.md - How to Obtain Support](README.md#how-to-obtain-support).
