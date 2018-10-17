//
//  CalificarController.swift
//  PruebaCafe
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class CalificarController : UIViewController {
    var bebida : DatosBebidas?
    var postre : DatosPostres?
    
    @IBOutlet weak var txtComentario: UITextField!
    @IBOutlet weak var txtCalificacion: UITextField!
    
    @IBAction func doTapAgregar(_ sender: Any) {
        let comentario = txtComentario.text!
        let calificacion = Double(txtCalificacion.text!)
        
        if bebida != nil{
            for i in DatosBebidas.bebidas{
                if self.title == i.nombre{
                    i.comentarios.append(Comentario(usuario: "David", comentario: comentario, calificacion: calificacion!))
                }
            }
        } else if postre != nil {
            for i in DatosPostres.postres{
                if self.title == i.nombre{
                    i.comentarios.append(Comentario(usuario: "David", comentario: comentario, calificacion: calificacion!))
                }
            }
        }

        self.navigationController?.popViewController(animated: true)
    }
}
