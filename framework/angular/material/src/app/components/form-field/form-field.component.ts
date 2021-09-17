import { Component } from '@angular/core';
import { FormBuilder, FormControl, FormGroup } from '@angular/forms';
import { MatFormFieldAppearance } from '@angular/material/form-field';

@Component({
  selector: 'app-form-field',
  templateUrl: './form-field.component.html',
  styleUrls: ['./form-field.component.css'],
})
export class FormFieldComponent {
  formGroup: FormGroup;

  constructor(private fb: FormBuilder) {
    this.formGroup = fb.group({
      appearance: ['standard'],
      required: [false],
      floatLabel: ['auto'],
    });
  }

  formGroupValue(key: string): any {
    return (this.formGroup.get(key) as FormControl).value;
  }
}
