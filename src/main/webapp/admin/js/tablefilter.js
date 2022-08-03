/*function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("mylist");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}*/

/*function myFunction() {

  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist");
  filter = input.value.toUpperCase();
  table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
*/
/*
function myFunction() {

  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist");
    input1 = document.querySelector(".mylist1");
      input2 = document.querySelector(".mylist2");
  filter = input.value.toUpperCase();
    filter1 = input1.value.toUpperCase();
      filter2 = input2.value.toUpperCase();
  table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        td1 = tr[i].getElementsByTagName("td")[2];
          td2 = tr[i].getElementsByTagName("td")[3];
    if (td && td1 && td2) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1 || td1.innerHTML.toUpperCase().indexOf(filter1) > -1 || td2.innerHTML.toUpperCase().indexOf(filter2) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
        }
        }
}}
*/

/*
function myFunction(){
  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist");
    filter = input.value.toUpperCase();
      table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
          td = tr[i].getElementsByTagName("td")[1];
            if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1 ) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
        }
        }
}}

function myFunction1(){
  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist1");
    filter = input.value.toUpperCase();
      table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
          td = tr[i].getElementsByTagName("td")[1];
            if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1 ) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
        }
        }
}}

function myFunction2(){
  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist2");
    filter = input.value.toUpperCase();
      table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
          td = tr[i].getElementsByTagName("td")[1];
            if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1 ) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
        }
        }
}}
  */

  
    
/*  인터넷 아직 미흡
function myFunction() {
	
  var input, filter, table, tr, td, cell, i, j;
  input = document.querySelector(".mylist");
  filter = input.value.toUpperCase();
  table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 1; i < tr.length; i++) {
    // Hide the row initially.
    tr[i].style.display = "none";
    td = tr[i].getElementsByTagName("td");
    for (var j = 0; j < td.length; j++) {
      cell = tr[i].getElementsByTagName("td")[j];
      if (cell) {
        if (cell.innerHTML.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
          break;
        } 
      }
    }
  }
}*/


/*
function myFunction() {

  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist");
    input1 = document.querySelector(".mylist1");
      input2 = document.querySelector(".mylist2");
  filter = input.value.toUpperCase();
    filter1 = input1.value.toUpperCase();
      filter2 = input2.value.toUpperCase();
  table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        td1 = tr[i].getElementsByTagName("td")[2];
          td2 = tr[i].getElementsByTagName("td")[3];
    if (td && td1 && td2) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1 || td1.innerHTML.toUpperCase().indexOf(filter1) > -1 || td2.innerHTML.toUpperCase().indexOf(filter2) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
        }
        }
}}
*/

function myFunction() {

  var input, filter, table, tr, td, i;
  input = document.querySelector(".mylist");
    input1 = document.querySelector(".mylist1");
      input2 = document.querySelector(".mylist2");
  filter = input.value.toUpperCase();
    filter1 = input1.value.toUpperCase();
      filter2 = input2.value.toUpperCase();
  table = document.querySelector(".myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        td1 = tr[i].getElementsByTagName("td")[2];
          td2 = tr[i].getElementsByTagName("td")[3];
    if (td && td1 && td2) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1 || td1.innerHTML.toUpperCase().indexOf(filter1) > -1 || td2.innerHTML.toUpperCase().indexOf(filter2) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
        }
        }
}}
