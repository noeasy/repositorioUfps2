<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

            <%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>       
<%
    }
%>
</div>
</main>
            <%-- Page footer --%>
<!--
             <footer class="navbar navbar-inverse navbar-bottom">
             <div id="designedby" class="container text-muted">
           <a href="http://www.ufps.edu.co"><img
                                    src="<%= request.getContextPath() %>/image/logoufpsvertical.png"
                                    alt="Logo CINECA" /></a>

			<div id="footer_feedback" class="pull-right">                         <p class="text-muted">DEPARTAMENTE DE INGENIERIA DE SISTEMAS</p>            
                                <p class="text-muted">DESAROLLADO POR:Bayardo Dandenys Pineda Mogollon, Oscar Andres Gelves SOler</p>
                                </div>
			</div>
    </footer>
-->
<!--=== Footer Version 1 ===-->
<!-- organismos de control -->
<div class="footer-v1 off-container">
    <div class="footer">
        <div class="container">
            <div class="row">
                <!-- About -->
                <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                    <div class="footer-main">
                        <a href="index.html"><img id="logo-footer" class="img-responsive" src="https://ww2.ufps.edu.co/public/imagenes/template/footer/logoufpsvertical.png" alt="Logo Pie de Página UFPS"></a>
                    </div>
                </div><!--/col-md-3-->
                <!-- End About -->
                <!-- Latest -->
                <div class="col-md-3 col-sm-4 md-margin-bottom-40">
                    <div class="posts">
                        <div class="headline" style="border-bottom: #272727;"><h2>Portales Institucionales</h2></div>
                        <ul class="list-unstyled latest-list">
                            <li>
                                <a href="https://divisist2.ufps.edu.co/">Divisist</a>
                            </li>
                            <li>
                                <a href="http://dptosist.ufps.edu.co/piagev1/servlet/piagev">Piagev</a>
                            </li>
                            <li>
                                <a href="/universidad/atencion_ciudadano">PDQRS</a>
                            </li>
                              <li>
                                <a href="http://ugad.ufps.edu.co:8084/datarsoft001/home.ufps">DatarSoft</a>
                            </li>
                            <li>
                                <a href="http://nomina.ufps.edu.co:9191/nominaufps">Sistema de Nómina</a>
                            </li>
                            <li>
                                <a href="http://www.ufps.edu.co/ufps/cread/Presentacion.php">DISERACA</a>
                            </li>
                        </ul>
                    </div>
                </div><!--/col-md-3-->
                <!-- End Latest -->
                <!-- Link List -->
                <div class="col-md-3 col-sm-4  md-margin-bottom-40">
                    <div class="headline" style="border-bottom: #272727;"><h2>Enlaces de Interés</h2></div>
                    <ul class="list-unstyled latest-list">
                        <li><a href="https://ww2.ufps.edu.co/universidad/planeacion/655" style="text-transform: none;">Plan Anticorrupción</a></li>
                        <li><a href="https://ww2.ufps.edu.co/universidad/seleccion" style="text-transform: none;">Proceso de selección</a></li>
                        <li><a href="https://ww2.ufps.edu.co/universidad/contratacion/1122" style="text-transform: none;">Contratación</a></li>
                        <li><a href="https://ww2.ufps.edu.co/informacion/proceso-democratico-2017" style="text-transform: none;">Proceso democrático</a></li>
                        <li><a href="https://ww2.ufps.edu.co/vicerrectoria/vicerrectoria-administrativa/527" style="text-transform: none;">Derechos pecuniarios </a></li>
                        <li><a href="https://mail.google.com/a/ufps.edu.co/" style="text-transform: none;" target="_blank">Correo Electrónico Institucional</a></li>
                        <li><a href="https://ww2.ufps.edu.co/universidad/consultorio-juridico/1156" style="text-transform: none;">Consultorio Jurídico </a></li>
                    </ul>
                </div><!--/col-md-3-->
                <!-- End Link List -->
                <!-- Address -->
                <div class="col-md-3 col-sm-4  map-img md-margin-bottom-40">
                    <div class="headline" style="border-bottom: #272727;"><h2>Contactos</h2></div>
                    <address class="md-margin-bottom-40">
                        Avenida Gran Colombia No. 12E-96 Barrio Colsag, <br />
                        San José de Cúcuta - Colombia <br />
                        Teléfono (057)(7) 5776655 <br />
                        Correo: <a href="mailto:oficinadeprensa@ufps.edu.co" class="">oficinadeprensa@ufps.edu.co</a>
                    </address>
                </div><!--/col-md-3-->
                <!-- End Address -->
            </div>
        </div>
    </div><!--/footer-->
</div>
	<div class="owl-clients-v1" style="background-color:#EEE; padding: 5px;">
    <div class="item">
        <a href="http://www.mineducacion.gov.co/" target="_blank"><span class="sprite_organismo i-mineducacion hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.contraloriagen.gov.co/" target="_blank"><span class="sprite_organismo i-contraloria hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.procuraduria.gov.co/" target="_blank"><span class="sprite_organismo i-procuraduria hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.gobiernoenlinea.gov.co/" target="_blank"><span class="sprite_organismo i-gobiernoenlinea hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.urnadecristal.gov.co/" target="_blank"><span class="sprite_organismo i-urnadecristal hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://srg.com.co/microu.php?ID=15" target="_blank"><span class="sprite_organismo i-srg hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.icetex.gov.co/" target="_blank"><span class="sprite_organismo i-icetex hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.icfes.gov.co/" target="_blank"><span class="sprite_organismo i-icfes hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.universia.net.co/" target="_blank"><span class="sprite_organismo i-universia hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.colombiaaprende.edu.co/" target="_blank"><span class="sprite_organismo i-colombiaaprende hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.renata.edu.co/" target="_blank"><span class="sprite_organismo i-renata hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.colciencias.gov.co/" target="_blank"><span class="sprite_organismo i-colciencia hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.cna.gov.co/" target="_blank"><span class="sprite_organismo i-cna hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.mineducacion.gov.co/sistemasdeinformacion/1735/propertyvalue-41698.html" target="_blank"><span class="sprite_organismo i-saces hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.mineducacion.gov.co/sistemasdeinformacion/1735/w3-propertyname-2672.html" target="_blank"><span class="sprite_organismo i-snies hover-shadow"></span></a>
    </div>
    <div class="item">
        <a href="http://www.mineducacion.gov.co/sistemasdeinformacion/1735/w3-propertyname-2895.html" target="_blank"><span class="sprite_organismo i-spadies hover-shadow"></span></a>
    </div>


</div><!--=== End Footer Version 1 ===-->


</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/owl-carousel/owl-carousel/owl.carousel.min.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/horizontal-parallax/js/sequence.jquery-min.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/js/greensock.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/js/layerslider.transitions.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/layer-slider/layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
<script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/custom.min.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/app.min.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/js/plugins/owl-carousel.min.js">
</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>

</script><script type="text/javascript" src="https://ww2.ufps.edu.co/assets/plugins/wow-animations/js/wow.min.js"></script>






    </body>
</html>
