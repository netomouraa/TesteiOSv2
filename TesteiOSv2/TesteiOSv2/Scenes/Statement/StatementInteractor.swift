//
//  StatementInteractor.swift
//  TesteiOSv2
//
//  Created by Neto Moura on 27/11/18.
//  Copyright © 2018 netomoura. All rights reserved.
//


import UIKit

protocol StatementBusinessLogic
{
    func doSomething(request: Statement.Something.Request)
}

protocol StatementDataStore
{
    //var name: String { get set }
}

class StatementInteractor: StatementBusinessLogic, StatementDataStore
{
    var presenter: StatementPresentationLogic?
    var worker: StatementWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: Statement.Something.Request)
    {
        worker = StatementWorker()
        worker?.doSomeWork()
        
        let response = Statement.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
