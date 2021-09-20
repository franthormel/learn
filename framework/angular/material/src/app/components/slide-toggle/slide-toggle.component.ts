import { Component } from '@angular/core';
import { ThemePalette } from '@angular/material/core';

@Component({
  selector: 'app-slide-toggle',
  templateUrl: './slide-toggle.component.html',
  styleUrls: ['./slide-toggle.component.css'],
})
export class SlideToggleComponent {
  color: ThemePalette = 'primary';
  checked: boolean = false;
  disabled: boolean = false;
}
