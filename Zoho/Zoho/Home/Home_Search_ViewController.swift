//
//  Home_Search_ViewController.swift
//  Zoho
//
//  Created by Abu Bakar on 11/5/20.
//

import UIKit

class Home_Search_ViewController: UIViewController {
    
    var filteredArray:[String] = [] //to store filtered data
    var shoppingList:[String] = [] //to store whole data
    var isSearching:Bool!

    
    let tblView:UITableView = {
       
        let tbl = UITableView()
        tbl.translatesAutoresizingMaskIntoConstraints = false
        tbl.backgroundColor = .BackgroundGrey
        
        return tbl
        
    }()
    
    let searchTextfield:UITextField = {
       
        let txtfld = UITextField()
        txtfld.translatesAutoresizingMaskIntoConstraints = false
        txtfld.placeholder = "Search"
        txtfld.textAlignment = .left
        txtfld.addTarget(self, action: #selector(UITextFieldDelegate.textFieldShouldEndEditing(_:)), for: UIControl.Event.editingChanged)

        
        return txtfld
        
    }()
    
    func setNavigationBar() {

        self.navigationItem.setHidesBackButton(true, animated:false)
        let View = UIView(frame: CGRect(x: 0, y: 0, width: 50.autoSized, height: 50.autoSized))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 8.autoSized, width: 25.autoSized, height: 30.autoSized))
        if let imgBackArrow = UIImage(named: "left-arrow") {
            imageView.image = imgBackArrow
        }
        View.addSubview(imageView)
        let backTap = UITapGestureRecognizer(target: self, action: #selector(backToMain))
        View.addGestureRecognizer(backTap)
        let leftBarButtonItem = UIBarButtonItem(customView: View)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    @objc func backToMain() {
       
        self.navigationController?.popViewController(animated: true)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        shoppingList = Members.memberNames
        isSearching = false
        
        
        
        self.tabBarController?.tabBar.isHidden = true
        self.navigationItem.titleView = searchTextfield
        searchTextfield.widthAnchor.constraint(equalToConstant: 315).isActive = true
        view.backgroundColor = .BackgroundGrey
        tblView.register(Home_Search_TableViewCell.self, forCellReuseIdentifier: "searchCell")
        tblView.separatorStyle = .none
        tblView.delegate = self
        tblView.dataSource = self
        searchTextfield.delegate = self
        
        
        setupViews()
        setNavigationBar()
    }
    
    func setupViews() {
        
        view.addSubview(tblView)
        
        NSLayoutConstraint.activate([
        
            tblView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tblView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tblView.topAnchor.constraint(equalTo: view.topAnchor, constant: 84.autoSized),
            tblView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 10.autoSized),
            
            
        
        ])
        
    }
    
    

}

extension Home_Search_ViewController:UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if isSearching! {
            return filteredArray.count
        }
        else{

            return shoppingList.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell") as! Home_Search_TableViewCell
        cell.backgroundColor = .BackgroundGrey
        if isSearching {
            cell.textLabel?.text = filteredArray[indexPath.row]
        }
        else {
            cell.textLabel?.text = shoppingList[indexPath.row]
            cell.detailTextLabel?.text = Members.designation[indexPath.row]
        }
        
      
        cell.leftImageView.image = UIImage(named: "profilePicture")
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65.autoSized
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 50))
        let label = UILabel()
        label.frame = CGRect.init(x: 0, y: 13, width: 15, height:15)
        label.textAlignment = .center
        label.text = Members.alphabets[section]
        label.font = UIFont.systemFont(ofSize: 12)
        label.backgroundColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        label.textColor = .black
        headerView.addSubview(label)
        return headerView
        
    }
    
    
}


extension Home_Search_ViewController:UITextFieldDelegate {

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var searchText = textField.text! + string
        if string == "" {
            searchText = (searchText as String).substring(to: searchText.index(before: searchText.endIndex))
       }
        
       if searchText == "" {
            isSearching = false
            tblView.reloadData()
        }
        else{
                getSearchArrayContains(searchText)
            }

            return true
    }
    
    func getSearchArrayContains(_ text : String) {
        filteredArray = shoppingList.filter({$0.lowercased().prefix(text.count) == text.lowercased()})
        isSearching = true
        tblView.reloadData()
    }
    
}
