## BLASTPHYME

# (BLAST, PHYLOGENIES, AND MOLECULAR EVOLUTION)

         - Current as of application version 1. INSTALLATION GUIDE
            - Last updated December 15, 2025
   - 1.1 Scope CONTENTS
   - 1.2 What is BlastPhyMe?
- 2 Installing BlastPhyMe
   - 2.1 Prerequisites
      - 2.1.1 Microsoft .NET Framework 4.8.1
      - 2.1.2 Microsoft SQL Server 2014 Express LocalDB
      - 2.1.3 Microsoft SQL Server 2014 Shared Management Objects
   - 2.2 BlastPhyMe Installation Package
      - 2.2.1 First-Time Installation
      - 2.2.2 Installing Updates


### INTRODUCTION

### 1.1 Scope CONTENTS

This document provides walk-throughs for how to install the BlastPhyMe application.

The “BlastPhyMe User Guide” should be referred to for walk-throughs of using the features of the
BlastPhyMe application. Functional requirements detailing how the features of the application are
expected to operate, and technical specifications detailing how the application is programmed, are
beyond the scope of this document.

### 1.2 What is BlastPhyMe?

BlastPhyMe is a toolkit for rapid generation and analysis of protein-coding sequence datasets.

BlastPhyMe facilitates the fast and easy generation and analysis of protein-coding sequence datasets.
BlastPhyMe saves researches of all bioinformatics experience levels considerable time by automating
the numerous tasks required for the generation and analysis of protein-coding sequence datasets using
a straightforward graphical interface. The application uses a portable database framework to manage
and organize sequences along with a graphical user interface (GUI) that makes the application extremely
easy to use, even for those with little bioinformatics experience.

## 2 Installing BlastPhyMe

This section provides a walk-through for installing BlastPhyMe. There are four pre-requisite installations
that are required for BlastPhyMe to run on a Windows desktop. The **BlastPhyMe Installation Package**
combines the installation of all four pre-requisites, and the BlastPhyMe software itself, such that a single
file can be run to install all five components.

### 2.1 Prerequisites

The prerequisites for BlastPhyMe are listed here for informational purposes only, and do not need to be
downloaded and installed separately.

#### 2.1.1 Microsoft .NET Framework 4.8.1

The BlastPhyMe application code relies upon the Microsoft .NET Framework version 4.8.1 platform to
perform most tasks involving the display of a visual interface to the user and interacting with the host
operating system. Some users may already have the “client profile”, a subset of the full platform,
installed due to Windows Updates, but BlastPhyMe requires the full platform be installed. When the
BlastPhyMe Installation Package is run, if the client profile is already installed it will be upgraded to the
full platform.

#### 2.1.2 Microsoft SQL Server 2014 Express LocalDB

The local database files that BlastPhyMe uses for storing and organizing data run on the Microsoft SQL
Server 2014 Express LocalDB platform. LocalDB is a light-weight version of Microsoft’s SQL Server
database platform that is only actively running on the user’s computer if the user runs an application,
such as BlastPhyMe, that interacts with a LocalDB database file. At other times the LocalDB software
will not be actively running and consuming system resources.

#### 2.1.3 Microsoft SQL Server 2014 Shared Management Objects

To allow the user to create their own database files, and to provide automatic updates to those
database files when a new version of BlastPhyMe is run, BlastPhyMe requires the Shared Management
Objects add-on for Microsoft SQL Server 2014.

### 2.2 BlastPhyMe Installation Package

The BlastPhyMe Installation Package consists of two core installation files.

```
 Setup.exe: this file should be run to install BlastPhyMe and its prerequisites
 BlastPhyMeSetupx64.msi: this file contains the configuration information for installing
BlastPhyMe and its prerequisites
```
#### 2.2.1 First-Time Installation

When installing BlastPhyMe for the first time, one or more of the prerequisites may need to be installed.
The installation file labeled “(Full)”, typically the recommended download for a given release, should be
downloaded, un-zipped, and the contained setup.exe file should be run.

The BlastPhyMe Installation Package will prompt for a response several times during the installation
procedure, as the installation of each prerequisite and finally BlastPhyMe itself must be confirmed by


the user. The following screen-prints are examples of the prompts that you may receive during the
installation procedure, and “Install”, “Yes”, or “Accept” must be selected for each.

1. BlastPhyMe Installation Package Pre-requisites
2. Microsoft .NET Framework 4.8.1
3. Microsoft SQL Server 2014 Express LocalDB and Windows Installer 3.
4. Microsoft SQL Server 2014 Shared Management Objects
5. Finally, BlastPhyMe itself

When BlastPhyMe itself is being installed, the installation directory for the application files can be
modified. By default, BlastPhyMe will install to C:\Program Files\Chang Lab\BlastPhyMe.

Once the installation has completed, BlastPhyMe can be run immediately from either the Desktop icon
or the Windows Start menu. Your computer does not need to be restarted before running BlastPhyMe.

#### 2.2.2 Installing Updates

When a new version of BlastPhyMe is released, unless otherwise notified, the prerequisites will not have
changed and will not need to be reinstalled by the BlastPhyMe Installation Package. As such, the
installer labeled “(Client)” can be downloaded instead of the full package. This will be a significantly
smaller download, and will update only the core BlastPhyMe program files.

## 3 THIRD PARTY APPLICATIONS

BlastPhyMe utilizes several third party applications that need to be downloaded and installed separately
in order for the particular feature to be used.

### 3.1 MEGA

BlastPhyMe can open sequences and aligment in MEGA for visualization and editing. MEGA is aviable as
a free download from: [http://www.megasoftware.net/](http://www.megasoftware.net/)

### 3.2 PRANK

PRANK can be used by BlastPhyMe for multiple sequence alingments. Download PRANK from:
[http://wasabiapp.org/software/prank/](http://wasabiapp.org/software/prank/)


### 3.3 MUSCLE

MUSCLE can also be used for multiple sequences alingments. Downlaod MUSCLE from:
[http://www.drive5.com/muscle](http://www.drive5.com/muscle)

### 3.4 PHYML

To infer phylogenetic trees BlystPhyMe uses PhyML. Download PhyML from: [http://www.atgc-](http://www.atgc-)
montpellier.fr/phyml/binaries.php

### 3.5 TREEVIEW

BlastPhyMe can send tree files to TreeView for visualization. Treeview can also be used to label
foreground branches/clades for the PAML branch, branch-site, and clade models (see PAML manual for
details). TreeView can be downloaded from: [http://taxonomy.zoology.gla.ac.uk/rod/treeview.html](http://taxonomy.zoology.gla.ac.uk/rod/treeview.html)

### 3.6 PAML (CODEML)

To utilize the Selection Analysis module PAML (codeml) must be downloaded from:
[http://abacus.gene.ucl.ac.uk/software/paml.html.](http://abacus.gene.ucl.ac.uk/software/paml.html.) The current recommended version of PAML for use
with BlastPhyMe is 4.10.9.

### 3.7 MICROSOFT EXCEL

BlastPhyMe can write results from PAML analyses into Microsoft Excel. This feature requires that Excel
be installed. Excel can be purchased from the Microsoft strore (www.microsoftstore.com).
