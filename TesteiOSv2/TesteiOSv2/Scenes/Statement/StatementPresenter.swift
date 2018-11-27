//
//  StatementPresenter.swift
//  TesteiOSv2
//
//  Created by Neto Moura on 27/11/18.
//  Copyright © 2018 netomoura. All rights reserved.
//


import UIKit

protocol StatementPresentationLogic
{
    func presentSomething(response: Statement.Something.Response)
}

class StatementPresenter: StatementPresentationLogic
{
    weak var viewController: StatementDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: Statement.Something.Response)
    {
        let viewModel = Statement.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
