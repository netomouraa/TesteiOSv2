//
//  StatementRouter.swift
//  TesteiOSv2
//
//  Created by Neto Moura on 27/11/18.
//  Copyright © 2018 netomoura. All rights reserved.
//


import UIKit

@objc protocol StatementRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol StatementDataPassing
{
    var dataStore: StatementDataStore? { get }
}

class StatementRouter: NSObject, StatementRoutingLogic, StatementDataPassing
{
    weak var viewController: StatementViewController?
    var dataStore: StatementDataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: StatementViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: StatementDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
