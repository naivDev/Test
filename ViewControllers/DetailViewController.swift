//
//  DetailViewController.swift
//  Test
//
//  Created by Oscar Ivan Pérez Salazar on 29/05/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    //MARK:  Outlets
    @IBOutlet weak var nameDetailLabel: UILabel!
    @IBOutlet weak var birthDetailLabel: UILabel!
    @IBOutlet weak var dateDetailLAdmissionlabel: UILabel!
    
    var nameLabel = ""
    var birthLabel = ""
    var dateLabel = ""
    
    //MARK: Ciclo de Vida ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideBackButton()
        setDetails()
        setSylesLabels()
    }
    
    //MARK: Funciones
    func hideBackButton() {
        navigationItem.hidesBackButton = true
    }
    
    func setDetails() {
        nameDetailLabel.text = nameLabel
        birthDetailLabel.text = birthLabel
        dateDetailLAdmissionlabel.text = dateLabel
    }
    
    func setSylesLabels() {
        nameDetailLabel.applyCustomStyle()
        birthDetailLabel.applyCustomStyle()
        dateDetailLAdmissionlabel.applyCustomStyle()
    }
    
    //MARK: Acciones
    @IBAction func GoBackButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

