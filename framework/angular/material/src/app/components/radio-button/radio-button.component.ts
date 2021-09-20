import { Component } from '@angular/core';
import { FormControl } from '@angular/forms';

export type Season = 'spring' | 'summer' | 'fall' | 'winter';

@Component({
  selector: 'app-radio-button',
  templateUrl: './radio-button.component.html',
  styleUrls: ['./radio-button.component.css'],
})
export class RadioButtonComponent {
  formSeason: Season = 'spring';
  formControlSeason = new FormControl('spring');
}
