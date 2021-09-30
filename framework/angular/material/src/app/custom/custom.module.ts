import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { CustomRoutingModule } from './custom-routing.module';
import { CardGridRippleComponent } from './card-grid-ripple/card-grid-ripple.component';

import { MatGridListModule } from '@angular/material/grid-list';
import { MatCardModule } from '@angular/material/card';
import { MatRippleModule } from '@angular/material/core';
import { MatPaginatorModule } from '@angular/material/paginator';


@NgModule({
  declarations: [
    CardGridRippleComponent
  ],
  imports: [
    CommonModule,
    CustomRoutingModule,
    MatCardModule,
    MatGridListModule,
    MatPaginatorModule,
    MatRippleModule,
  ]
})
export class CustomModule { }
