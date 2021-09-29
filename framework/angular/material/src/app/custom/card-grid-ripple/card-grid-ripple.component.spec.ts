import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CardGridRippleComponent } from './card-grid-ripple.component';

describe('CardGridRippleComponent', () => {
  let component: CardGridRippleComponent;
  let fixture: ComponentFixture<CardGridRippleComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CardGridRippleComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(CardGridRippleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
