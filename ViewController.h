//
//  ViewController.h
//  Osetr
//
//  Created by Atom on 1/25/18.
//  Copyright © 2018 Artem. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "Annotation.h"

@interface ViewController : UIViewController {
    
    MKMapView *mapview;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapview;
-(IBAction)setMap:(id)sender;
-(IBAction)getLocation;

@end

