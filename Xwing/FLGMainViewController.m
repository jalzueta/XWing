//
//  FLGMainViewController.m
//  Xwing
//
//  Created by Javi Alzueta on 6/4/15.
//  Copyright (c) 2015 FillinGAPPs. All rights reserved.
//

#import "FLGMainViewController.h"

@interface FLGMainViewController ()

@end

@implementation FLGMainViewController

- (void) viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
    // Creamos un detector de Tap
    self.tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didTap:)];
    
    // Lo añadimos
    [self. view addGestureRecognizer:self.tap];
}

- (void) didTap: (UITapGestureRecognizer *) tap{
    
    // Eliminamos el tap
//    [self. view removeGestureRecognizer:tap];
    
    UIViewAnimationOptions options = UIViewAnimationOptionBeginFromCurrentState | UIViewAnimationOptionCurveEaseInOut;
    
    [UIView animateWithDuration:1.0
                          delay:0
                        options:0 // podriamos forzar a que termine la animacion si o si
                     animations:^{
                         // Estado final
                         self.xwingView.center = [tap locationInView:self.spaceView];
                         
                     } completion:^(BOOL finished) {
                         // finish: indica si ha terminado con exito, si ha llegado al final de la animacion
                         
                         // Añadimos el tap de nuevo
//                         [self. view addGestureRecognizer:self.tap];
                     }];
}

- (void) didTap1: (UITapGestureRecognizer *) tap{
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:0 // podriamos forzar a que termine la animacion si osi
                     animations:^{
                         // Estado final
                         self.xwingView.alpha = 0.0;
                         
                     } completion:^(BOOL finished) {
                         
                     }];
    
    [UIView animateWithDuration:1.0
                          delay:0.5
                        options:0 // podriamos forzar a que termine la animacion si o si
                     animations:^{
                         // Estado final
                         self.xwingView.center = [tap locationInView:self.spaceView];
                         
                     } completion:^(BOOL finished) {
                         self.xwingView.alpha = 1.0;
                     }];
}

- (void) didTap2: (UITapGestureRecognizer *) tap{
    
    [UIView animateWithDuration:0.5
                          delay:0
                        options:0 // podriamos forzar a que termine la animacion si osi
                     animations:^{
                         // Estado final
                         self.xwingView.alpha = 0.0;
                         
                     } completion:^(BOOL finished) {
                         [UIView animateWithDuration:1.0
                                               delay:0.5
                                             options:0 // podriamos forzar a que termine la animacion si o si
                                          animations:^{
                                              // Estado final
                                              self.xwingView.center = [tap locationInView:self.spaceView];
                                              
                                          } completion:^(BOOL finished) {
                                              [UIView animateWithDuration:0.5
                                                                    delay:0
                                                                  options:0 // podriamos forzar a que termine la animacion si osi
                                                               animations:^{
                                                                   // Estado final
                                                                   self.xwingView.alpha = 0.0;
                                                                   
                                                               } completion:^(BOOL finished) {
                                                                   
                                                               }];
                                          }];
                     }];
}

@end