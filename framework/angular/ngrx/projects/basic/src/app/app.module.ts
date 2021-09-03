import { NgModule } from '@angular/core';
import { StoreModule } from '@ngrx/store';
import { BrowserModule } from '@angular/platform-browser';

import { counterReducer } from './counter.reducer';

import { AppComponent } from './app.component';
import { MyCounterComponent } from './my-counter/my-counter.component';

@NgModule({
  imports: [
    BrowserModule,
    StoreModule.forRoot({
      count: counterReducer,
    }),
  ],
  declarations: [AppComponent, MyCounterComponent],
  bootstrap: [AppComponent],
})
export class AppModule {}
