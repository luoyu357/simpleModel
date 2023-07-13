# simpleModel
Simple line model with few dependencies for testing purposes

There is a cwl file: Martin's_workflow.cwl.

If you want to run the docker image of Martin's workflow, do these steps:
- docker pull luoyu357/r2d-2fvar-2ffolders-2fc-5f-2fgjpmq4v121x-5f1-5fxfkqjfvdn00000gn-2ft-2frepo2cwl-5f7-5fufe-5f55-2frepo1689272061:20230713-142749
- install cwltool
- download the file of Martin's_workflow.cwl and workflow.yml
- $cwltool Martin's_workflow workflow.yml
