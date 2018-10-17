//
//  ComentariosController.swift
//  PruebaCafe
//
//  Created by Alumno on 11/10/18.
//  Copyright © 2018 David. All rights reserved.
//

import Foundation
import UIKit

class ComentariosController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var comentarios : [Comentario]?
    
    @IBOutlet weak var tvComentarios: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (comentarios?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellComentario") as! CeldaComentarioController
        celda.lblUsuario.text = comentarios?[indexPath.row].usuario
        celda.lblComentario.text = comentarios?[indexPath.row].comentario
        celda.lblCalificacion.text = "\(comentarios![indexPath.row].calificacion)"
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 96
    }
    @IBAction func doTapActualizar(_ sender: Any) {
        tvComentarios.reloadData()
    }
}
