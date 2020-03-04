# Build_folder_structure
# This function builds the legacy data folder structure in the working directory



build_folder_structure<-function(project_name=project_name){
  if(dir.exists(project_name)==TRUE) {
    print("Directory already exists please check the name and retry")
  } else{
    dir.create(paste0(getwd(),"/", project_name))
    dir.create(paste0(getwd(),"/", project_name,"/", "minimum_metadata"))
    dir.create(paste0(getwd(),"/",project_name,"/", "data"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "raw_data"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "mapped_data"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "dwc"))
    dir.create(paste0(getwd(),"/", project_name,"/","data", "/", "scanned_raw_data_input_sheets"))
      }

}

build_folder_structure(project_name = "Test")


