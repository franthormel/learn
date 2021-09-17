import { Component } from '@angular/core';
import { FormControl, FormGroup } from '@angular/forms';

@Component({
  selector: 'app-datepicker',
  templateUrl: './datepicker.component.html',
  styleUrls: ['./datepicker.component.css'],
})
export class DatepickerComponent {
  range = new FormGroup({
    start: new FormControl(),
    end: new FormControl(),
  });
  datePicker = new FormControl();

  dateRangeHasError(key: string) : boolean {
    return this.range.controls.start.hasError(key);
  }
}
