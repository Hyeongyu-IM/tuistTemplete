import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "Domain",
    targets: [.dynamicFramework],
    internalDependencies: [
        .Core
    ]
)