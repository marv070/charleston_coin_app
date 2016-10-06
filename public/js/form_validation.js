function validateForm(form,box) {
  var value = document.forms[form][box].value;
   if (value.length < 3) {
       document.getElementById("error").innerHTML = "Try Again but this time enter your name!";
       return false;
   }
}
