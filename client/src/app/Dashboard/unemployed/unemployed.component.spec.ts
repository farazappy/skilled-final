import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { UnemployedComponent } from './unemployed.component';

describe('UnemployedComponent', () => {
  let component: UnemployedComponent;
  let fixture: ComponentFixture<UnemployedComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ UnemployedComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(UnemployedComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
