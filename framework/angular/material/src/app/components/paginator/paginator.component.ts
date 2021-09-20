import { Component } from '@angular/core';

@Component({
  selector: 'app-paginator',
  templateUrl: './paginator.component.html',
  styleUrls: ['./paginator.component.css'],
})
export class PaginatorComponent {
  length: number = 100;
  pageSize: number = 10;
  pageSizeOptions: number[] = [10, 50, 100];
  showFirstLastButtons: boolean = true;
}
