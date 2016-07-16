# Companies

É Um projeto simples de estudo para IOS + Swift. 
O projeto contém 3 telas (Home, Detalhe e WebSite)

# Sobre as telas

Home: Lista de empresas (Logo + nome da empresa)
  - Uma lista simples onde mostro a logo e o nome da empresa.
  - Foi utilizando um UITableView e uma Custom UITableViewCell (UIImageView + UILabel) para fazer o item.
  - Ao clicar no item um objeto do tipo "Company" é enviando para a tela de Detalhe.

Detalhe: Logo e uma descrição sobre a empresa
  - Exibo a logo e uma breve descrição sobre a empresa
  - Foi utilizado um UIImageView, UITextView e UILabel
  - Ao Clicar no NavigationItem "Site" é enviado um objeto do tipo "Company" para a tela de WebSite

WebSite: Site da empresa
  - Aqui eu carrego o site da empresa
  - Foi uilizado um UIWebView e UIActivityIndicatorView.

# Foi utilizado para o desenvolvimento
  - XCode Version 7.3.1 (7D1014)
  - Apple Swift version 2.2

#License
```
  Copyright 2016 Rudson Lima
 
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
 
      http://www.apache.org/licenses/LICENSE-2.0
 
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
 
````
