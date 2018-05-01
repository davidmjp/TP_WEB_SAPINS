<%-- 
    Document   : sapin2
    Created on : 6 avr. 2018, 17:02:01
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sapin vide</title>
    </head>
    <body>
        <a href="index.html">Retour menu</a><br>
        <h1>Sapin vide</h1>

        <%
            String couleur;
            if (request.getParameter("couleur") != null && request.getParameter("couleur") != "") couleur = request.getParameter("couleur");
            else couleur = "blue";
            out.print("<font color='"+couleur+"'>");
            
            String hauteur;
            if (request.getParameter("hauteur") != null && request.getParameter("hauteur") != "") hauteur = request.getParameter("hauteur");
            else hauteur = "10"; // Valeur par défaut si aucun nombre n'est entré
            int h = Integer.parseInt(hauteur);
            
            int longueur = h * 2 - 1;
            int nbEtoiles = 1;
            int nbEspaces = 0;

            for (int i = 1; i < h; i++) {
                nbEspaces = (longueur - nbEtoiles)/2;
                for (int j = 1; j <= nbEspaces; j++) {
                    out.print("&nbsp&nbsp");
                }
                for (int j = 1; j <= nbEtoiles; j++) {
                    if (j == 1 || j == nbEtoiles) out.print("*");
                    else out.print("&nbsp&nbsp");
                }
                out.println("<br>");
                nbEtoiles = nbEtoiles + 2;
            }
            for (int j = 1; j <= nbEtoiles; j++) { out.print("*"); }
        %>
        
        </font>
    </body>
</html>
