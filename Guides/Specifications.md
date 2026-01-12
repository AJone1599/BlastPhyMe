## BLASTPHYME TECHNICAL SPECIFICATIONS

         - Current as of application version 1.
            - Last updated January 12, 2026
- 1 Introduction CONTENTS
   - 1.1 Scope
- 2 Core Platforms
- 3 System Architecture
   - 3.1 User Interface
   - 3.2 Middle-Tier
   - 3.3 Database
      - 3.3.1 BlastPhyMe Data File (*.bpmd)
- 4 Third-Party Systems
   - 4.1 NCBI GenBank Nucleotide Database.............................................................................................
   - 4.2 NCBI BLAST Web Service
   - 4.3 CodeML.exe within PAML


## 1 Introduction CONTENTS

### 1.1 Scope

This document includes but is not limited to the programming languages, software platforms, standards,
and technologies that the application employs, and specifications for its interactions with third-party
systems (i.e.: NCBI GenBank and BLAST).

Functional requirements detailing what functionality the application is expected to provide are beyond
the scope of this document. The “BlastPhyMe Functional Requirements” document should be referred
to for those requirements.

## 2 Core Platforms

The BlastPhyMe application is coded in the C# programming language on the Microsoft .NET Framework
platform, version 4.8.1

[http://msdn.microsoft.com/en-us/library/zw4w595w(v=vs.100).aspx](http://msdn.microsoft.com/en-us/library/zw4w595w(v=vs.100).aspx)

The database engine that BlastPhyMe interacts with for storing data is the Microsoft SQL Server 2019
Express LocalDB engine.

[http://msdn.microsoft.com/en-ca/library/hh510202(v=sql.120).aspx](http://msdn.microsoft.com/en-ca/library/hh510202(v=sql.120).aspx)

For communicating with the NCBI BLASTN web service, BlastPhyMe uses the .NET Bio open source
library:

```
 Website: https://github.com/dotnetbio/bio
 License: https://github.com/dotnetbio/bio/blob/master/License
```
## 3 System Architecture

BlastPhyMe has been designed to the standard of an _n_ - Tier application. The application code is
separated between three distinct layers:

```
User Interface
```
```
Middle-Tier
```
```
Database
```

### 3.1 User Interface

The User Interface layer includes all code necessary to display visual interfaces for the user to interact
with. User Interface code does not interact directly with the Database layer or third-party systems (i.e.:
NCBI) and is abstracted from both by objects within the Middle-Tier layer.

### 3.2 Middle-Tier

The Middle-Tier layer includes all code necessary to transfer data between the User Interface and
Database layer. Code within the Middle-Tier interprets the database architecture into objects that are
exposed for the User Interface to interact with. The Middle-Tier is responsible for all direct
communication with the database, and all interaction with third-party systems (i.e.: NCBI) and products
(i.e.: .NET Bio) is contained within the Middle-Tier layer.

### 3.3 Database

The Database layer comprises all of the architecture necessary to store data for the BlastPhyMe
application as well as code to manipulate that data within the database. The BlastPhyMe database
exposes stored procedures to handle all data collection and modification processes performed by the
Middle-Tier layer.

#### 3.3.1 BlastPhyMe Data File (*.bpmd)

BlastPhyMe is capable of exporting data from its database to a “data file”, distinguished by the “.bpmd”
file extension. A BlastPhyMe data file is an XML document compressed via the GZip compression
algorithm.

## 4 Third-Party Systems

### 4.1 NCBI GenBank Nucleotide Database.............................................................................................

BlastPhyMe communicates with NCBI’s GenBank nucleotide database to search for and download
GenBank records. This communication is performed via HTTP requests of the E-utilities web services
hosted by NCBI:

[http://www.ncbi.nlm.nih.gov/books/NBK25499/](http://www.ncbi.nlm.nih.gov/books/NBK25499/)

BlastPhyMe is programmed to comply with the E-utilities Usage Guidelines and Requirements:

[http://www.ncbi.nlm.nih.gov/books/n/helpeutils/chapter2/](http://www.ncbi.nlm.nih.gov/books/n/helpeutils/chapter2/)

### 4.2 NCBI BLAST Web Service

BlastPhyMe communicates with NCBI’s BLAST web service using the aforementioned .NET Bio libraries,
which make use of the QBlast URL API:


[http://www.ncbi.nlm.nih.gov/blast/Doc/urlapi.html](http://www.ncbi.nlm.nih.gov/blast/Doc/urlapi.html)

BlastPhyMe is programmed to comply with the BLAST web service Usage Guidelines:

[http://blast.st-](http://blast.st-)
va.ncbi.nlm.nih.gov/Blast.cgi?CMD=Web&PAGE_TYPE=BlastDocs&DOC_TYPE=DeveloperInfo

### 4.3 CodeML.exe within PAML

For performing phylogeny tree analysis, BlastPhyMe uses the codeml.exe application from within the
PAML suite of applications:

[http://abacus.gene.ucl.ac.uk/software/paml.html](http://abacus.gene.ucl.ac.uk/software/paml.html)
