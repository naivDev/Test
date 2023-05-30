//
//  ViewController.swift
//  Test
//
//  Created by Oscar Ivan Pérez Salazar on 29/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldBirthDay: UITextField!
    @IBOutlet weak var textFieldDateOfAdmission: UITextField!
    @IBOutlet weak var submitInformatioButton: UIButton!
    
    //MARK: Ciclo de Vida ViewController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonDisable()
        validateTextFieldChanges()
        setStylesTextFields()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFieldName.text = ""
        textFieldBirthDay.text = ""
        textFieldDateOfAdmission.text = ""
        evaluateFields()
    }
    
    //MARK: Funciones
    func buttonDisable(){
        submitInformatioButton.isEnabled = false
    }
    
    func setStylesTextFields() {
        textFieldName.applyCustomStyle()
        textFieldBirthDay.applyCustomStyle()
        textFieldDateOfAdmission.applyCustomStyle()
    }
    
    func validateTextFieldChanges() {
        textFieldName.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        textFieldBirthDay.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        textFieldDateOfAdmission .addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        evaluateFields()
    }
    
    func evaluateFields() {
        let isFieldsEmpty = textFieldName.text?.isEmpty ?? true || textFieldBirthDay.text?.isEmpty ?? true || textFieldDateOfAdmission.text?.isEmpty ?? true
        submitInformatioButton.isEnabled = !isFieldsEmpty
        
    }
    
    //MARK: Acciones
    @IBAction func submitButton(_ sender: Any) {
        guard let fieldNameText = textFieldName.text, let fieldBirthDayText = textFieldBirthDay.text, let fieldDateAdmissionText = textFieldDateOfAdmission.text else {
            return
        }
        
        let vc =  storyboard?.instantiateViewController(withIdentifier: "StoryboardDetails") as? DetailViewController
        vc?.nameLabel = fieldNameText
        vc?.birthLabel = fieldBirthDayText
        vc?.dateLabel = fieldDateAdmissionText
        
        navigationController?.pushViewController(vc!, animated: true)
    }
}
