import { Component } from '@angular/core';

@Component({
  selector: 'app-ripples',
  templateUrl: './ripples.component.html',
  styleUrls: ['./ripples.component.css'],
})
export class RipplesComponent {
  centered: boolean = false;
  disabled: boolean = false;
  unbounded: boolean = false;
}
