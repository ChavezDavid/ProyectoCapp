//
//  UsuarioController.swift
//  PruebaCafe
//
//  Created by Alumno on 17/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class UsuarioController : UIViewController {
    @IBOutlet weak var imgUsuario: UIImageView!
    @IBOutlet weak var txtNombreUsuario: UITextField!
    @IBOutlet weak var txtTelefono: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtNuevaContraseña: UITextField!
    @IBOutlet weak var txtTarjeta: UITextField!
    @IBOutlet weak var txtVencimiento: UITextField!
    @IBOutlet weak var txtClave: UITextField!
    @IBOutlet weak var swtPromociones: UISwitch!
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
