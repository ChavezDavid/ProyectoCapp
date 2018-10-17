//
//  AgregarController.swift
//  PruebaCafe
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class AgregarController : UIViewController {
    @IBOutlet weak var stpAzucar: UIStepper!
    @IBOutlet weak var swtCanela: UISwitch!
    @IBOutlet weak var swtLeche: UISwitch!
    @IBOutlet weak var swtCrema: UISwitch!
    @IBOutlet weak var lblAzucar: UILabel!
    
    var pedido : DatosPedidos?
    var complementos : String?
    
    @IBAction func doTapStepper(_ sender: Any) {
        let azucar = stpAzucar.value
        lblAzucar.text = "\(azucar)"
    }
    @IBAction func doTapAgregar(_ sender: Any) {
        complementos = ""
        
        LlenarComplementos()
        
        DatosPedidos.pedidos.append(Pedido(nombre: self.title!, complementos: complementos!, imagenLista: UIImage(named: "\(self.title!.lowercased())Lista")!))
        
        self.navigationController?.popViewController(animated: true)
    }
    
    func LlenarComplementos() {
        if stpAzucar.value > 0 {
            complementos = "\(complementos!) \(stpAzucar.value) azucar"
        }
        if swtCanela.isOn {
            complementos = "\(complementos!) canela"
        }
        if swtLeche.isOn {
            complementos = "\(complementos!) leche"
        }
        if swtCrema.isOn {
            complementos = "\(complementos!) crema"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
