// View
//  ViewController.swift
//  webmvvmdemo
//
//  Created by jianwei on 03/03/2018.
//  Copyright © 2018 jianwei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var petDesc: UILabel!
    @IBOutlet weak var petLegs: UILabel!
    @IBOutlet weak var petName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let viewModel = DogViewModel(name: "lucky")
        
        petName.text = viewModel.DogName
        petLegs.text = viewModel.DogLegs
        petDesc.text = viewModel.dogNameAndlegs
        
        let viewModel2 = DogViewModel(name: "jacky")
        print("DogName:\(viewModel2.DogName)")
        print("Doglegs:\(viewModel2.DogLegs)")
        print("DogDesc:\(viewModel2.dogNameAndlegs)")
        viewModel2.setLegs(legsNum: 2)
        print("Doglegs:\(viewModel2.DogLegs)")
         print("DogDesc:\(viewModel2.dogNameAndlegs)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

