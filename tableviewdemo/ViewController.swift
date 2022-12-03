//
//  ViewController.swift
//  tableviewdemo
//
//  Created by IE06 on 15/09/22.
//

import UIKit

struct Setting {
    let title: String
    let imageName: String
}

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var settings: [[Setting]] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "Settings"

        var firstSection = [Setting]()
        firstSection.append(Setting(title: "Airplane", imageName: "airplane"))
        firstSection.append(Setting(title: "Wi-Fi", imageName: "wifi"))
        firstSection.append(Setting(title: "Bluetooth", imageName: "bluetooth"))
        firstSection.append(Setting(title: "Personal Hotspot", imageName: "image"))
        firstSection.append(Setting(title: "Notifications", imageName: "notification"))
        firstSection.append(Setting(title: "Brightness", imageName: "brightness"))
        settings.append(firstSection)

        var secondSection = [Setting]()
        secondSection.append(Setting(title: "Control Center", imageName: "control"))
        secondSection.append(Setting(title: "Do Not Disturb", imageName: "dnd"))
        secondSection.append(Setting(title: "Sounnd and Haptics", imageName: "sound"))
        secondSection.append(Setting(title: "Wallpaper", imageName: "wallpaper"))
        secondSection.append(Setting(title: "FaceID and Passcode", imageName: "face"))
        settings.append(secondSection)

        var thirdSection = [Setting]()
        thirdSection.append(Setting(title: "General", imageName: "general"))
        settings.append(thirdSection)

        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
}
extension ViewController: UITableViewDelegate{
  
}

extension ViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return settings.count

       }

       func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return settings[section].count
       }

       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

           let setting = settings[indexPath.section][indexPath.row]

           cell.textLabel?.text = setting.title
           cell.imageView?.image = UIImage(named: setting.imageName)
           cell.textLabel?.font = UIFont.init(name: "Helvetica", size: 15)
           return cell
       }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 && indexPath.row == 0
        {
            let next = self.storyboard?.instantiateViewController(withIdentifier: "collection") as! CollectionViewController
                  self.navigationController?.pushViewController(next, animated: true)
        }
        
    }
}

         
