import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';

@Component({
  selector: 'app-select',
  templateUrl: './select.component.html',
  styleUrls: ['./select.component.css']
})
export class SelectComponent {
  formDog : string = 'Franky'
  formControlDog = new FormControl('Franky');
  dogNames: string[] = [
    'Abbot',
    'Beethoven',
    'Casper',
    'Dutch',
    'Earl',
    'Franky',
    'Geronimo',
    'Hickard',
    'India',
    'Jut',
    'Kicks',
    'Licker',
    'Moon',
    'Nightly',
    'Osper',
    'Pritchard',
    'Quester',
    'Randy',
    'Suzy',
    'Trisha',
    'Underdog',
    'Varner',
    'Xavier',
    'Yard',
    'Zog'
  ]
}
