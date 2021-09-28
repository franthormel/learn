import { Component } from '@angular/core';
import { VERSION } from '@angular/material/core';

import { CUSTOM } from './data/custom.data';
import { MATERIALS } from './data/material.data';
import { SCHEMATICS } from './data/schematics.data';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css'],
})
export class AppComponent {
  materials = MATERIALS;
  schematics = SCHEMATICS;
  version = VERSION;
  customs = CUSTOM;
}
