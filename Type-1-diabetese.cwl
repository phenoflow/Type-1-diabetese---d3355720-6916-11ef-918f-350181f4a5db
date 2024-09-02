cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  type-1-diabetese-mellitus---secondary:
    run: type-1-diabetese-mellitus---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  type-1-diabetese-ketoacidosis---secondary:
    run: type-1-diabetese-ketoacidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-mellitus---secondary/output
  type-1-diabetese-kidney---secondary:
    run: type-1-diabetese-kidney---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-ketoacidosis---secondary/output
  ophthalmic-type-1-diabetese---secondary:
    run: ophthalmic-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-kidney---secondary/output
  type-1-diabetese-specified---secondary:
    run: type-1-diabetese-specified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ophthalmic-type-1-diabetese---secondary/output
  proliferative-type-1-diabetese---secondary:
    run: proliferative-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-specified---secondary/output
  neurological-type-1-diabetese---secondary:
    run: neurological-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: proliferative-type-1-diabetese---secondary/output
  type-1-diabetese-circulatory---secondary:
    run: type-1-diabetese-circulatory---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: neurological-type-1-diabetese---secondary/output
  arthropathy-type-1-diabetese---secondary:
    run: arthropathy-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-circulatory---secondary/output
  type-1-diabetese-complication---secondary:
    run: type-1-diabetese-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: arthropathy-type-1-diabetese---secondary/output
  hypoglycemic-type-1-diabetese---secondary:
    run: hypoglycemic-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-complication---secondary/output
  autonomic-type-1-diabetese---secondary:
    run: autonomic-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: hypoglycemic-type-1-diabetese---secondary/output
  type-1-diabetese-hyperglycemia---secondary:
    run: type-1-diabetese-hyperglycemia---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: autonomic-type-1-diabetese---secondary/output
  angiopathy-type-1-diabetese---secondary:
    run: angiopathy-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-hyperglycemia---secondary/output
  chronic-type-1-diabetese---secondary:
    run: chronic-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: angiopathy-type-1-diabetese---secondary/output
  other-type-1-diabetese---secondary:
    run: other-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: chronic-type-1-diabetese---secondary/output
  nephropathy-type-1-diabetese---secondary:
    run: nephropathy-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: other-type-1-diabetese---secondary/output
  type-1-diabetese-cataract---secondary:
    run: type-1-diabetese-cataract---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: nephropathy-type-1-diabetese---secondary/output
  periodontal-type-1-diabetese---secondary:
    run: periodontal-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-cataract---secondary/output
  type-1-diabetese-amyotrophy---secondary:
    run: type-1-diabetese-amyotrophy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: periodontal-type-1-diabetese---secondary/output
  mononeuropathy-type-1-diabetese---secondary:
    run: mononeuropathy-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-amyotrophy---secondary/output
  neuropathic-type-1-diabetese---secondary:
    run: neuropathic-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: mononeuropathy-type-1-diabetese---secondary/output
  type-1-diabetese-ulcer---secondary:
    run: type-1-diabetese-ulcer---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: neuropathic-type-1-diabetese---secondary/output
  neuropathy-type-1-diabetese---secondary:
    run: neuropathy-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-ulcer---secondary/output
  type-1-diabetese-dermatitis---secondary:
    run: type-1-diabetese-dermatitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: neuropathy-type-1-diabetese---secondary/output
  type-1-diabetese-mention---secondary:
    run: type-1-diabetese-mention---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-dermatitis---secondary/output
  renal-type-1-diabetese---secondary:
    run: renal-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-mention---secondary/output
  hyperosmolar-type-1-diabetese---secondary:
    run: hyperosmolar-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: renal-type-1-diabetese---secondary/output
  type-1-diabetese-stated---secondary:
    run: type-1-diabetese-stated---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: hyperosmolar-type-1-diabetese---secondary/output
  type-1-diabetese-hypogonadism---secondary:
    run: type-1-diabetese-hypogonadism---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-stated---secondary/output
  dependent-type-1-diabetese---secondary:
    run: dependent-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-hypogonadism---secondary/output
  type-1-diabetese-preexisting---secondary:
    run: type-1-diabetese-preexisting---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: dependent-type-1-diabetese---secondary/output
  type-1-diabetese-gangrene---secondary:
    run: type-1-diabetese-gangrene---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-preexisting---secondary/output
  type-1-diabetese-onset---secondary:
    run: type-1-diabetese-onset---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-gangrene---secondary/output
  adult-type-1-diabetese---secondary:
    run: adult-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-onset---secondary/output
  type-1-diabetese-pregnancy---secondary:
    run: type-1-diabetese-pregnancy---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: adult-type-1-diabetese---secondary/output
  retinopathy-type-1-diabetese---secondary:
    run: retinopathy-type-1-diabetese---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-pregnancy---secondary/output
  type-1-diabetese-remission---secondary:
    run: type-1-diabetese-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: retinopathy-type-1-diabetese---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: type-1-diabetese-remission---secondary/output
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
  inputModule40:
    id: inputModule40
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
