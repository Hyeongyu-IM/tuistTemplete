//
//  Dependencies.swift
//  Config
//
//  Created by 임현규 on 11/28/23.
//

import ProjectDescription
import DependencyPlugin

let dependencies = Dependencies(
        swiftPackageManager: SwiftPackageManagerDependencies(
            [
                .SnapKit,
                .CombineCocoa,
                .CombineDataSource,
                .Moya,
                .Then,
                .Quick,
                .Nimble
            ],
            productTypes: [
                "CombineCocoa" : .framework
            ],
            baseSettings: .settings(configurations: [
                .debug(name: .debug),
                .release(name: .release)
            ])
        )
    )
