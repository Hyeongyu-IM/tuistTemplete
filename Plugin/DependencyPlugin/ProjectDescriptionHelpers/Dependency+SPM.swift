//
//  Dependency+SPM.swift
//  ConfigurationPlugin
//
//  Created by 임현규 on 11/27/23.
//

import Foundation
import ProjectDescription

public extension TargetDependency {
    struct SPM {}
}

public extension TargetDependency.SPM {
    //MARK: -- APP
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    
    static let CombineCocoa = TargetDependency.external(name: "CombineCocoa")
    static let CombineDataSource = TargetDependency.external(name: "CombineDataSources")
    
    static let CombineMoya = TargetDependency.external(name: "CombineMoya")
    
    static let Then = TargetDependency.external(name: "Then")
    
    //MARK: -- UnitTest Only
    static let Quick = TargetDependency.external(name: "Quick")
    static let Nimble = TargetDependency.external(name: "Nimble")
}

public extension Package {
    //MARK: -- UI
    static let SnapKit = Package.remote(url: "https://github.com/SnapKit/SnapKit.git",
                                        requirement: .upToNextMajor(from: "5.6.0"))
    
    //MARK: -- Combine
    static let CombineCocoa = Package.remote(url: "https://github.com/CombineCommunity/CombineCocoa.git",
                                             requirement: .upToNextMajor(from: "0.4.1"))
    static let CombineDataSource = Package.remote(url: "https://github.com/combineopensource/CombineDataSources",
                                             requirement: .upToNextMajor(from: "0.2.5"))
    
    //MARK: -- Util
    static let Then = Package.remote(url: "https://github.com/devxoul/Then.git",
                                     requirement: .upToNextMajor(from: "2.7.0"))
    
    //MARK: -- Network
    static let Moya = Package.remote(url: "https://github.com/Moya/Moya.git",
                                      requirement: .upToNextMajor(from: "15.0.0"))
    
    //MARK: -- Test
    static let Quick = Package.remote(url: "https://github.com/Quick/Quick",
                                      requirement: .upToNextMajor(from: "7.3.0"))
    static let Nimble = Package.remote(url: "https://github.com/Quick/Nimble",
                                       requirement: .upToNextMajor(from: "13.0.0"))
}
