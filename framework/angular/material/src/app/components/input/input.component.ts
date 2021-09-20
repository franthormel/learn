import { Component } from '@angular/core';
import {
  FormGroup,
  FormBuilder,
  FormControl,
  Validators,
  FormGroupDirective,
  NgForm,
} from '@angular/forms';
import { ErrorStateMatcher } from '@angular/material/core';

export class CustomErrorStateMatcher implements ErrorStateMatcher {
  isErrorState(
    control: FormControl | null,
    form: FormGroupDirective | NgForm | null
  ): boolean {
    return !!(control && control.invalid && control.dirty);
  }
}

@Component({
  selector: 'app-input',
  templateUrl: './input.component.html',
  styleUrls: ['./input.component.css'],
})
export class InputComponent {
  /**1. Input*/
  formGroupInput: FormGroup;
  inputTypes = [
    'date',
    'datetime-local',
    'email',
    'month',
    'number',
    'password',
    'search',
    'tel',
    'text',
    'time',
    'url',
    'week',
  ];
  formControlInput: FormControl;

  /**2. Error state matcher */
  formControlEmail: FormControl;
  customErrorStateMatcher: CustomErrorStateMatcher;

  /**3. Basic form*/
  formGroupBasic: FormGroup;

  constructor(private formBuilder: FormBuilder) {
    /**1. Input*/
    this.formControlInput = formBuilder.control('');
    this.formGroupInput = formBuilder.group({
      showClearButton: [false],
      showPrefix: [false],
      showHints: [false],
      inputType: ['text'],
    });

    /**2. Error state matcher */
    this.customErrorStateMatcher = new CustomErrorStateMatcher();
    this.formControlEmail = formBuilder.control('', [
      Validators.required,
      Validators.email,
    ]);

    /**3. Basic form*/
    this.formGroupBasic = formBuilder.group({
      name: ['George Michael', Validators.required],
      email: ['gmichael@wham.com', [Validators.required, Validators.email]],
      password: ['jitterbug', Validators.required],
      date: ['2020-03-13'],
      time: ['9:00'],
      message: ['Wake me up before you go-go'],
    });
  }

  /**1. Input */
  get inputType(): any {
    return this.accessFormGroupInput('inputType');
  }

  get showPrefix(): boolean {
    return !!this.accessFormGroupInput('showPrefix');
  }

  get showHints(): boolean {
    return !!this.accessFormGroupInput('showHints');
  }

  get showClearButton(): boolean {
    const text = this.formControlInput.value;
    const showClearButton = !!this.accessFormGroupInput('showClearButton');
    const hasValue = text !== undefined && text !== '' && text !== null;

    return showClearButton && hasValue;
  }

  clearInputValue() {
    this.formControlInput.setValue('');
  }

  accessFormGroupInput(key: string): any {
    return (this.formGroupInput.get(key) as FormControl).value;
  }

  /**2. Error state matcher */
  get requiredEmail(): boolean {
    return this.formControlEmail.hasError('required');
  }

  get invalidEmail(): boolean {
    return this.formControlEmail.hasError('email') && !this.requiredEmail;
  }

  /**3. Basic form */
  get basicFormTextLength(): number {
    return (this.basicFormControl('message').value as string).length;
  }

  get invalidBasicFormEmail(): boolean {
    const control = this.basicFormControl('email');
    return control.hasError('email') && !control.hasError('required');
  }
  get basicFormValue(): string {
    return JSON.stringify(this.formGroupBasic.value);
  }

  basicFormControl(key: string): FormControl {
    return this.formGroupBasic.get(key) as FormControl;
  }

  requiredBasicForm(key: string): boolean {
    return this.basicFormControl(key).hasError('required');
  }
}
