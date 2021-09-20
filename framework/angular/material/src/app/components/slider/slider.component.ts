import { Component } from '@angular/core';

@Component({
  selector: 'app-slider',
  templateUrl: './slider.component.html',
  styleUrls: ['./slider.component.css'],
})
export class SliderComponent {
  thumbLabel = false;
  showTicks = false;
  autoTicks = false;
  disabled = false;
  vertical = false;
  invert = false;

  tickInterval = 1;
  value = 0;
  max = 100;
  step = 1;
  min = 0;

  getTickInterval(): number | 'auto' {
    if (this.showTicks) {
      return this.autoTicks ? 'auto' : this.tickInterval;
    }

    return 0;
  }
}
