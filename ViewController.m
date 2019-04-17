//
//  ViewController.m
//  Osetr
//
//  Created by Atom on 1/25/18.
//  Copyright © 2018 Artem. All rights reserved.
//

#import "ViewController.h"
#import "MapKit/MapKit.h"
#import "Annotation.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize mapview;
-(IBAction)getLocation; {
    [super viewDidLoad];
    mapview.showsUserLocation = YES;
    [mapview setZoomEnabled:YES];
    [mapview setShowsScale:YES];{
    }
    
    MKCoordinateRegion startregion = { {50.0, 30.40}, {40.30, 0.40} };
    startregion.center.latitude = 50.155016;
    startregion.center.longitude = 30.744038;
    startregion.span.latitudeDelta = 0.10f;
    startregion.span.longitudeDelta = 0.10f;
    [mapview setRegion:startregion animated:YES];
    
    MKCoordinateRegion annotationregion = { {50.0, 30.40},{40.30, 0.40} };
    annotationregion.center.latitude = 50.138800;
    annotationregion.center.longitude = 30.748538;
    Annotation *Ukrainka = [[Annotation alloc] init];
    Ukrainka.title = @"Black caviar";
    Ukrainka.subtitle = @"ostr.co";
    Ukrainka.coordinate = annotationregion.center;
    [mapview addAnnotation:Ukrainka];
    
}

-(IBAction)setMap:(id)sender; {
    switch (((UISegmentedControl *) sender).selectedSegmentIndex) {
        case 0:
            mapview.mapType = MKMapTypeStandard;
            break;
        case 1:
            mapview.mapType = MKMapTypeSatellite;
            break;
        case 2:
            mapview.mapType = MKMapTypeHybrid;
            break;
        default:
            break;
    }
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
