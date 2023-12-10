import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "ThirdPartyLibs",
    targets: [.dynamicFramework],
    externalDependencies: [
        .SPM.SnapKit,
        .SPM.CombineCocoa,
        .SPM.CombineDataSource,
        .SPM.CombineMoya,
        .SPM.Then
    ]
)
