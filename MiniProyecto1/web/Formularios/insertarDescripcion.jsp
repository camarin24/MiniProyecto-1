<%-- 
    Document   : insertarDescripcion
    Created on : 11/03/2015, 11/03/2015 09:31:33 AM
    Author     : aprendiz
--%>

<%@page import="Conexion.Conexion"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
        
        <!-- NO ENTIENDO POR QUÉ ESTE ARCHIVO (insertarDescripcion) es JSP y el otro insertar (insertarDescripcion) es JAVA
            SE SUPONE QUE PARA HACER ESO ES CON LOS BEANS O SEA LOS .JAVA y por eso es que este no debería funcionar bien
        -->
        
       <%
    Connection conn;
    Statement estado=null;
    ResultSet result;
    String query;

    Conexion conectar = new Conexion();
    
        conn = conectar.conectar_db();
        
        try {
            estado = conn.createStatement();
        } catch (Exception e) {
          
        }


//Insertar 
        
      query="insert into descripcion (capacidad,velocidad,tipoConexion,tecnologia,voltaje,tamanio,descripcionAdicional,compatibilidad) "
      + "values ('"+request.getParameter("capacidad") +"','"+request.getParameter("velocidad")+"','"+request.getParameter("tipoConexion")+"',"
              + "'"+request.getParameter("tecnologia")+"','"+request.getParameter("voltaje")+"','"+request.getParameter("tamanio")+"',"
              + "'"+request.getParameter("descripcionAdicional")+"','"+request.getParameter("compatibilidad")+"')";
   
      try {
                estado.executeUpdate(query);
            } catch (Exception e) {
                out.println("Hubo un  error");
            }
        

       %>
           <h1>hola putas</h1>
    </body>
</html>