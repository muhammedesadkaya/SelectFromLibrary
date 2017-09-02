//
//  ViewController.swift
//  selectPhotofromLibrary
//
//  Created by Muhammed Esad Kaya on 03/09/2017.
//  Copyright © 2017 Muhammed Esad Kaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var myPicture: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func changePhoto(_ sender: Any)
    {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.photoLibrary
        self.present(image, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any])
    {
        if let picture = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            myPicture.image = picture
        }
        else
        {
            ///
        }
        
        self.dismiss(animated: true, completion: {
            ///
        })
    }
    
}

