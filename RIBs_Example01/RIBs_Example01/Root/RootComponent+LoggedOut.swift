//
//  RootComponent+LoggedOut.swift
//  RIBs_Example01
//
//  Created by 김진우 on 2023/05/25.
//

import RIBs

protocol RootDependencyLoggedOut: Dependency {
}

extension RootComponent: LoggedOutDependency {
}
