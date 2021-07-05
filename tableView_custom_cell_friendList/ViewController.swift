//
//  ViewController.swift
//  tableView_custom_cell_friendList
//
//  Created by Kien Nguyen on 2021-07-05.
//

// Editor / Embed / Navigator
//Adjust Title
//Drag TableView, put in the design - add constraint :0-0-0-0
//in left Prototype cell : 1
//Add : View ---> Add constraints :5-5-5-5
//Add Image :  ad constraint : L = 8, Width - Height : 80 , Vertically in container
//add Label : shif + select : Horizontal spcaing- top-bottom , add Constraint : 8- Right
//Customize the label : constant(15)...font, size, name
//Add Images int Assets
// Folder /New file /Cocoa touch
//Click on TableViewCell :tableViewCell /Identifier : customCell--->Enter
//Click on Custom Class, add : CustomCell----> enter
// Drag-drop TableView


// Add 2 more protocals : UITableViewDelegate, UITableViewDataSource :
// Add 2 required functions

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    
    @IBOutlet weak var friendView: UITableView!
    
    let friends = ["Jack","Jane","Mike","Tom","Dean","Bob","Alex","Anna","Hanry"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendView.delegate = self
        friendView.dataSource = self
        
        friendView.allowsSelection = false
        friendView.separatorStyle = .none
        
    }

    
    // 2 required functions : NumberOfRowsInSection, CellForRowAt :
    
    
    // function HeightForRowAt IndexPath : make the Image higher :
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120   // pixel
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return friends.count     // number of row = number of elements in the friend array
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = friendView.dequeueReusableCell(withIdentifier: "customCell") as! CustomCell
        
        let friend = friends [indexPath.row]
        
        cell.avatarImg.image = UIImage(named: friend)
        cell.nameLbl.text = friend
        
        return cell
    }

}

