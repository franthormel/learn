import { Component } from '@angular/core';
import { MatSnackBar } from '@angular/material/snack-bar';

@Component({
  selector: 'app-snackbar',
  templateUrl: './snackbar.component.html',
  styleUrls: ['./snackbar.component.css'],
})
export class SnackbarComponent {
  constructor(private _snackbar: MatSnackBar) {}

  showSnackbar() {
    //The first parameter is the message (left)
    //The second parameter is the action text (right)

    // We also placed a `duration` in milliseconds
    // to auto hide the snackbar

    this._snackbar.open("I'm every 👩", 'Acknowledged', {
      duration: 5000,
    });
  }
}
