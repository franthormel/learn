import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-expansion-panel',
  templateUrl: './expansion-panel.component.html',
  styleUrls: ['./expansion-panel.component.css'],
})
export class ExpansionPanelComponent implements OnInit {
  _panelState: boolean = false;

  constructor() {}

  ngOnInit(): void {}

  get panelIcon(): string {
    return this._panelState ? 'lock_open' : 'lock';
  }

  get panelDescription(): string {
    return this._panelState ? 'closed' : 'opened';
  }

  panelState(value: boolean) {
    this._panelState = value;
  }
}
