//
//  DetailViewController.swift
//  Companies
//
//  Created by Rudson Lima on 7/15/16.
//  Copyright © 2016 Rudson Lima. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var company: Company!
    
    @IBOutlet var txtName: UILabel!
    @IBOutlet var imgIcon: UIImageView!
    @IBOutlet var txtDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = Util.Title.detail
        
        txtName.text? = company.name
        txtDetail.text? = company.detail
        imgIcon.image = UIImage(named: company.name)
        
        txtDetail.textColor = UIColor(white: 0.498, alpha: 1.000)
        txtDetail.font = UIFont.init(name: Util.FontName.helveticaNeue, size: 17)
        
        // Criando um botão na direita da tela para chamar a WebSiteViewController
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: Util.BarButtonItemTitle.site, style: .Plain, target: self, action: #selector(showWebSiteViewController))
    }
    
    // Chamando a tela WebSiteViewController
    func showWebSiteViewController(){
        let webSiteViewController = self.storyboard?.instantiateViewControllerWithIdentifier(Util.Identifier.webSiteView) as! WebSiteViewController
        
        webSiteViewController.company = company
        self.navigationController?.pushViewController(webSiteViewController, animated: true)
    }
}
