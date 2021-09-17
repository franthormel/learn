import { Component, Inject } from '@angular/core';
import { MatDialog, MAT_DIALOG_DATA } from '@angular/material/dialog';

export interface DialogData {
  title: string;
}

@Component({
  selector: 'app-dialog',
  templateUrl: './dialog.component.html',
  styleUrls: ['./dialog.component.css'],
})
export class DialogComponent {
  answer: any = null;

  constructor(public dialog: MatDialog) {}

  openDialog() {
    const dialogRef = this.dialog.open(DialogContentExample, {
      data: {
        title: 'Desiderata',
      },
    });

    dialogRef.afterClosed().subscribe((result) => {
      this.answer = result;
    });
  }
}

@Component({
  selector: 'app-dialog-content-example',
  templateUrl: './dialog-content-example.html',
})
export class DialogContentExample {
  constructor(@Inject(MAT_DIALOG_DATA) public data: DialogData) {}

  get projectName(): string {
    if (this.data && this.data.title) {
      return this.data.title;
    }
    return 'Angular';
  }
}
