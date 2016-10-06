function validateForm(form,box) {
  var value = document.forms[form][box].value;
   if (value.length < 3) {
       document.getElementById("error").innerHTML = "please input your name!";
       return false;
   }
}
