<%-- 
    Document   : index
    Created on : 30/09/2021, 13:48:15
    Author     : olive
--%>
<%@page import="modelo.clientes" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.HashMap" %>
<%@page import="javax.swing.table.DefaultTableModel" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clientes</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    </head>
    <body>
        <div>
                  <h1>Formulario Clientes</h1>
     
        </div>
 
         <div class="contrainer">
            
        <form action = "sr_clientes" method="post" class= "form-group">
         <label for="lbl_id" ><b>ID</b></label>
         <input type="text" name="txt_id" id="txt_id" class="form-control" value="0" readonly="">
           <label for="lbl_nombres" ><b>Nombres</b></label>
           <input type="text" name="txt_nombres" id="txt_nombres" class="form-control" placeholder="Ejemplo: Nombre1 Nombre2">
           <label for="lbl_apellidos" ><b>Apellidos</b></label>
           <input type="text" name="txt_apellidos" id="txt_apellidos" class="form-control" placeholder="Ejemplo: Apellido1 Apellido2">
           <label for="lbn_nit"><b>Nit</b></label>
           <input type="text" name="txt_nit" id="txt_nit" class="form-control">
           <label for="lbl_genero" ><b>Genero</b></label>
           <input type="text" name="txt_genero" id="txt_genero" class="form-control" placeholder="Ejemplo: f= femenino y  m= masculino">
           <label for="lbl_telefono" ><b>Telefono</b></label>
           <input type="number" name="txt_telefono" id="txt_telefono" class="form-control" placeholder="Ejemplo: 12345678">
           <label for="lbl_correo_electronico" ><b>Correo</b></label>
           <input type="text" name="txt_correo_electronico" id="txt_correo_electronico" class="form-control" placeholder="Ejemplo: jose12@gmail.com">
           <label for="lbl_fn"class="form-control" ><b>Ingreso</b></label>
           <input type="date" name="txt_fn" id="txt_fn" class="form-control" placeholder=" YYY-MM-DD">
           <br>
           <button  name="btn_agregar" id="btn_agregar" value="agregar" class="btn btn-primary btn-lg">Agregar</button>
           <button  name="btn_modificar" id="btn_modificar" value="modificar" class="btn btn-success  btn-lg">Modificar</button>
           <button  name="btn_eliminar" id="btn_eliminar" value="eliminar" class="btn btn-danger  btn-lg "onclick ">Eliminar</button>
          
       
        </form>
    
             <br>
           <table class="table table-bordered">
    <thead>
      <tr>
        
        <th>Nombres</th>
        <th>Apellidos</th>
        <th>NIT</th>
         <th>Genero</th>
        <th>Telefono</th>
         <th>Correo_electronico</th>
        <th>Fecha_ingreso</th>
      </tr>
     </thead>
    <tbody id="tbl_clientes">
         <%
             clientes cliente = new clientes();
             DefaultTableModel tabla= new DefaultTableModel();
             tabla = cliente.leer();
             for(int t=0; t<tabla.getRowCount();t++){
                out.println("<tr data-id="+tabla.getValueAt(t, 0)+">");
                out.println("<td>"+ tabla.getValueAt(t, 1)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 2)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 3)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 4)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 5)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 6)+"</td>");
                 out.println("<td>"+ tabla.getValueAt(t, 7)+"</td>");
                
                out.println("</tr>");
                 
             }
     
        %>
      
        
       
    </tbody>
  </table>
    
     </div>
            <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script type="text/javascript">
            $('#tbl_clientes').on('click','tr td',function(evt){
                var target,id,nombres,apellidos,nit,genero,telefono,correo,ingreso;
                target = $(event.target);
                id = target.parent().data('id');
                nombres = target.parent("tr").find("td").eq(0).html();
                 apellidos = target.parent("tr").find("td").eq(1).html();
                 nit = target.parent("tr").find("td").eq(2).html();
                  genero = target.parent("tr").find("td").eq(3).html();
                   telefono = target.parent("tr").find("td").eq(4).html();
                    correo = target.parent("tr").find("td").eq(5).html();
                     ingreso = target.parent("tr").find("td").eq(6).html();
                
 $("#txt_id").val(id);
                $("#txt_nombres").val(nombres);
                 $("#txt_apellidos").val(apellidos);
                   $("#txt_nit").val(nit);
                   $("#txt_genero").val(genero);
                    $("#txt_telefono").val(telefono);
                    $("#txt_correo_electronico").val(correo);
                     $("#txt_fn").val(ingreso);
                     
                
            });
            
        </script>
  </body>  
</html>
