import { Component } from '@angular/core';
import { PageEvent } from '@angular/material/paginator';

@Component({
  selector: 'app-card-grid-ripple',
  templateUrl: './card-grid-ripple.component.html',
  styleUrls: ['./card-grid-ripple.component.css'],
})
export class CardGridRippleComponent {
  paginator = {
    hidePageSize: true,
    length: 47,
    pageSize: 8,
  };

  changedPage(event: PageEvent) {
    console.log(event);
  }
}
