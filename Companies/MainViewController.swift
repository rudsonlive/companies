//
//  MainViewController.swift
//  Companies
//
//  Created by Rudson Lima on 7/15/16.
//  Copyright © 2016 Rudson Lima. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var companies = Array<Company>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = Util.Title.companies
        companies = generatingCompanies()
    }
    
    //Depois que a view é totalmente carregada
    override func viewDidAppear(animated: Bool){
        tableView.reloadData()
    }
    
    func generatingCompanies() -> Array<Company> {
        
        let apple = Company(name: "Apple", site: "https://www.apple.com/br/", detail: "Apple Inc. é uma empresa multinacional norte-americana que tem o objetivo de projetar e comercializar produtos eletrônicos de consumo, software de computador e computadores pessoais. ")
        
        let google = Company(name: "Google", site: "https://www.google.com.br", detail: "Google Inc. é uma empresa multinacional de serviços online e software dos Estados Unidos. O Google hospeda e desenvolve uma série de serviços e produtos baseados na internet e gera lucro principalmente através da publicidade pelo AdWords.")
        
        let microsoft = Company(name: "Microsoft", site: "https://www.microsoft.com/pt-br/", detail: "Microsoft Corporation é uma empresa transnacional americana com sede em Redmond, Washington, que desenvolve, fabrica, licencia, apoia e vende softwares de computador, produtos eletrônicos, computadores e serviços pessoais.")
        
        let github = Company(name: "Github", site: "https://github.com/", detail: "GitHub é um Serviço de Web Hosting Compartilhado para projetos que usam o controle de versionamento Git. É escrito em Ruby on Rails pelos desenvolvedores da Logical Awesome (Chris Wanstrath, PJ Hyett e Tom Preston - Wernder).")
        
        let facebook = Company(name: "Facebook", site: "https://www.facebook.com/", detail: "Facebook é uma rede social lançada em 4 de fevereiro de 2004, operado e de propriedade privada da Facebook Inc.. Em 4 de outubro de 2012, o Facebook atingiu a marca de 1 bilhão de usuários ativos, sendo por isso a maior rede social em todo o mundo.")
        
        let instagram = Company(name: "Instagram", site: "https://www.instagram.com/", detail: "Instagram é uma rede social de fotos para usuários de Android e iPhone. Basicamente se trata de um aplicativo gratuito que pode ser baixado e, a partir dele, é possível tirar fotos com o celular, aplicar efeitos nas imagens e compartilhar com seus amigos.")
        
        let linkedin = Company(name: "Linkedin", site: "https://br.linkedin.com", detail: "LinkedIn é uma rede social de negócios fundada em dezembro de 2002 e lançada em 5 de maio de 2003. É comparável a redes de relacionamentos, e é principalmente utilizada por profissionais.")
        
        let twitter = Company(name: "Twitter", site: "https://twitter.com", detail: "Twitter é uma rede social e um servidor para microblogging, que permite aos usuários enviar e receber atualizações pessoais de outros contatos (em textos de até 140 caracteres, conhecidos como tweets), por meio do website do serviço, por SMS e por softwares específicos de gerenciamento.")
        
        return [apple, facebook, github, google, instagram, linkedin, microsoft, twitter]
    }
    
    // UITableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        // Definindo o número de linha da minha tableView
        return companies.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        // Remover a seleção do item clicado
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        // Delete swipe
        if editingStyle == .Delete{
            companies.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        // Setando a informação na celular (Item da lista)
        let cell = tableView.dequeueReusableCellWithIdentifier(Util.Identifier.mainCell, forIndexPath: indexPath) as! MainCell
        
        let taskItem = companies[indexPath.row]
        cell.txtName?.text = taskItem.name
        cell.imgIcon?.image = UIImage(named: taskItem.name)
        
        cell.tag = indexPath.row
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        // Quando uma segue é chamada (link no storyboard)
        
        let cell = sender as! MainCell // Criando uma constante da minha custom UITableViewCell (MainCell)
        let detailView = segue.destinationViewController as! DetailViewController // Criando uma constante da minha tela DetailViewController
        
        let company = companies[cell.tag] // Obtendo o objeto do item que foi clicado
        detailView.company = company // Enviando o obj "company" para a tela DetailViewController
        
        // Setando o name do botão voltar com o titulo da minha tela Main (Lista de empresas)
        let backButtonItem = UIBarButtonItem()
        backButtonItem.title = Util.Title.companies
        navigationItem.backBarButtonItem = backButtonItem
    }
}
