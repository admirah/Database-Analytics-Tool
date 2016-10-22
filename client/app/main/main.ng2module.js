import {
  NgModule
} from '@angular/core';
import {
  BrowserModule
} from '@angular/platform-browser';
import {
  FormsModule
} from '@angular/forms';
import {
  MainComponent
} from './main.component';

export let MainModule = @NgModule({
  imports: [BrowserModule, FormsModule],
  declarations: [MainComponent]
})
class MainModule {};
