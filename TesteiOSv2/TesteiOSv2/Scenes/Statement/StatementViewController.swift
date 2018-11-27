//
//  StatementViewController.swift
//  TesteiOSv2
//
//  Created by Neto Moura on 27/11/18.
//  Copyright © 2018 netomoura. All rights reserved.
//


import UIKit

protocol StatementDisplayLogic: class
{
    func displaySomething(viewModel: Statement.Something.ViewModel)
}

class StatementViewController: UITableViewController, StatementDisplayLogic
{
    var interactor: StatementBusinessLogic?
    var router: (NSObjectProtocol & StatementRoutingLogic & StatementDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup()
    {
        let viewController = self
        let interactor = StatementInteractor()
        let presenter = StatementPresenter()
        let router = StatementRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        doSomething()
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func doSomething()
    {
        let request = Statement.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: Statement.Something.ViewModel)
    {
        //nameTextField.text = viewModel.name
    }
}
