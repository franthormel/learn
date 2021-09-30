import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { CardGridRippleComponent } from './card-grid-ripple/card-grid-ripple.component';

const routes: Routes = [
  { path: 'cardgrid', component: CardGridRippleComponent },
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class CustomRoutingModule {}
