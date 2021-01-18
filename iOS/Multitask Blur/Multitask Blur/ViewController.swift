//
//  ViewController.swift
//  ScreenshootTest
//
//  Created by Alex Núñez on 27/04/2020.
//  Copyright © 2020 Coop. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
        // Add time date capture & screen for each user notifying the user?
        // Add touches to sensative data areas so user has to touch to view which will block screen shot like snapchat?
		NotificationCenter.default.addObserver(
			forName: UIApplication.userDidTakeScreenshotNotification,
			object: nil,
			queue: .main) { notification in
				self.deleteLastImage()
		}

        // *A SOLUTION - Moved to SceneDelegate.swift
//        // Create Blur-Over Feature
//        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.extraLight)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = self.view.bounds
//        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        blurEffectView.tag = 100

//        // Create White-Over Feature
//        let whiteView = UIImageView()
//        whiteView.backgroundColor = UIColor.white
//        whiteView.frame = self.view.bounds
//        whiteView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        whiteView.tag = 100
        
//        NotificationCenter.default.addObserver(
//            forName: UIApplication.didBecomeActiveNotification,
//            object: nil,
//            queue: nil) { notification in
//                
//                print("Device came into foreground!")
//                
//                // Remove Blur from screen
//                if let viewWithTag = self.view.viewWithTag(100) {
//                    viewWithTag.removeFromSuperview()
//                }else{
//                    print("No Blur View to Remove!")
//                }
//                
//        }
        
//        NotificationCenter.default.addObserver(
//            forName: UIApplication.willResignActiveNotification,
//            object: nil,
//            queue: nil) { notification in
//
//                print("App Switcher View")
//
////                // (SUCCESS TEST 1) - Change background colour
////                self.view.backgroundColor = UIColor.red
//
////                // (SUCCESS TEST 2) - Add UIView overlay (Test 2)
////                let overlayView = UIView.init()
////                overlayView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
////                overlayView.backgroundColor = UIColor.black
////                self.view.addSubview(overlayView)
//
//                // Add Blur-Over screen
////                self.view.addSubview(blurEffectView)
//
//                // Add White-Over screen
//                self.view.addSubview(whiteView)
//
//        }
        
        
        
//        NotificationCenter.default.addObserver(
//            forName: UIApplication.willEnterForegroundNotification,
//            object: nil,
//            queue: nil) { notification in
//                print("Device came into foreground!")
//        }
        
//        NotificationCenter.default.addObserver(
//            forName: UIApplication.didEnterBackgroundNotification,
//            object: nil,
//            queue: nil) { notification in
//                print("Device went into background!")
//        }
        
	}

	private func deleteLastImage() {
		let fetchOptions: PHFetchOptions = PHFetchOptions()

		fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: true)]

		let fetchResult = PHAsset.fetchAssets(with: PHAssetMediaType.image, options: fetchOptions)

		if (fetchResult.lastObject != nil) {

			let lastAsset: PHAsset = fetchResult.lastObject!

			let arrayToDelete = NSArray(object: lastAsset)

			PHPhotoLibrary.shared().performChanges( {
				PHAssetChangeRequest.deleteAssets(arrayToDelete)},
				completionHandler: {
					success, error in
//					NSLog("Finished deleting asset. %@", (success ? "Success" : error))
			})



		}
	}
}

