//
//  ViewController.swift
//  SwiftTutorial
//
//  Created by Mfluid Design on 17/06/15.
//  Copyright (c) 2015 Mfluid Design. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet var firstLabel: UILabel!
 
    var arrayOfMyChoice : NSMutableArray!
    var tableViewDummy : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let borderColor = UIColor( red: 1.0, green: 1.0, blue:1.0, alpha: 0.8 )
        var textField : UITextField = UITextField(frame: CGRectMake(0, self.view.frame.size.height-50, 200, 50))
        
        textField.layer.cornerRadius = 24.0
        textField.layer.borderWidth = 1.5
        textField.layer.sublayerTransform = CATransform3DMakeTranslation(20, 0, 0);
        textField.layer.borderColor = borderColor.CGColor;
        textField.text="vineeth"
        
        var applyingGradient : CAGradientLayer = CAGradientLayer()
        applyingGradient.frame=textField.frame
        print(NSArray(objects: [UIColor .blackColor().CGColor], [UIColor .whiteColor().CGColor]) as [AnyObject])
        applyingGradient.colors = NSArray(objects: [UIColor .blackColor().CGColor], [UIColor .whiteColor().CGColor]) as [AnyObject]
        textField.layer.insertSublayer(applyingGradient, atIndex: 1)
        
        
        
            textField.attributedPlaceholder = NSAttributedString(string: "PC", attributes: [NSForegroundColorAttributeName : UIColor(red: 255/255, green: 255/255, blue:255/255, alpha: 0.6)])
        self.view .addSubview(textField)
        
        
        
        self.arrayOfMyChoice = NSMutableArray(objects:"hh")
        self.arrayOfMyChoice.addObject("Neeraj")
        self.firstLabel.text="Hello"
        var textFieldSample=UITextField(frame: CGRectMake(0, 0, 100, 100))
        textFieldSample.text="This is me"
        self.view.addSubview(textFieldSample)
        textFieldSample.layer.borderWidth=8.0
        textFieldSample.layer.borderColor=UIColor.yellowColor().CGColor
        textFieldSample.layer.masksToBounds=true
       // textFieldSample.delegate=self
        
        createAView()
        var appdelegate : AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
 createAView()
        // var timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: Selector("update"), userInfo: nil, repeats: true)
       let timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector:Selector("timerFunction"), userInfo: nil, repeats: false)
        tableViewCheck()
        self.title="Prasanth"
        // Do any additional setup after loading the view, typically from a nib.
    }
    func timerFunction()
    {
//        let alertIs = UIAlertController(title: "Message", message: "This is my first alert", preferredStyle: UIAlertControllerStyle.Alert)
//        presentViewController(alertIs, animated: true, completion: nil)
//        alertIs.addAction(UIAlertAction(title: "play", style: UIAlertActionStyle.Default, handler: { action in self.setupEverything()
//        }))
        self.arrayOfMyChoice.addObject("PC")
        self.tableViewDummy.reloadData()
        
    }
   func tableViewCheck ()
   {
    print(self.navigationController?.navigationBar.frame.origin.y)
    let value : CGFloat = self.navigationController!.navigationBar.frame.origin.y+self.navigationController!.navigationBar.frame.size.height
    self.tableViewDummy = UITableView(frame: CGRectMake(0,value, 300, 300))
    self.tableViewDummy.delegate=self
    self.tableViewDummy.dataSource = self
    self.view .addSubview (tableViewDummy)
    
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1;
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        println(self.arrayOfMyChoice.count)
        
        let count : Int = self.arrayOfMyChoice.count
        
        return count;
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell") as? UITableViewCell
          
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = self.arrayOfMyChoice.objectAtIndex(indexPath.row) as? String
        return cell!
        
    }
    func setupEverything()
    {
        
    }
    private func createAlert()
    {
     
    }
    func createAView()
    {
        
        let viewCreating=UIView(frame: CGRectMake(0, 100, 50, 50))
        viewCreating.backgroundColor=UIColor.greenColor()
        self.view.addSubview(viewCreating)
    }
 func textFieldShouldBeginEditing(textField: UITextField) -> Bool
 {
    print("im inside")
    return true
 }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

