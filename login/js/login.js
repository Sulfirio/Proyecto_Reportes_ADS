const userid = document.getElementById("inputEmail")
const userpassword = document.getElementById("inputPassword")
const btn = document.getElementById("btnlog")

btn.addEventListener("click",function(event){
    if(userid.value == "" && userpassword.value == ""){
    alert("Ingresa usuario y contraseña")}
})