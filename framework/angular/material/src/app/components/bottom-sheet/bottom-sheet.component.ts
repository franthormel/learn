import { Component } from '@angular/core';
import {
  MatBottomSheet,
  MatBottomSheetRef,
} from '@angular/material/bottom-sheet';

@Component({
  selector: 'app-bottom-sheet',
  templateUrl: './bottom-sheet.component.html',
  styleUrls: ['./bottom-sheet.component.css'],
})
export class BottomSheetComponent {
  constructor(private _bottomSheet: MatBottomSheet) {}

  openBottomSheet(): void {
    this._bottomSheet.open(BottomSheetExampleComponent);
  }
}

@Component({
  selector: 'bottom-sheet-example',
  templateUrl: './bottom-sheet-example.html',
})
export class BottomSheetExampleComponent {
  constructor(
    private _bottomSheetRef: MatBottomSheetRef<BottomSheetExampleComponent>
  ) {}

  openLink(event: MouseEvent): void {
    this._bottomSheetRef.dismiss();
    event.preventDefault();
  }
}
