
var User1 = ["RyuDSora","@Ryu","../img/perfil.jpg","../svg/Twitter-Verified.svg"];
var User2 = ["GamesXD","@XD","../img/perfil.jpg",""];
function colapsecol(){
    const pageWidth  = document.documentElement.scrollWidth;
    if(pageWidth < 1250)
        document.getElementById("div2").style.display = "none";
    else
        document.getElementById("div2").style.display = "inline";
}
//registro
var nombre, correo, dia, mes, annio, pass,verify = "";
function credenciales() {
    nombre = document.getElementById("uname").value;
    correo = document.getElementById("email").value;
    dia = document.getElementById("dias").value;
    mes = document.getElementById("meses").value;
    annio = document.getElementById("anios").value;
    if (nombre,correo,dia,mes,annio == "") {alert("llene todos los campos");}
    else{console.log(nombre + " " + correo+" "+dia+" "+mes+" "+annio);}    
}
function actualizardia() {
    var mes = document.getElementById("meses").value;
    if (mes == "Febrero"){
        select = document.getElementById("dias");
    for(i = 1; i <= 29; i++){
        option = document.createElement("option");
        option.value = i;
        option.text = i;
        select.appendChild(option);
    }
    }else{
        if (mes=="Enero"||mes=="Marzo"||mes=="Mayo"||mes=="Julio"||mes=="Agosto"|| mes=="Octubre"||mes=="Diciembre") {
            select = document.getElementById("dias");
             for(i = 1; i <= 31; i++){
                option = document.createElement("option");
                option.value = i;
                option.text = i;
                select.appendChild(option);
                }
        }else{
            select = document.getElementById("dias");
    for(i = 1; i <= 30; i++){
        option = document.createElement("option");
        option.value = i;
        option.text = i;
        select.appendChild(option);
    }
        }
    }
}
function mostrar2() {
    credenciales();
    if (nombre,correo,dia,mes,annio == "") {}
    else{
        document.getElementById("d-1").style = "display:none";
        document.getElementById("d-2").style = "display:flex";
    }
}
function mostrar3() {
    if (document.getElementById('check-1').checked) {
        document.getElementById("uname2").value = document.getElementById("uname").value;
        document.getElementById("email2").value = document.getElementById("email").value;
        document.getElementById("bday").value = document.getElementById("dias").value+" "+document.getElementById("meses").value+" "+document.getElementById("anios").value;

        document.getElementById("d-2").style = "display:none";
        document.getElementById("d-3").style = "display:flex";
    }else{alert("acepte los parámetros")}
    
}
function mostrar4() {
    document.getElementById("d-3").style = "display:none";
    document.getElementById("d-4").style = "display:flex";
}
function mostrar5() {
    verify = document.getElementById("verify").value;
    if (verify == "") {
        alert("ingrese el Código de Verificación");
    }else{
    document.getElementById("d-4").style = "display:none";
    document.getElementById("d-5").style = "display:flex";
    }
}
//login
function regresar1(){
    document.getElementById("d-2").style = "display:none";
    document.getElementById("d-1").style = "display:flex";
}
function regresar2(){
    document.getElementById("d-3").style = "display:none";
    document.getElementById("d-2").style = "display:flex";
}
function regresar3(){
    document.getElementById("d-4").style = "display:none";
    document.getElementById("d-3").style = "display:flex";
}
function regresar4(){
    document.getElementById("d-5").style = "display:none";
    document.getElementById("d-4").style = "display:flex";
}
function registrar(){
    credenciales();
    pass = document.getElementById("pass").value;
    if (pass=="") {
        alert("Ingrese una Contraseña");
    }
    else{
        alert("finalizado");
    }
}
var ruser,rpass;
function rsiguiente(){
    ruser = document.getElementById("rname").value;
    if (ruser=="") {
        alert("ingrese un usuario valido")
    }
    else{
        document.getElementById("dd-1").style = "display:none";
        document.getElementById("dd-2").style = "display:flex";
        document.getElementById("rname2").value = ruser;
    }
    console.log(ruser);
}
//funcion para agregar hijos
function AgregaElemento(params) {
    var x = document.createElement(params);
    return x;
}
//agregar las columnas de home
//se agrega el encabezado de la columna izquierda, el logo de X
function AgregarElemento1(padre) {
    var elementP = document.getElementById(padre);
    var element = elementP.appendChild(AgregaElemento("div"));
    var element1 = element.appendChild(AgregaElemento("h1"));
    element1.setAttribute("style","margin: 0px; padding: 0px; margin-left: 7px;");
    var element2 = element1.appendChild(AgregaElemento("a"));
    element2.classList.add("a1");
    var element3 = element2.appendChild(AgregaElemento("div"));
    element3.classList.add("divi2");
    element3.setAttribute("style","padding: 5px;");
    element3.id = "div1";
    var element4 = element3.appendChild(AgregaElemento("img"));
    element4.setAttribute("src","../svg/X2.svg");
    element4.setAttribute("style","width:28px");
}
//se agrega todo el menu de la columna izquierda
function AgregarElemento2(padre) {
    //nombre de cada item de la lista
    var nombres = ["Home",
                   "Explore",
                   "Notifications",
                   "Message",
                   "List",
                   "Booksmarks",
                   "Communities",
                   "Premium",
                   "Profile"];
    //direccion donde se guardan los iconos
                   let iconos = ["../svg/home.svg",
                  "../svg/search-svgrepo-com.svg",
                  "../svg/notifications-svgrepo-com.svg",
                  "../svg/message.svg",
                  "../svg/list.svg",
                  "../svg/bookmark.svg",
                  "../svg/group-svgrepo-com.svg",
                  "../svg/X2.svg",
                  "../svg/profile.svg"];
    //referencias de cada elemento de la lista
                var re = "";
    //creando la lista del menu
    for (let index = 0; index < nombres.length; index++) {
        
        agregarElementoBarra(padre,iconos[index],nombres[index],re);

    }
    //creando el penultimo elemento de la lista, el boton More/Mas
    var divi = document.getElementById(padre).appendChild(AgregaElemento("div"));
    divi.setAttribute("class","dropdown");
    var more = divi.appendChild(AgregaElemento("div"));
        more.setAttribute("style","margin-top: 5px;");
        more.setAttribute("role","button");
        more.setAttribute("data-bs-toggle","collapse");
        more.setAttribute("data-bs-target","#menumore")
            var element = more.appendChild(AgregaElemento("div"));
            element.classList.add("divi2");
            element.id = "div1";
                var element21 = element.appendChild(AgregaElemento("div"));
                    var element31 = element21.appendChild(AgregaElemento("svg"));
                        element31.classList.add("svg1");
                        element31.ariaHidden = "true";
                        var element32 = element31.appendChild(AgregaElemento("img"));
                            element32.setAttribute("src","../svg/more-horizontal-circle.svg");
                            element32.setAttribute("style","width:28px");

                var element22 = element.appendChild(AgregaElemento("div"));
                    element22.classList.add("divi1","d-none","d-lg-block");
                    element22.id = "lbl-1";
                    var element321 = element22.appendChild(AgregaElemento("span"));
                        element321.classList.add("spam");
                        element321.textContent = "More";
    //menu desplegable del elemento More/Mas
    var menu = divi.appendChild(AgregaElemento("div"));
        menu.id="menumore";
        menu.setAttribute("class","collapse");
        menu.setAttribute("style","border:0.5px solid gray;position: absolute;background-color: white;border-radius: 16px;width: 250px;padding-bottom: 10px;");
        var item1 = menu.appendChild(AgregaElemento("div"));
            item1.setAttribute("style","padding:15px;padding-left: 20px;border-bottom: solid 0.5px gray;");
            var item11 = item1.appendChild(AgregaElemento("a"));

                item11.setAttribute("href","../504/");//refencia a la pagina de monetizacion
                item11.setAttribute("style","text-decoration:none;color: black;");
                var item111 = item11.appendChild(AgregaElemento("div"));
                    item111.setAttribute("style","display:flex");
                    var item1111 = item111.appendChild(AgregaElemento("svg"));
                        var item11111 = item1111.appendChild(AgregaElemento("img"));
                            item11111.setAttribute("src","../svg/money.svg");
                            item11111.setAttribute("style","width:28px");
                    var item1112 = item111.appendChild(AgregaElemento("div"));
                        var item11121 = item1112.appendChild(AgregaElemento("span"));
                            item11121.classList.add("spam");
                            item11121.setAttribute("style","padding-left: 15px;font-size: larger;");
                            var item111211 = item11121.appendChild(AgregaElemento("b"));
                                item111211.textContent = "Monetization";
        var item2 = menu.appendChild(AgregaElemento("div"));
        var item21 = item2.appendChild(AgregaElemento("button"));
            item21.setAttribute("type","button");
            item21.setAttribute("class","btn");
            item21.setAttribute("style","width:100%;");
            item21.setAttribute("data-bs-toggle","collapse");
            item21.setAttribute("data-bs-target","#item22")
            item21.id="item21";
            var item211 = item21.appendChild(AgregaElemento("div"));
                item211.setAttribute("class","d-flex justify-content-between");
                var item2111 = item211.appendChild(AgregaElemento("span"));
                    item2111.setAttribute("style","font-size: medium;");
                    var item21111 = item2111.appendChild(AgregaElemento("b"));    
                        item21111.textContent="Creator Studio";
                var item2122 = item211.appendChild(AgregaElemento("span"));
                    item2122.setAttribute("class","dropdown-toggle");
        var item22 = item2.appendChild(AgregaElemento("ul"));
            item22.id="item22";
            item22.setAttribute("class","collapse");
            item22.setAttribute("style","padding-left: 15px;margin-bottom: 0px;");
            var item221 = item22.appendChild(AgregaElemento("li"));
                item221.setAttribute("style","list-style: none;")
                var item2211 = item221.appendChild(AgregaElemento("a"));
                    item2211.setAttribute("href","../504/");//referencia a la pagina de analitic
                    item2211.setAttribute("style","text-decoration:none;color: black;");
                    var item22111 = item2211.appendChild(AgregaElemento("div"));
                        item22111.setAttribute("style","display: flex; align-items: center;");
                        var item221111 = item22111.appendChild(AgregaElemento("svg"));
                            var item2211111 = item221111.appendChild(AgregaElemento("img"));
                                item2211111.setAttribute("src","../svg/views.svg");
                                item2211111.setAttribute("style","width:20px");
                        var item221112 = item22111.appendChild(AgregaElemento("span"));
                            item221112.setAttribute("style","font-size: medium;padding-left: 10px;");    
                            item221112.textContent="Analitic";
                            
        var item3 = menu.appendChild(AgregaElemento("div"));
        var item31 = item3.appendChild(AgregaElemento("button"));
                item31.setAttribute("type","button");
                item31.setAttribute("class","btn");
                item31.setAttribute("style","width:100%;");
                item31.setAttribute("data-bs-toggle","collapse");
                item31.setAttribute("data-bs-target","#item32")
                item31.id="item31";
                var item311 = item31.appendChild(AgregaElemento("div"));
                    item311.setAttribute("class","d-flex justify-content-between");
                    var item3111 = item311.appendChild(AgregaElemento("span"));
                        item3111.setAttribute("style","font-size: medium;");
                        var item31111 = item3111.appendChild(AgregaElemento("b"));    
                            item31111.textContent="Professional Tools";
                    var item3122 = item311.appendChild(AgregaElemento("span"));
                        item3122.setAttribute("class","dropdown-toggle");
            var item32 = item3.appendChild(AgregaElemento("ul"));
                item32.id="item32";
                item32.setAttribute("style","padding-left: 15px;margin-bottom: 0px;");
                item32.setAttribute("class","collapse");
                var item321 = item32.appendChild(AgregaElemento("li"));
                    item321.setAttribute("style","list-style: none;")
                    var item3211 = item321.appendChild(AgregaElemento("a"));
                        item3211.setAttribute("href","../504/");//referencia a la pagina de anuncios
                        item3211.setAttribute("style","text-decoration:none;color: black;");
                        var item32111 = item3211.appendChild(AgregaElemento("div"));
                            item32111.setAttribute("style","display: flex; align-items: center;");
                            var item321111 = item32111.appendChild(AgregaElemento("svg"));
                                var item3211111 = item321111.appendChild(AgregaElemento("img"));
                                    item3211111.setAttribute("src","../svg/anuncios.svg");
                                    item3211111.setAttribute("style","width:20px");
                            var item321112 = item32111.appendChild(AgregaElemento("span"));
                                item321112.setAttribute("style","font-size: medium;padding-left: 10px;");    
                                item321112.textContent="Ads";

        var item4 = menu.appendChild(AgregaElemento("div"));
        var item41 = item4.appendChild(AgregaElemento("button"));
                item41.setAttribute("type","button");
                item41.setAttribute("class","btn");
                item41.setAttribute("style","width:100%;");
                item41.setAttribute("data-bs-toggle","collapse");
                item41.setAttribute("data-bs-target","#item42")
                item41.id="item41";
                var item411 = item41.appendChild(AgregaElemento("div"));
                    item411.setAttribute("class","d-flex justify-content-between");
                    var item4111 = item411.appendChild(AgregaElemento("span"));
                        item4111.setAttribute("style","font-size: medium;");
                        var item41111 = item4111.appendChild(AgregaElemento("b"));    
                            item41111.textContent="Settings and Support";
                    var item4122 = item411.appendChild(AgregaElemento("span"));
                        item4122.setAttribute("class","dropdown-toggle");
            var item42 = item4.appendChild(AgregaElemento("ul"));
                item42.id="item42";
                item42.setAttribute("style","margin-bottom: 0px;padding-left: 15px;");
                item42.setAttribute("class","collapse");
                var item421 = item42.appendChild(AgregaElemento("li"));
                    item421.setAttribute("style","list-style: none;");
                    var item4211 = item421.appendChild(AgregaElemento("a"));
                        item4211.setAttribute("href","../504/");//referencia a la pagina de configuraciones
                        item4211.setAttribute("style","text-decoration:none;color: black;");
                        var item42111 = item4211.appendChild(AgregaElemento("div"));
                            item42111.setAttribute("style","display: flex; align-items: center;    padding-bottom: 5px;");
                            var item421111 = item42111.appendChild(AgregaElemento("svg"));
                                var item4211111 = item421111.appendChild(AgregaElemento("img"));
                                    item4211111.setAttribute("src","../svg/configuracion.svg");
                                    item4211111.setAttribute("style","width:20px");
                            var item421112 = item42111.appendChild(AgregaElemento("span"));
                                item421112.setAttribute("style","font-size: medium;padding-left: 10px;");    
                                item421112.textContent="Settings and privacy";

                var item422 = item42.appendChild(AgregaElemento("li"));
                item422.setAttribute("style","list-style: none;");
                var item4221 = item422.appendChild(AgregaElemento("a"));
                    item4221.setAttribute("href","");
                    item4221.setAttribute("style","text-decoration:none;color: black;");
                    var item42211 = item4221.appendChild(AgregaElemento("div"));
                        item42211.setAttribute("style","display: flex; align-items: center;    padding-bottom: 5px;");
                        var item422111 = item42211.appendChild(AgregaElemento("svg"));
                            var item4221111 = item422111.appendChild(AgregaElemento("img"));
                                item4221111.setAttribute("src","../svg/ayuda.svg");
                                item4221111.setAttribute("style","width:20px");
                        var item422112 = item42211.appendChild(AgregaElemento("span"));
                            item422112.setAttribute("style","font-size: medium;padding-left: 10px;");    
                            item422112.textContent="Help Center";
                    
                var item423 = item42.appendChild(AgregaElemento("li"));
                item423.setAttribute("style","list-style: none;");
                var item4231 = item423.appendChild(AgregaElemento("a"));
                    item4231.setAttribute("href","../504/");//referencia a la pagina de "mostrar"
                    item4231.setAttribute("style","text-decoration:none;color: black;");
                    var item42311 = item4231.appendChild(AgregaElemento("div"));
                        item42311.setAttribute("style","display: flex; align-items: center;    padding-bottom: 5px;");
                        var item423111 = item42311.appendChild(AgregaElemento("svg"));
                            var item4231111 = item423111.appendChild(AgregaElemento("img"));
                                item4231111.setAttribute("src","../svg/mostrar.svg");
                                item4231111.setAttribute("style","width:20px;");
                        var item423112 = item42311.appendChild(AgregaElemento("span"));
                            item423112.setAttribute("style","font-size: medium;padding-left: 10px;");    
                            item423112.textContent="Display";

                var item424 = item42.appendChild(AgregaElemento("li"));
                item424.setAttribute("style","list-style: none;");
                var item4241 = item424.appendChild(AgregaElemento("a"));
                    item4241.setAttribute("href","../504/");//referencia a la pagina de atajos de teclado
                    item4241.setAttribute("style","text-decoration:none;color: black;");
                    var item42411 = item4241.appendChild(AgregaElemento("div"));
                        item42411.setAttribute("style","display: flex; align-items: center;    padding-bottom: 5px;");
                        var item424111 = item42411.appendChild(AgregaElemento("svg"));
                            var item4241111 = item424111.appendChild(AgregaElemento("img"));
                                item4241111.setAttribute("src","../svg/atajo.svg");
                                item4241111.setAttribute("style","width:20px;");
                        var item424112 = item42411.appendChild(AgregaElemento("span"));
                            item424112.setAttribute("style","font-size: medium;padding-left: 10px;");    
                            item424112.textContent="Keyboard shortcuts";
}
//se agrega el ultimo elemento de la barra izquierda, el boton de Posts
function AgregarElemento3(padre) {
    var elementP = document.getElementById(padre);
    var element1 = elementP.appendChild(AgregaElemento("div"));
    element1.setAttribute("style","margin-top: 5px;z-index: -1;position: absolute;");
    //boton de post completo
    var element11 = element1.appendChild(AgregaElemento("a"));
        element11.setAttribute("class","a1 d-none d-lg-block");
        element11.setAttribute("aria-label","Post");
        element11.setAttribute("href","");
        element11.setAttribute("role","link");
        element11.setAttribute("id","pst-1");
        element11.setAttribute("style","width: 150px;")               
        var element111 = element11.appendChild(AgregaElemento("div"));
            element111.setAttribute("class","divi2 cent");
            element111.setAttribute("style","margin: auto;width: 90%;color: rgb(255, 255, 255);background-color: rgb(29, 155, 240)");
            var element1111 = element111.appendChild(AgregaElemento("span"));
                element1111.setAttribute("style","margin: auto;");
                element1111.textContent = "Post"; 
    //boton de post reducido
    var element12 = element1.appendChild(AgregaElemento("a"));
        element12.setAttribute("class","a1 d-block d-lg-none");
        element12.setAttribute("aria-label","Post");
        element12.setAttribute("href","");
        element12.setAttribute("role","link");
        element12.setAttribute("id","pst-2");
        element12.setAttribute("style","padding-top: 5px;")
        var element121 = element12.appendChild(AgregaElemento("div"));
            element121.setAttribute("class","divi2 cent");
            element121.setAttribute("style","margin: auto;color: rgb(255, 255, 255);background-color: rgb(29, 155, 240)");
            var element1211 = element121.appendChild(AgregaElemento("span"));
                element1211.setAttribute("style","margin: auto;");
                var element12111 = element1211.appendChild(AgregaElemento("img"));
                element12111.setAttribute("src","../svg/1751222.svg");
                element12111.setAttribute("style","width:25px; height: 25px;");

}
//agregando div del usuario
function AgregarElemento4(params) {
    var elementP = document.getElementById(params);
    var element1 = elementP.appendChild(AgregaElemento("div"));
        element1.setAttribute("style","position: absolute;bottom: 15px;");
        element1.id="E4";
        //element1.textContent ="Hello";
        var element2 = element1.appendChild(AgregaElemento("a"));
        element2.classList.add("a1");
        element2.setAttribute("href","");
        var element3 = element2.appendChild(AgregaElemento("div"));
            element3.classList.add("divi2");
            element3.setAttribute("style","padding-left: 5px;");
            element3.id = "div1";
            var element41 = element3.appendChild(AgregaElemento("div"));
                    var element4111 = element41.appendChild(AgregaElemento("img"));
                    element4111.setAttribute("src","../img/Ryu.jpeg");
                    element4111.setAttribute("style","width:40px;border-radius: 20px;");
            var element42 = element3.appendChild(AgregaElemento("div"));
            element42.classList.add("divi1","d-none","d-lg-block");
            element42.id = "lbl-1";
            element42.setAttribute("style","margin: 0px;margin-left: 10px;font-size: small;");
                var element421 = element42.appendChild(AgregaElemento("div"));
                    element421.setAttribute("style","display:flex");
                    var element4211 = element421.appendChild(AgregaElemento("div"));
                        var element42111 = element4211.appendChild(AgregaElemento("div"));
                            var element421111 = element42111.appendChild(AgregaElemento("span"));
                                var element4211111 = element421111.appendChild(AgregaElemento("b"));
                                    element4211111.textContent="RyuDSora";
                            var element421112 = element42111.appendChild(AgregaElemento("span"));
                                var element4211121 = element421112.appendChild(AgregaElemento("svg"));
                                    var element42111211 = element4211121.appendChild(AgregaElemento("img"));
                                        element42111211.setAttribute("src","../svg/Twitter-Verified.svg");
                                        element42111211.setAttribute("style","width: 25px;");

                        var element42112 = element4211.appendChild(AgregaElemento("div"));
                            var element421121 = element42112.appendChild(AgregaElemento("span"));
                                element421121.textContent="@Ryu";
                    var element4212 = element421.appendChild(AgregaElemento("div"));
                        element4212.setAttribute("style","display: flex;align-items: center;padding-left: 15px;")
                        var element42121 = element4212.appendChild(AgregaElemento("svg"));
                            var element421211 = element42121.appendChild(AgregaElemento("img"));
                                element421211.setAttribute("src","../svg/more.svg");
                                element421211.setAttribute("style","width:20px; height: 20px;");
                /*var element421 = element42.appendChild(AgregaElemento("span"));
                element421.classList.add("spam");
                element421.textContent = "RyuDsora";*/
        
}
//se agrega toda la barra izquierda
function agregarBarraIzquierda() {
    
    var elementP = document.getElementById("baa2");
        
        var element = elementP.appendChild(AgregaElemento("div"));
            element.id="baa21";
            element.setAttribute("style","position: fixed;height: 100%;overflow: auto;")
            AgregarElemento1("baa21");
            var element1 = element.appendChild(AgregaElemento("nav"));
            element1.classList.add("nav1");
            element1.id = "n1";
            element1.setAttribute("style","width: 200px;")
            AgregarElemento2("n1");
            AgregarElemento3("baa21");
            AgregarElemento4("baa21");  
}
//funcion para crear la lista del menu
function agregarElementoBarra(padre,icono,nombre,ref) {
    var elementP = document.getElementById(padre);

    var element2 = elementP.appendChild(AgregaElemento("a"));
    element2.classList.add("a1");
    element2.setAttribute("href",ref);

    var element3 = element2.appendChild(AgregaElemento("div"));
    element3.classList.add("divi2");
    element3.id = "div1";
    
    var element41 = element3.appendChild(AgregaElemento("div"));
    
    var element411 = element41.appendChild(AgregaElemento("svg"));
    element411.classList.add("svg1");
    element411.ariaHidden = "true";
    
    var element4111 = element411.appendChild(AgregaElemento("img"));
    element4111.setAttribute("src",icono);
    element4111.setAttribute("style","width:28px");

    var element42 = element3.appendChild(AgregaElemento("div"));
    element42.classList.add("divi1","d-none","d-lg-block");
    element42.id = "lbl-1";
    
    var element421 = element42.appendChild(AgregaElemento("span"));
    element421.classList.add("spam");
    element421.textContent = nombre;
    
}
function AgregarBarraDerecha() {
    let array1 = ["Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras","Trending in Honduras"];
    let array2 = ["Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional","Liga Nacional"];
    let array3 = ["10.5M","9.1M","8.6M","7.4M","6.5M","5.0M","4.3M","3.9M","2.9M","1.5M"];
    
    var ElementoP = document.getElementById("barra-derecha1");
    var Elemento1 = ElementoP.appendChild(AgregaElemento("div"));
        Elemento1.setAttribute("style","width: 90%; margin: auto;height: 100%;")
    var Elemento2 = Elemento1.appendChild(AgregaElemento("div"));
        Elemento2.setAttribute("style","width: 90%; margin: auto;height: 100%;")
        var Elemento21 = Elemento2.appendChild(AgregaElemento("div"));
            Elemento21.setAttribute("style","font-size: larger;");
            var Elemento211 = Elemento21.appendChild(AgregaElemento("b"));
                Elemento211.textContent = "Trending For You";
        var Elemento22 = Elemento2.appendChild(AgregaElemento("div"));
            for (let index = 0; index < array1.length; index++) {
                var Elemento221 = Elemento22.appendChild(AgregaElemento("div"));
                    Elemento221.setAttribute("style","padding-top: 5px; padding-bottom: 5px; font-size: small;");
                    var Elemento2211 = Elemento221.appendChild(AgregaElemento("div"));
                    Elemento2211.setAttribute("class","d-flex");
                        var Elemento22111 = Elemento2211.appendChild(AgregaElemento("div"));
                            Elemento22111.setAttribute("style","width: 90%;");
                            var Elemento221111 = Elemento22111.appendChild(AgregaElemento("span"));
                                Elemento221111.textContent = array1[index];
                        var Elemento22112 = Elemento2211.appendChild(AgregaElemento("div"));
                            Elemento22112.setAttribute("style","width: 10%;");
                            var Elemento221121 = Elemento22112.appendChild(AgregaElemento("span"));
                                Elemento221121.textContent = "...";

                    var Elemento2212 = Elemento221.appendChild(AgregaElemento("div"));
                        var Elemento22121 = Elemento2212.appendChild(AgregaElemento("span"));
                            Elemento22121.textContent = array2[index];
                    
                    var Elemento2213 = Elemento221.appendChild(AgregaElemento("div"));
                        var Elemento22131 = Elemento2213.appendChild(AgregaElemento("span"));
                            Elemento22131.textContent = array3[index];
            }
            var Elemento222 = Elemento22.appendChild(AgregaElemento("div"));
                Elemento222.setAttribute("style","padding-top: 5px; padding-bottom: 5px;");

                var Elemento2221 = Elemento222.appendChild(AgregaElemento("div"));
                    Elemento2221.setAttribute("style","margin-top: 5px; margin-bottom: 5px;");

                    var Elemento22212 = Elemento2221.appendChild(AgregaElemento("a"));
                        Elemento22212.setAttribute("style","text-decoration: none;");
                        Elemento22212.setAttribute("href","");
                        Elemento22212.textContent = "Mostrar Más";
}
function AgregarPost(params) {
    var ElementoP = document.getElementById("barra-central");
        var E1 = ElementoP.appendChild(AgregaElemento("article"));
            E1.setAttribute("style","width: 100%; padding-bottom: 10px; border-bottom: 0.5px solid #e0e0e0;");
            var E2 = E1.appendChild(AgregaElemento("div"));
                E2.setAttribute("style","width: 95%;margin: auto; padding-top: 10px;")
                    var E3 = E2.appendChild(AgregaElemento("a"));
                        E3.setAttribute("style","text-decoration: none; color: black; width: 100%;");
                        E3.setAttribute("class","d-flex");
                        E3.setAttribute("href","");
                        var E41 = E3.appendChild(AgregaElemento("div"));
                            E41.setAttribute("style","width: 10%;");
                            var E411 = E41.appendChild(AgregaElemento("div"));
                                E411.setAttribute("style","width: 80%;margin: auto;");
								//
                                var E4111 = E411.appendChild(AgregaElemento("img"));
                                    E4111.setAttribute("src",params[2]);
                                    E4111.setAttribute("style","border-radius: 25px; width: 100%;");
                        var E42 = E3.appendChild(AgregaElemento("div"));
                            E42.setAttribute("class","flex-fill");
                            E42.setAttribute("style","width: 90%;");
                            var E421 = E42.appendChild(AgregaElemento("div"));
                                E421.setAttribute("class","d-flex");
                                var E4211=E421.appendChild(AgregaElemento("div"));
                                    E4211.setAttribute("class","flex-fill");
                                    E4211.setAttribute("style","width:95%;");
                                    var E42111=E4211.appendChild(AgregaElemento("div"));
                                        E42111.setAttribute("class","d-flex");
                                        var E421111=E42111.appendChild(AgregaElemento("div"));
                                            var E4211111=E421111.appendChild(AgregaElemento("span"));
                                                E4211111.setAttribute("style","width: 90%;");
                                                var EB=E4211111.appendChild(AgregaElemento("b"));
                                                    EB.textContent = params[0];
                                            var E4211112=E421111.appendChild(AgregaElemento("span"));
                                                if (params[3]==true) {
                                                    var E42111121=E4211112.appendChild(AgregaElemento("img"));
                                                        E42111121.setAttribute("src","../svg/Twitter-Verified.svg");
                                                        E42111121.setAttribute("style","width: 25px;");
                                                }
                                        var E421112=E42111.appendChild(AgregaElemento("div"));
                                            E421112.setAttribute("style","padding-left:5px;");
                                            E421112.textContent = params[1];
                                        var E421113=E42111.appendChild(AgregaElemento("div"));
                                            E421113.setAttribute("style","padding-left:5px;");
                                            E421113.textContent = params[11];

                                var E4212=E421.appendChild(AgregaElemento("div"));
                                    E4212.setAttribute("style","width:5%;");
                                    var E42121 = E4212.appendChild(AgregaElemento("div"));
                                        E42121.setAttribute("style","width: 90%; margin: auto;");
                                        var E421211 = E42121.appendChild(AgregaElemento("div"));
                                            E421211.setAttribute("role","button");
                                            E421211.textContent = "...";
                            var E422 = E42.appendChild(AgregaElemento("div"));
                                E422.setAttribute("style","font-size: small; width: 95%;");
                                var E4221=E422.appendChild(AgregaElemento("p"));
                                    E4221.textContent = params[6];
                                if (params[12]!="") {
                                var E4222=E422.appendChild(AgregaElemento("a"));
                                    E4222.setAttribute("href","");
                                    E4222.setAttribute("style","text-decoration:none");
                                    var E42221=E4222.appendChild(AgregaElemento("p"));
                                        E42221.textContent=params[12];    
                                }
                            var E423=E42.appendChild(AgregaElemento("div"));
                                E423.setAttribute("style","border-radius: 15px; margin-bottom: 5px;")
                                //comprobar que tipo de media es para crear el contenedor adecuado
								if (params[5]=="img") {
                                    var E4231=E423.appendChild(AgregaElemento("img"));
                                        E4231.setAttribute("style","width: 100%;border-radius: 15px;");
                                        E4231.setAttribute("src",params[4]);    
                                }else{
                                    if (params[5]=="video") {
                                        var E4231=E423.appendChild(AgregaElemento("video"));
                                            E4231.setAttribute("style","width: 100%;border-radius: 15px;");
                                            E4231.controls = "true";
                                                var E42311=E4231.appendChild(AgregaElemento("source"));
                                                    E42311.setAttribute("src",params[4]);
                                    } else {
                                        if (params[5]=="audio") {
                                            var E4231=E423.appendChild(AgregaElemento("audio"));
                                                E4231.setAttribute("style","width: 100%;border-radius: 15px;");
                                                E4231.controls = "true";
                                                var E42311=E4231.appendChild(AgregaElemento("source"));
                                                    E42311.setAttribute("src",params[4]);
                                    } else {
                                        //no hacer nada
                                    }   
                                    }
                                }
                            //barra inferior del post iconos y numeros    
                            var E424 = E42.appendChild(AgregaElemento("div"));
                                E424.setAttribute("style","width: 100%; display:flex;font-size:medium;");
                                //comentarios
                                var E4241=E424.appendChild(AgregaElemento("div"));
                                    E4241.setAttribute("style","display:flex;width: 20%;");
                                    var E42411=E4241.appendChild(AgregaElemento("div"));
                                        var E424111=E42411.appendChild(AgregaElemento("img"));
                                            E424111.setAttribute("src","../svg/comment.svg");
                                            E424111.setAttribute("style","width:20px");
                                    var E42412=E4241.appendChild(AgregaElemento("div"));
                                        var E424121=E42412.appendChild(AgregaElemento("span"));
                                            E424121.textContent=params[7];
                                //repost            
                                var E4242=E424.appendChild(AgregaElemento("div"));
                                    E4242.setAttribute("style","display:flex;width: 20%;");
                                        var E42421=E4242.appendChild(AgregaElemento("div"));
                                            var E424211=E42421.appendChild(AgregaElemento("img"));
                                                E424211.setAttribute("src","../svg/repost.svg");
                                                E424211.setAttribute("style","width:20px");
                                        var E42422=E4242.appendChild(AgregaElemento("div"));
                                            var E424221=E42422.appendChild(AgregaElemento("span"));
                                                E424221.textContent=params[8];
                                //likes
                                var E4243=E424.appendChild(AgregaElemento("div"));
                                    E4243.setAttribute("style","display:flex;width: 20%;");
                                            var E42431=E4243.appendChild(AgregaElemento("div"));
                                                var E424311=E42431.appendChild(AgregaElemento("img"));
                                                    E424311.setAttribute("src","../svg/like.svg");
                                                    E424311.setAttribute("style","width:20px");
                                            var E42432=E4243.appendChild(AgregaElemento("div"));
                                                var E424321=E42432.appendChild(AgregaElemento("span"));
                                                    E424321.textContent=params[9];
                                //views
                                var E4244=E424.appendChild(AgregaElemento("div"));
                                    E4244.setAttribute("style","display:flex;width: 20%;");
                                                var E42441=E4244.appendChild(AgregaElemento("div"));
                                                    var E424411=E42441.appendChild(AgregaElemento("img"));
                                                        E424411.setAttribute("src","../svg/views.svg");
                                                        E424411.setAttribute("style","width:20px");
                                                var E42442=E4244.appendChild(AgregaElemento("div"));
                                                    var E424421=E42442.appendChild(AgregaElemento("span"));
                                                        E424421.textContent=params[10];
                                //marcar y compartir
                                var E4245=E424.appendChild(AgregaElemento("div"));
                                    E4245.setAttribute("style","display:flex;width: 20%;");
                                    var E42451 = E4245.appendChild(AgregaElemento("div"));
                                        E42451.setAttribute("style","display:flex;width: 50%;");
                                        var E424511=E42451.appendChild(AgregaElemento("img"));
                                            E424511.setAttribute("src","../svg/bookmark.svg");
                                            E424511.setAttribute("style","width:20px");
                                    var E42452 = E4245.appendChild(AgregaElemento("div"));
                                        E42452.setAttribute("style","display:flex;width: 50%;");
                                        var E424521=E42452.appendChild(AgregaElemento("img"));
                                            E424521.setAttribute("src","../svg/share.svg");
                                            E424521.setAttribute("style","width:20px");

}
function agregarBarraCentralForYou() {
    /*
    usuario[0]--nombre de usuario
    usuario[1]--apodo
    usuario[2]--img perfil
    usuario[3]--es verificado
    usuario[4]--imagen/video/audio a postear
    usuario[5]--tipo de archivo
    usuario[6]--texto post
    usuario[7]--cantidad comentarios
    usuario[8]--cantidad repost
    usuario[9]--cantidad likes
    usuario[10]--cantidad-view
    usuario[11]--fecha
    usuario[12]--hashtag
    */
    var usuario1 = [User1[0],
                    User1[1],
                    User1[2],
                    true,
                    "../img/images.jpeg",
                    "img",
                    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita perferendis autem dolores veritatis. Maiores temporibus sint adipisci eius corrupti laboriosam! Commodi sunt rem sit architecto mollitia, cumque vero vel omnis!",
                    "250",
                    "100",
                    "500",
                    "2K",
                    "15 jun.",
                    "#YoSoyIng"];//aqui se guardara el usuario que hace el post
    var usuario2 = [User2[0],
                    User2[1],
                    User2[2],
                    false,
                    "../img/[One Piece] Opening 16 - Hands Up! (Lyrics + Traduction).mp4",
                    "video",
                    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita perferendis autem dolores veritatis. Maiores temporibus sint adipisci eius corrupti laboriosam! Commodi sunt rem sit architecto mollitia, cumque vero vel omnis!",
                    "230",
                    "120",
                    "540",
                    "2.1K",
                    "1h",
                    ""];
    var usuario3 = ["HaruFans",
                    "@HF",
                    "../img/7fa5c4f551bddcbc21a46b8e50d545d0.jpg",
                    true,
                    "../img/Drifters Opening.mp3",
                    "audio",
                    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita perferendis autem dolores veritatis. Maiores temporibus sint adipisci eius corrupti laboriosam! Commodi sunt rem sit architecto mollitia, cumque vero vel omnis!",
                    "230",
                    "120",
                    "540",
                    "2.1K",
                    "1h",
                    "#vivaDrifter"];
    var usuario4 = ["HaruFans",
                    "@HF",
                    "../img/7fa5c4f551bddcbc21a46b8e50d545d0.jpg",
                    true,
                    "",
                    "",
                    "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Expedita perferendis autem dolores veritatis. Maiores temporibus sint adipisci eius corrupti laboriosam! Commodi sunt rem sit architecto mollitia, cumque vero vel omnis!",
                    "0",
                    "1",
                    "5",
                    "2",
                    "10mins",
                    ""];
    AgregarPost(usuario1);
    AgregarPost(usuario2);
    AgregarPost(usuario3);
    AgregarPost(usuario4);
}
