# LegacyDataPackage
Repro containing suggestive archive structure for storing legacy data

With "legacy data" we understand data that not longer are actively managed. Due to the share volume of this kind of data floating around in different institutions, there is a need for low-treshold archiving with the purpose of preserving information at a level where it may be retrivable, but not investing exessivly prepparation for use. 

Suggestive structure of a data-repository would be: 

```
├── minimum_metadata.txt (or .md)
├── docs/  -scannded documents
├── data/ - raw data 
|   ├── raw_data/
|   ├── mapped_data/
|   └── dwc/
├── src/
├── meta.xml

```

There are three level of accesability that also in most cases reflect the efforth needed structuring a dataset. All data repositories must contain a README file (.txt or .md format) that describes basic metadata content. This may be short or long, but MUST contain enough information to render the data reuasable. As a minimum a statement of data provenance, where, in case the source organisation or person is different from the archive generator, link to rights waiver or similar must be proivided. The amount of metadata needed in to make the data usable is likely to be higly variable.

1. The **docs** folder contain scanned documents, typically paper notes / forms from field or laboratory. This is digital preservation of analog information and may be done by bulk-scanning of old paper journals. This folder may also contain pictures (scanned or digitaly born), or other types of relevant documentation.
2. The **data** is stored in different folders depending on how much they have been post-processed. The sub-folder **raw_data** is orignal data in orginal file format. Content of this folder is considered immutable (i.e. should not under any circumstances be changed).
3. The sub-folder **mapped_data** consist of derived data, which either have been mapped to e.g. internal, project specific data standards, or, saved in a different format than the raw data. Example; orginal data stored in a properitary file format from some kind of instrument that only are readable with software awailable for Windows 3.1). 
4. The sub-folder dwc consist data data mapped into Darwin Core format, ready to be FAIRly shared through a DwC-A. 
5. The folder **src** contains data mapping scripts. 
6. meta.xml cointains metadata in machine readable form using the EML metadata language. 


Please follow file naming conventions, storage formats of derived data etc. A usefull brief introduction can be found [here](https://site.uit.no/dataverseno/deposit/prepare/). 

Usefull description of generic metadata can be found here.

Also, the general [guidlines from BES](https://www.britishecologicalsociety.org/wp-content/uploads/Publ_Data-Management-Booklet.pdf) could be usefull.
