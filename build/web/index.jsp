<%-- 
    Document   : index
    Created on : 21/09/2021, 13:05:58
    Author     : Grupo 4
--%>
<%@page import="modelo.Marca" %>
<%@page import="modelo.Producto" %>
<%@page import="modelo.Conexion" %>
<%@page import="modelo.Proveedores" %>
<%@page import="java.util.HashMap" %>
<%@page import="javax.swing.table.DefaultTableModel" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
        
    </head>
    <body>
        <h1>Formulario Productos</h1>
          <div class="contrainer">
       <form action = "sr_Productos" method="post" class= "form-group">
           <label for="lbl_producto" ><b>Producto</b></label>
           <input type="text" name="txt_producto" id="txt_producto" class="form-control">
           <label for="lbl_marca" ><b>Marca</b></label>
           <select name="drop_marca" class="form-select" id="drop_marca">
                <% 
                Marca marcas = new Marca();
                HashMap<String,String> drop = marcas.drop_sangre();
                for(String i: drop.keySet()){
                    out.println("<option value = '"+ i +"'>"+ drop.get(i)+"</option>");
                }
                   
                %>
                </select>
            <label for="lbl_descripcion" ><b>Descripcion</b></label>
           <input name="txt_descripcion" id="txt_descripcion" class="form-control">
            <label for="lbl_precio_costo" ><b>Precio_costo</b></label>
           <input type="text" name="txt_precio_costo" id="txt_precio_costo" class="form-control">
           <label for="lbl_precio_venta" ><b>Precio_venta</b></label>
           <input type="text" name="txt_precio_venta" id="txt_precio_venta" class="form-control">
           <label for="lbl_existencia" ><b>Existencia</b></label>
           <input type="text" name="txt_existencia" id="txt_existencia" class="form-control">
          
            <br>
           <button  name="btn_agregar" id="btn_agregar" values="agregar" class="btn btn-primary">Agregar</button>
            </form>
                <br>
      
                <table class="table table-bordered">
    <thead>
      <tr>
        <th>Producto</th>
        <th>Marca</th>
        <th>Descripcion</th>
        <th>Precio_costo</th>
        <th>Precio_venta</th>
        <th>Existencia</th>
    
       
      </tr>
    </thead>
    <tbody id="tbl_productos">
        <%
             Producto productos = new Producto();
             DefaultTableModel tabla= new DefaultTableModel();
             tabla = productos.leer();
             for(int t=0; t<tabla.getRowCount();t++){
                out.println("<tr data-id="+tabla.getValueAt(t, 0)+">");
                out.println("<td>"+ tabla.getValueAt(t, 1)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 2)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 3)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 4)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 5)+"</td>");
                out.println("<td>"+ tabla.getValueAt(t, 6)+"</td>");
               
               
                out.println("</tr>");
                 
             } 
        %>
       
    </tbody>
     </table>
                 </div>
        
    <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js" integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
    </body>
</html>