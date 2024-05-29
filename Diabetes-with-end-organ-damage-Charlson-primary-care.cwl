cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  diabetes-with-end-organ-damage-charlson-primary-care-complicatn---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-complicatn---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  noninsulindependent-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: noninsulindependent-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-complicatn---primary/output
  neuropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: neuropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: noninsulindependent-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-prolif---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-prolif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: neuropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  angiopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: angiopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-prolif---primary/output
  painful-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: painful-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: angiopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-background---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-background---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: painful-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-amyotrophy---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-amyotrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-background---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-onset---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-onset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-amyotrophy---primary/output
  adult-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: adult-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-onset---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-microalbuminuria---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-microalbuminuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: adult-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  retinopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: retinopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-microalbuminuria---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-cataract---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-cataract---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: retinopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-gangrene---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-cataract---primary/output
  juvenile-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: juvenile-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-gangrene---primary/output
  nephropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: nephropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: juvenile-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-manifestation---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-manifestation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: nephropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-ulcerated---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-ulcerated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-manifestation---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-proteinuria---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-ulcerated---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-mellitus---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-proteinuria---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-review---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-mellitus---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-circulatory---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-circulatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-review---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-mononeuritis---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-mononeuritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-circulatory---primary/output
  maculopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: maculopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-mononeuritis---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-charcot---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-charcot---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: maculopathy-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-gastroparesis---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-gastroparesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-charcot---primary/output
  exudative-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: exudative-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-gastroparesis---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-wilson---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-wilson---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: exudative-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  renal-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: renal-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-wilson---primary/output
  arthropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: arthropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: renal-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-related---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: arthropathy-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-endorgan-damage-charlson-primary-care---primary:
    run: diabetes-with-endorgan-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-related---primary/output
  advanced-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: advanced-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: diabetes-with-endorgan-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-erectile---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-erectile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: advanced-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  right-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: right-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-erectile---primary/output
  retinal-diabetes-with-end-organ-damage-charlson-primary-care---primary:
    run: retinal-diabetes-with-end-organ-damage-charlson-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: right-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  diabetes-with-end-organ-damage-charlson-primary-care-specified---primary:
    run: diabetes-with-end-organ-damage-charlson-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: retinal-diabetes-with-end-organ-damage-charlson-primary-care---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: diabetes-with-end-organ-damage-charlson-primary-care-specified---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
