//
//  AppComponent.swift
//  RIBs_Example01
//
//  Created by 김진우 on 2023/05/25.
//

import RIBs

final class AppComponent: Component<EmptyDependency>, RootDependency {
    init() {
        super.init(dependency: .init())
    }
}
