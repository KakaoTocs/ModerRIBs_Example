//
//  RootInteractor.swift
//  RIBs_Example01
//
//  Created by 김진우 on 2023/05/25.
//

import RIBs
import RxSwift

protocol RootRouting: ViewableRouting {
    
}

protocol RootPresentable: Presentable {
    var listener: Presentable { get set }
}

protocol RootListener: AnyObject {
}

final class RootInteractor: PresentableInteractor<RootPresentable>, RootInteractable, RootPresentableListener {
    
    weak var router: RootRouting?
}
