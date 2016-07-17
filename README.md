# Companies

It is a simple design study for IOS + Swift.<br>
The project contains three screens (Home, Detail and WebSite)

<img src="https://github.com/rudsonlive/companies-ios/blob/master/Image/image_companies.png">

# On the screens

Main: List of Companies (Logo + company name)
  - A simple list which show the logo and company name.
  - Was using a UITableView and UITableViewCell Custom (UIImageView + UILabel) to make the item.
  - By clicking on the item an object of type "Company" is sending to the Detail screen.

Detail: Logo and a description of the company
  - View the logo and a brief description of the company
  - An UIImageView, UILabel and UITextView was used
  - When Clicking the NavigationItem "Site" is sent an object of type "Company" for WebSite screen

WebSite: Company Website
  - Here I carry the company's website
  - It was uilizado a UIWebView and UIActivityIndicatorView.

# It was used to develop
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
