//
//  Annotation.h
//  Osetr
//
//  Created by Atom on 1/25/18.
//  Copyright © 2018 Artem. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MKAnnotation.h>

@interface Annotation : NSObject <MKAnnotation> {
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
}

@property (nonatomic , assign) CLLocationCoordinate2D coordinate;
@property (nonatomic , copy) NSString * title;
@property (nonatomic , copy) NSString * subtitle;

@end
