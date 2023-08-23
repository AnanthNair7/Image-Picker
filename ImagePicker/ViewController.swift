//
//  ViewController.swift
//  ImagePicker
//
//  Created by Ananth on 27/07/23.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageToDisplay: UIImageView!
    @IBOutlet weak var selectButton: UIButton!
    
    let imagePicker = UIImagePickerController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.imageToDisplay.layer.borderColor = UIColor.red.cgColor
//        self.imageToDisplay.layer.borderWidth = 1
//        self.imageToDisplay.layer.masksToBounds = false
//
//        self.imageToDisplay.layer.cornerRadius = imageToDisplay.frame.size.height / 2
//        self.imageToDisplay.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func selectButtonTapped(_ sender: Any) {
        var a : String = "0"
        imagePicker.sourceType = .savedPhotosAlbum
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let picture = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imageToDisplay.image = picture
        self.dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
}

