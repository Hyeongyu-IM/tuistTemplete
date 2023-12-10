//
//  Workspace.swift
//  ProjectDescriptionHelpers
//
//  Created by 임현규 on 11/27/23.
//

import ProjectDescription
import EnvironmentPlugin

let workspace = Workspace(name: env.name, projects: ["Projects/App"])
