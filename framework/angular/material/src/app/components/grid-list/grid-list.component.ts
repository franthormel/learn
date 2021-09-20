import { Component } from '@angular/core';

export interface Tile {
  color: string;
  colspan: number;
  rowspan: number;
  text: string;
}

@Component({
  selector: 'app-grid-list',
  templateUrl: './grid-list.component.html',
  styleUrls: ['./grid-list.component.css'],
})
export class GridListComponent {
  cols: number = 4;
  tiles: Tile[] = [
    { color: '#34E4EA', colspan: 3, rowspan: 1, text: 'Cicada' },
    { color: '#0EB1D2', colspan: 1, rowspan: 2, text: 'Tourniquet' },
    { color: '#F46036', colspan: 1, rowspan: 1, text: 'Blattaria' },
    { color: '#FFBC42', colspan: 2, rowspan: 1, text: 'Suffragette' },
    { color: '#FFBC42', colspan: 1, rowspan: 2, text: 'Agni' },
    { color: '#F46036', colspan: 2, rowspan: 1, text: 'Adductive' },
    { color: '#0EB1D2', colspan: 1, rowspan: 1, text: 'Epigram' },
    { color: '#34E4EA', colspan: 3, rowspan: 1, text: 'Politico' },
  ];
}
