# Migration of SAP HANA XS Advanced To SAP Cloud Application Programming Model Using SAP HANA Application Migration Assistant

[![REUSE status](https://api.reuse.software/badge/github.com/SAP-samples/xsa-cap-migration-using-basextn)](https://api.reuse.software/info/github.com/SAP-samples/xsa-cap-migration-using-basextn)

## Description
The SAP HANA Application Migration Assistant allows users to migrate XS Advanced application to a SAP CAP application with SAP HANA Cloud as a database. In this sample, only conversion of Source XS Advanced database artifacts to the corresponding target SAP CAP compliance database artifacts are listed.

## Introduction
SAP HANA Interactive Education or [SHINE](https://github.com/SAP-samples/hana-shine-xsa.git) is a demo application. It includes the following features: 
- **HDI Features:**
  - Table
  - HDBCDS Views
  - Sequence
  - Calculation Views
  - Associations
  - Table Functions
  - Synonyms
  - Procedures
  - Cross Container Access
  - Multiple Containers
  - Spatial Features
  - Local Time Data Generation
  - Comments for Tables
  - Index
  - Structured Privilege
  - Analytical Privilege
  - Usage of Table Functions in CDS views

SHINE follows the XS Advanced Programming Model(XSA) and uses SAP HANA on-premise for the database. This article describes the steps to be followed to Migrate this Demo Application from XS Advanced to the SAP Cloud Application Programming Model(CAP) with SAP HANA Cloud as the database using the SAP HANA Application Migration Assistant.


<p align="center">
<img src="images\SolutionDiagramNew.png">
</p>

## Features Currently supported in SAP HANA Application Migration Assistant:
For a detailed list of the features supported by the SAP HANA Application Migration Assistant, please refer to the [supportedFeatures](supportedFeatures.md) link.

## Features that are currently out of scope in SAP HANA Application Migration Assistant:

1. Converting xsodata into SAP CAP service definition
   
2. Converting “xsjs”,”xsjslib” into SAP CAP nodejs
   
3. Creating proxy cds for cross container schema
   
4. Following Artifacts are not currently supported '.hdbreptask', '.hdbvirtualtable', '.hdbflowgraph'

## Requirements
- XS Advanced on-premise database source system with the [SHINE](https://github.com/SAP-samples/hana-shine-xsa.git) content. Specifically the schema name of the deployed containers.
- SAP Business Technology Platform subaccount with `SAP Hana Cloud` and `SAP Hana Schemas and HDI Containers` service instances .
- SAP Business Application Studio Subscription.
- SAP Cloud Connector

## Where to Start
To successfully migrate the SHINE sample application using the SAP HANA Application Migration Assistant, follow the steps below:

1. Install and Configure the SAP Cloud Connector.
2. Setup an SAP BTP Destination to connect to the source system.
3. Create a SAP Business Application Studio Devspace with the SAP HANA Application Migration Assistant Extension installed.
4. Migrate using the SAP HANA Application Migration Assistant.
5. Post Migration Changes.
6. Deployment of the Migrated database artifacts.

#### **Note:** 
```
1. This sample covers only the migration of the database artifacts from SAP Hana XS Advanced Database to SAP Hana Cloud.
2. The migration steps should be tested in a development environment before production.
```

## Steps
## Step-1: Install and Configure the SAP Cloud Connector

1. Install the [SAP Cloud Connector](https://tools.hana.ondemand.com/#cloud) on your local system. For the installation and setup of the cloud connector, please refer to this [Documentation](https://help.sap.com/docs/connectivity/sap-btp-connectivity-cf/installation?locale=en-US).  
  
2. After installing the cloud connector, you can access it by opening your web browser and going to `https://localhost:<port-no>/`. Use your credentials to log in.
   
3. Once you've successfully logged in, you should set up a connection in the Cloud Connector.
   -  This connection should link to the subaccount with the source database. To establish this connection, click on the connector button in the left menu.

   -  Next, enter the necessary details for your subaccount, which include the Region, Subaccount ID, Display Name, Subaccount User, Password, and Location ID. After entering all the information, click on 'Save'.

<p align="center">
	<img src="images\destination1.png" width="600" height="400">
</p>

4. Select the created connection, then add a mapping under 'Cloud to On-Premise' using the following details:
	
   - **Back-end Type**: SAP Hana  
	
   - **Protocol**: TCP  
	
   - **Internal Host**: localhost / on-prem hostname
	
   - **Internal Port**: < portno > (The port number to connect to the database)  
	
   - **Virtual Host**: myvirtualhost  
	
   - **Virtual Port**: This should be the same as your internal port
		
<p align="center">
	<img src="images\destination2.png" width="600" height="400">
</p>
	
## Step-2: Setup an SAP BTP Destination to connect to the source system
  
Navigate to the Target SAP BTP Cloud Foundry subaccount and select 'Destination' under 'Connectivity' from the left menu pane. Create a new destination using the following details:
 
 - **Name**: < Destination name >
 - **Type**: HTTP
 - **URL**: `https://<virtual-host>:<virtual-port-no>/`
 - **ProxyType**: on-premise
 - **Authentication**: NoAuthentication
 - **Locationid**: Location id as mentioned in cloud connector

And the following additional properties: 
 - **HTML5.DynamicDestination** : true
 - **WebIDEEnabled** : true
 - **WebIDEUsage** : xs_hdb 
	
<p align="center">
	<img src="images\destination3.png" width="600" height="400">
</p>

## Step-3: Create a SAP Business Application Studio Devspace with the SAP HANA Application Migration Assistant Extension installed  
	
1. In the sub-account where you created the destination, establish a subscription to SAP Business Application Studio (BAS).

2. Open SAP BAS from the subscription and select "Create Dev Space". Assign a desired name to your Dev Space and select the "Full Stack Cloud Application" type. Then, choose the `SAP HANA Application Migration Assistant` Extension to help with migration. Finally, click on "Create Dev Space".
   
3. Wait for the status of your newly created Dev Space to change to "Running". Once it's running, you can open it by clicking on the name of the Dev space that you just created.
   
4. Navigate to the folder by clicking on File -> Open Folder. Enter the path `/home/user/projects/` and click on OK.
   
5. Clone the XS Advanced Source application to this folder using the Terminal.
   
6. Once the folder opens, you can select the SAP HANA Application Migration Assistant from the Command Palette (You can access the Command Palette from View -> Command Palette).

## Step-4: Migrate using the SAP HANA Application Migration Assistant

1. Open the the Command Palette and type "SAP HANA Application Migration Assistant" and select the command when it appears.
	
2. When the Migration Assistant Wizard opens, select the migration path. Since we are migrating from XS Advanced to CAP, select `XSA to CAP` as your migration path.		

<p align="center">
  <img width="536" alt="HomeScreen" src="images\homescreen.png">
</p>


3. In the Data Source page of the wizard, choose the destination you previously created from the dropdown menu. 
	
<p align="center">
  <img width="544" alt="DestinationList" src="images\destinationList.png">
</p>

4. Enter the user credentials for the SAP HANA Database HDI User—username and password—into their respective fields. Then, click the login button to authorize these credentials. Click on the Next button.
	
<p align="center">
<img width="545" alt="Login" src="images\Destinations.png">
</p> 

5. In the "Source Type" page, select your cloned project from the drop down. In this case, its `hana-shine-xsa`.

<p align="center">
<img width="545" alt="selectType" src="images\selectType.png">
</p>
  
6. Select the DB Folders(It can be multiple). In this case it will be `core-db` and `user-db`.

<p align="center">
<img width="545" alt="DU1" src="images\dbFolder.png">
</p>

7. Choose the target directory. This is where the migration results will be stored.
   
   **Note:** Ensure that the directory you select is a sub-directory of `/home/user/projects`.	

8. Specify a unique name for the Target Folder, where the migration results will be saved. Once you've entered the name, click on Next.

<p align="center">
<img width="545" alt="end" src="images\TargetFolder.png">
</p>

9. In the "Schema" page, Enter the schema name of the containers (For multiple containers, it should be a comma separated values), Once entered, click on Finish.

<p align="center">
<img width="545" alt="end" src="images\schema.png">
</p>

10. Once you see the pop-up notification at the bottom right corner of your screen, it means that the migration process is underway. This notification will keep you updated on all the steps that follow. At the end of the process, a CAP project with the revised database artifacts will be created. Additionally, a `report.html` file will be generated within the project. This file contains detailed information about your project's migration.

<p align="center">
<img width="545" alt="end" src="images\end.png">
</p>

## Step-5: Post Migration Changes
Once the project is created, there are some adjustments we need to make manually as these are not currently handled by the SAP HANA Application Migration Assistant.
 1. For the hana-shine-xsa project, make the following changes:
    - A folder named `unsupported_feature` has been created by the extension to contain file extensions that are not supported in SAP HANA Cloud. Delete this unsupported_feature folder from `core-db/src/data` folder. For more information on the unsupported features, please refer to this [link](https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide/design-time-content-compatibility).
    - Delete `synonyms/sys_rt.hdbsynonym` from `core-db/src` folder.
    - Replace the code in the `mta.yaml` with the below code. Replace `<Project Name>` with the name of your project.
   
      ```
      _schema-version: 3.3.0
      ID: <Project Name>
      version: 1.0.0
      description: A migrated CAP Project.
      parameters:
        enable-parallel-deployments: true
      build-parameters:
        before-all:
          - builder: custom
            commands:
              - npm ci
              - npx cds build --production
      modules:
        - name: <Project Name>-deployer0
          type: hdb
          path: gen/core-db
          deployed-after:
            - <Project Name>-deployer1
          parameters:
            buildpack: nodejs_buildpack
          requires:
            - name: <Project Name>-db0
              properties:
                TARGET_CONTAINER: ~{hdi-container-name}
            - name: <Project Name>-db1
              group: SERVICE_REPLACEMENTS
              properties:
                key: hdi-user-service
                service: ~{user-container-name}
        - name: <Project Name>-deployer1
          type: hdb
          path: gen/user-db
          parameters:
            buildpack: nodejs_buildpack
          requires:
            - name: <Project Name>-db1
      resources:
        - name: <Project Name>-db0
          type: com.sap.xs.hdi-container
          parameters:
            service: hana
            service-plan: hdi-shared
          properties:
            hdi-container-name: ${service-name}
        - name: <Project Name>-db1
          type: com.sap.xs.hdi-container
          parameters:
            service: hana
            service-plan: hdi-shared
            service-name: <Project Name>-db1
          properties:
            user-container-name: ${service-name}
      ```
      
      **Note:**
      In the Shine demo application, since we have multiple containers, we need to define service replacements in the above format to connect the containers. If the project has only one container, the `mta.yaml` file created by the extension should work as expected, and no manual changes are needed.
 2. Currently, changes to Flowgraph, Reptask, and Replication artifacts are not covered. You will need to modify these manually. Unsupported types and functions in the calculation view such as "CE_FUNCTION", "CACHE", etc., need to be noted. Please refer to the [SAP HANA Cloud Documentation](https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide/checks-performed-by-migration-tool) for more details on how to handle these.
    
## Step-6: Deployment of the Migrated database artifacts.

1. Using the Terminal, navigate to the root of the target folder.
   
2. Right click on the mta.yaml and select `Build MTA Project`.
   
3. Next, log in to your Cloud Foundry account using the following steps:

   - Open a new terminal in the SAP Business Application Studio
   - Run the command `cf login -a < API_URL >` and input your username and password

5. Right click on the mtar file inside mta_archives folder and select `Deploy MTA Archive`.

## Data Migration
For migration of data using the SAP HANA Application Migration Assistant, please refer to the [DataMigration](DataMigration.md) document.

## Learning Resources
1. [The Self-Service Migration Tool for SAP HANA Cloud](https://help.sap.com/docs/hana-cloud/sap-hana-cloud-migration-guide/self-service-migration-for-sap-hana-cloud-tool).
2. [SAP HANA Cloud, SAP HANA Database Developer Guide for Cloud Foundry Multitarget Applications (SAP Business App Studio)](https://help.sap.com/docs/hana-cloud-database/sap-hana-cloud-sap-hana-database-developer-guide-for-cloud-foundry-multitarget-applications-sap-business-app-studio/sap-hana-cloud-sap-hana-database-developer-guide-for-cloud-foundry-multitarget-applications-sap-business-app-studio)

## How to obtain support
[Create an issue](https://github.com/SAP-samples/xsa-cap-migration-using-basextn/issues) in this repository if you find a bug or have questions about the content.
 
For additional support, [ask a question in SAP Community](https://answers.sap.com/questions/ask.html).

## License
Copyright (c) 2024 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSE) file.
