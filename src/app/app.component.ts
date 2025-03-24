import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.scss'
})
export class AppComponent implements OnInit {

  bomdia = `Bom dia, `;
  hora = new Date();
  title = 'modulo-10';
  _json = '';

  ngOnInit(): void {
    this.getData();

    if (this.hora.getHours() < 12) {
      this.bomdia = `Bom dia, `;
    } else if (this.hora.getHours() < 18) {
      this.bomdia = `Bom tarde, `;
    } else
      this.bomdia = `Bom noite, `;
  }

  async getData() {
    const url = 'http://169.254.169.254/latest/meta-data/public-ipv4';
    try {
      const response = await fetch(url);
      if (!response.ok) {
        throw new Error(`Response status: ${response.status}`);
      }

      this._json = await response.json();
      console.log(this._json);
    } catch (error) {
      console.error(error);
    }
  }
}
