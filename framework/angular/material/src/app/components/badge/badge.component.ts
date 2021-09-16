import { Component } from '@angular/core';

@Component({
  selector: 'app-badge',
  templateUrl: './badge.component.html',
  styleUrls: ['./badge.component.css'],
})
export class BadgeComponent {
  badges: number = 5;
  hidden: boolean = false;

  toggleVisibility() {
    this.hidden = !this.hidden;
  }
}
