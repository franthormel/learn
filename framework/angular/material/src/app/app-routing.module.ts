import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

export const routes: Routes = [
  {
    path: 'components',
    loadChildren: () =>
      import('./components/components.module').then((m) => m.ComponentsModule),
  },
  {
    path: 'schematics',
    loadChildren: () =>
      import('./schematics/schematics.module').then((m) => m.SchematicsModule),
  },
  {
    path: 'custom',
    loadChildren: () =>
      import('./custom/custom.module').then((m) => m.CustomModule),
  },
  { path: '**', redirectTo: 'components', pathMatch: 'full' },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
