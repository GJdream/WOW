//
//  ParentCategoryViewController.swift
//  Wow
//
//  Created by Ghanshyam Jain on 24/06/18.
//  Copyright © 2018 i4solutions. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class ParentCategoryViewController: ButtonBarPagerTabStripViewController {

    override func viewDidLoad() {
        // change selected bar color
        settings.style.buttonBarBackgroundColor = .white
        settings.style.buttonBarItemBackgroundColor = .white
        //settings.style.selectedBarBackgroundColor = purpleInspireColor
        settings.style.buttonBarItemFont = .boldSystemFont(ofSize: 14)
        settings.style.selectedBarHeight = 2.0
        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .black
        settings.style.buttonBarItemsShouldFillAvailiableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?, progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            guard changeCurrentIndex == true else { return }
            oldCell?.label.textColor = .black
           // newCell?.label.textColor = self?.purpleInspireColor
        }
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        let child_1 = ChildExampleViewController(itemInfo: IndicatorInfo(title: " title1", image: UIImage(named: "profile")))
        let child_2 = ChildExampleViewController(itemInfo: IndicatorInfo(title: " Title2", image: UIImage(named: "profile")))
        let child_3 = ChildExampleViewController(itemInfo: IndicatorInfo(title: " Title3", image: UIImage(named: "profile")))
        
       
        
        return [child_1, child_2,child_3]
        
    }

}
