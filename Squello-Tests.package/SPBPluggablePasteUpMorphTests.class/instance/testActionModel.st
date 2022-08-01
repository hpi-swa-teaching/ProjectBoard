tests
testActionModel

    | model |
    model := Model new.
    pluggablePasteUpMorph actionModel: model.
    self assert: model equals: pluggablePasteUpMorph actionModel.