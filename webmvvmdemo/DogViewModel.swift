// ViewModel
//  DogViewModel.swift
//  webmvvmdemo
//
//  Created by jianwei on 03/03/2018.
//  Copyright © 2018 jianwei. All rights reserved.
//

//import Foundation
import UIKit

class DogViewModel {
    private var MyDog : Dog
    
    init(name: String) {
        MyDog = Dog(dogname: name) //swift no "new"
    }
    
    var DogName:String{
        return MyDog.name
    }
    var DogLegs:String{
        return "\(MyDog.legs)"
    }
    
    func setLegs(legsNum: Int){
        MyDog.legs = legsNum
    }
    
    
    var dogNameAndlegs:String{
        return "my dog \(MyDog.name) has \(MyDog.legs) legs."
    }
    
}
