//
//  LoginPresenter.swift
//  TesteiOSv2
//
//  Created by Neto Moura on 22/11/18.
//  Copyright © 2018 netomoura. All rights reserved.
//


import UIKit

protocol LoginPresentationLogic
{
    func presentSomething(response: Login.Something.Response)
}

class LoginPresenter: LoginPresentationLogic
{
    weak var viewController: LoginDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: Login.Something.Response)
    {
        let viewModel = Login.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
