import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.scss']
})
export class AppComponent implements OnInit {
  title = 'gdgobs';
  public pages: any = []
  public totalRegistros = 12;
  public actualPage = 1;
  public cantPerPage = 10;
  constructor() {
  }
  ngOnInit() {
    for (let i = 0; i < this.totalRegistros; i++) {
      this.pages.push(i + 1)
    }
  }
  getPageNumber(page) {
    console.log(page)
    this.actualPage = page;
  }
  nextPage() {
    if (this.actualPage >= this.totalRegistros) {
      this.actualPage = this.totalRegistros;
    } else {
      this.actualPage = this.actualPage + 1;
      console.log(this.actualPage)
    }
  }
  previousPage() {

    if (this.actualPage < 2) {
      this.actualPage = 1;
    } else {
      this.actualPage = Math.abs(this.actualPage - 1);
      console.log(this.actualPage)
    }
  }

}
