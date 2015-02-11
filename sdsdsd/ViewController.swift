//
//  ViewController.swift
//  sdsdsd
//
//  Created by liyangtao on 15/1/19.
//  Copyright (c) 2015年 河南航天金穗有限公司. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var tabview:UITableView?
    
    
    var search:UISearchBar?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tabview = UITableView(frame: self.view.bounds, style: UITableViewStyle.Plain)
        tabview?.dataSource = self
        tabview?.delegate = self
        tabview?.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(tabview!)
        
        
        self.view.backgroundColor = UIColor.whiteColor()
        var label:UILabel = UILabel();
        label.frame = CGRectMake(10, 60, 200, 50);
        label.backgroundColor = UIColor(red: 200, green: 100, blue: 50, alpha: 1);
        label.backgroundColor = UIColor.redColor();
        label.text = "123";
        self.view.addSubview(label);
        println(label.text);
        self.eat()
        
        var btn:UIButton = UIButton(frame: CGRectMake(20, 100, 40, 40))
        btn.backgroundColor = UIColor.blackColor()
        btn.setTitle("111", forState: UIControlState.Normal)
//        btn.setBackgroundImage(UIImage(named: "1.png"), forState: UIControlState.Normal)
        btn.setImage(UIImage(named: "1"), forState:UIControlState.Normal)
        btn.addTarget(self, action: "BntClicked", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(btn)
       
        
        
        
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tabview!.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        if(cell == false){
            var cell = UITableViewCell(style: UITableViewCellStyle.Value2, reuseIdentifier: "cell")
        }
        cell.textLabel.text = String(format: "%i",indexPath.row)
        cell.detailTextLabel?.text = String(format: "%i+1", indexPath.row)
        return cell
    }
    
    
    
    func BntClicked(){
        var vc = SecViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    func eat(){
        println(1111111)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

