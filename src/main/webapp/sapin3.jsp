<%-- 
    Document   : sapin3
    Created on : 6 avr. 2018, 17:02:31
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sapin couché</title>
    </head>
    <body>
        <a href="index.html">Retour menu</a><br>
        <h1>Sapin couché</h1>

        <%
            String couleur;
            if (request.getParameter("couleur") != null && request.getParameter("couleur") != "") couleur = request.getParameter("couleur");
            else couleur = "blue";
            out.print("<font color='"+couleur+"'>");
            
            String hauteur;
            if (request.getParameter("hauteur") != null && request.getParameter("hauteur") != "") hauteur = request.getParameter("hauteur");
            else hauteur = "10"; // Valeur par défaut si aucun nombre n'est entré
            int h = Integer.parseInt(hauteur);
            
            for (int i = 1; i <= h; i++) {
                for (int j = 1; j <= i; j++) {
                    out.print("*");
                }
                out.print("<br>");
            }
        
            
            for (int i = 1; i < h; i++) { // Pour la descente, répète h-1 fois (parce que le sommet était atteint) 
                for (int j = h; j > i; j--) { 
                    out.print("*");
                }
                out.print("<br>");
            }
        %>
        
        </font>
    </body>
</html>
