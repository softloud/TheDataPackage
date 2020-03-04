# TheDataPackage
Repro containing suggestive archive structure and procedures for data storage

The data package should work both for legacy data and contemporary data. With "legacy data" we understand data that not longer are actively managed. While the principles for data management and documentation is the same, the workflow may be slightly different. Due to the sheer volume of legacy data floating around in different institutions, there is a need for low-threshold archiving with the purpose of preserving information at a level where it may be retrievable, but not investing excessively preparation for use. Hence, priority here should be given to archiving raw data (either digitized or scanned analog material) with a minimum set of metadata to facilitate discovery and re-use. 

## DataPackage structure [to be expanded]

Data-repository structure is simple and contains dedicated folders for documentation, data, source code along with metadata:

```
├── minimum_metadata.txt (or .md)
├── docs/  -dokumentation (e.g. procedual reports, laboratory protocols)
├── data/ 
|   ├── scan_data/ - analog data in digital format
|   ├── raw_data/ - raw data - born digital or punched from paper forms
|   ├── mapped_data/ - data mapped from raw data 
├── src/ - scripts et al. used for mapping data
├── meta.xml - metadata in EML
├── dmp.xxx - data managment plan

```

## Workflow [to be expanded]

A typical project, either involving data rescue of legacy-data or contemporary data would involve several logical steps. Main parts outlined below:

1. Clone or download this repository, or, recreate the folder and file structure manually at your work area. 
2. Write basic mimimum required metadata. You should do this at once, before you forget it, there will always be time to go back and do a more thorough job later. See [link] for description of minimum expected metdata. Please also remember identifiers (and url's) to external storage for large datafiles that are saved outside the datapackage. Typically, this would be sequence-data, remote sensing etc. 
3. Upload scanned pdf files of field or lab. notes, paper forms etc. with data to the "data/scan_data/"" folder. 
4. Upload raw data to the "data/raw_data/" folder. If this is a legacy-data project you should store the orginal files in their orginal format with their orignal name. If this is your own data contemporary digitized, please follow  [common guidlines](https://site.uit.no/dataverseno/deposit/prepare/) for conventions of file naming and formats. The **raw_data folder should always contain the most basic digital representation of any dataset**, the level of standarization etc will hence vary wildely among projects. Example; original data stored in a proprietary file format from some kind of instrument that only are readable with software available for Windows 3.1) - these are stored in "raw_data", while tabular output of this in .csv format are stored in mapped_data.
5. In quite a few instances there will be manually cleaning of data / data mapping of some before data is used. These files are stored in the "data/mapped_data/" folder. Document the path from raw data to mapped data either by textual description in the metadata or by scripts (stored in /scr). 
6. meta.xml contains metadata in machine readable form using the EML metadata language.

Also, the general [guidlines from BES](https://www.britishecologicalsociety.org/wp-content/uploads/Publ_Data-Management-Booklet.pdf) could be useful.
