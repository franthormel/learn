import { Component } from '@angular/core';

export interface MusicalPiece {
  title: string;
  artist: string;
}

@Component({
  selector: 'app-list',
  templateUrl: './list.component.html',
  styleUrls: ['./list.component.css'],
})
export class ListComponent {
  multiple: boolean = true;
  collection: MusicalPiece[] = [
    { title: "Moanin'", artist: 'Art Blakey' },
    { title: 'Poor Butterfly', artist: 'Cannonball Adderley & John Coltrane' },
    {
      title: 'These Foolish Things (Remind Me Of You)',
      artist: 'Ella Fitzgerald & Louis Armstrong',
    },
    { title: "Woody'n You (Alternate Take)", artist: 'Miles Davis Sextet' },
    { title: 'Where Are You? (Alternate Take)', artist: 'Dexter Gordon' },
    { title: 'Work Song', artist: 'Cannonball Adderley' },
    { title: "Medley: 'Spartacys' Love Theme / Nardis ", artist: 'Bill Evans' },
  ];
}
