import { AfterViewInit, Component, ViewChild } from '@angular/core';
import { MatSort } from '@angular/material/sort';
import { MatTableDataSource } from '@angular/material/table';
import { COLUMNS, DATA } from '../../data/table.data';

@Component({
  selector: 'app-sort-header',
  templateUrl: './sort-header.component.html',
  styleUrls: ['./sort-header.component.css'],
})
export class SortHeaderComponent implements AfterViewInit {
  displayedColumns = COLUMNS;
  dataSource = new MatTableDataSource(DATA);

  @ViewChild(MatSort) sort: MatSort = new MatSort();

  ngAfterViewInit(): void {
    this.dataSource.sort = this.sort;
  }
}
