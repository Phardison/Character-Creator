//
//  CustomPageViewController.swift
//  CCv2
//
//  Created by Patrick Hardison on 2/4/21.
//

import UIKit

class CustomPageViewController: UIPageViewController {

    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        
        if let firstViewController = orderedViewControllers.first {
               setViewControllers([firstViewController],
                   direction: .forward,
                   animated: true,
                   completion: nil)
           }
    }

    private(set) lazy var orderedViewControllers: [UIViewController] = {
        var controllerList = [UIViewController]()
        for index in 1...4{
            controllerList.append(self.newNumberedViewController(number: String(index)))
        }
        return controllerList
    }()

    private func newNumberedViewController(number: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "ViewController\(number)")
    }
    
   
}

    
extension CustomPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
     
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
                    return nil
                }
                
                let previousIndex = viewControllerIndex - 1
                
                guard previousIndex >= 0 else {
                    return nil
                }
                
                guard orderedViewControllers.count > previousIndex else {
                    return nil
                }
                
                return orderedViewControllers[previousIndex]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.firstIndex(of: viewController) else {
                    return nil
                }
                
                let nextIndex = viewControllerIndex + 1
                let orderedViewControllersCount = orderedViewControllers.count

                guard orderedViewControllersCount != nextIndex else {
                    return nil
                }
                
                guard orderedViewControllersCount > nextIndex else {
                    return nil
                }
                
                return orderedViewControllers[nextIndex]
    }
    
    
}




    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


