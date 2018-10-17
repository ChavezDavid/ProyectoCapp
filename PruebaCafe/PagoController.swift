//
//  PagoController.swift
//  PruebaCafe
//
//  Created by Alumno on 17/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class PagoController : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let metodoPago = ["Tarjeta", "Efectivo", "Puntos"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return metodoPago.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return metodoPago[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
