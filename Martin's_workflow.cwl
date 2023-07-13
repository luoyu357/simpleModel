arguments:
- --
baseCommand: /app/cwl/bin/Martin's_workflow
class: CommandLineTool
cwlVersion: v1.1
hints:
  DockerRequirement:
    dockerImageId: luoyu357/r2d-2fvar-2ffolders-2fc-5f-2fgjpmq4v121x-5f1-5fxfkqjfvdn00000gn-2ft-2frepo2cwl-5f7-5fufe-5f55-2frepo1689272061:20230713-142749
inputs:
  batch_size:
    inputBinding:
      prefix: --batch_size
    type: int
  classes:
    inputBinding:
      prefix: --classes
    type: int
  epochs:
    inputBinding:
      prefix: --epochs
    type: int
outputs:
  output_file:
    outputBinding:
      glob: ./saved_model.keras
    type: File
requirements:
  NetworkAccess:
    networkAccess: true
