//
//  RootDependency.swift
//  RIBs_Example01
//
//  Created by 김진우 on 2023/05/25.
//

import RIBs

protocol RootDependency: Dependency {
}

final class RootComponent: Component<RootDependency> {
    
}

protocol RootBuildable: Buildable {
    func build() -> LaunchRouting
}

final class RootBuilder: Builder<RootDependency>, RootBuildable {
    override init(dependency: Dependency) {
        super.init(dependency: dependency)
    }
    
    func build() -> LaunchRouting {
        let component = RootComponent(dependency: dependency)
        let viewController = RootViewController()
        let interactor = RootInteractor(presenter: viewController)
        return RootRouter(
            interactor: interactor,
            viewController: viewController,
            loggedOutBuilder: loggedOutBuilder
        )
    }
}
