//
//  ViewController.m
//  PlistExample
//
//  Created by user138066 on 4/20/18.
//  Copyright © 2018 user138066. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)funcion:(id)sender{
    //recuperamos el path del fichero, pathForResource el nombre del fichero, ofType la extension del fichero
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Property List" ofType:@"plist"];
    //cargamos el contenido del fichero en un dictioary
    NSDictionary *pl = [[NSDictionary alloc]initWithContentsOfFile:path];
    //del diccionario recuperamos el valor del idioma

            NSString *idioma = (NSString *)[pl objectForKey:@"idioma"];
            //colocamos el valor de idioma en el label
            _texto.text=idioma;
   
            NSString *empresa = (NSString *)[pl objectForKey:@"empresa"];
            //colocamos el valor de idioma en el label
            _texto1.text=empresa;
    
            NSString *ciudad = (NSString *)[pl objectForKey:@"ciudad"];
            //colocamos el valor de idioma en el label
            _texto2.text=ciudad;
        
    

    
}

@end
