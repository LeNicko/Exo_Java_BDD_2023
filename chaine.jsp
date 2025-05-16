<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chaîne JSP</title>
</head>
<body>
<%! 
    public String Plettre(String input) {
        if (input == null || input.isEmpty()) {
            return input;
        }
        String first = input.substring(0, 1).toUpperCase();
        String rest  = input.substring(1);
        return first + rest;
    }
%>
<%
    String bonjour = "salut la compagnie";
    String majuscules = bonjour.toUpperCase();
    String Plettre = bonjour.toUpperCase();
   
%>
  <h1>Résultats de traitement de la chaîne</h1>
    <p><strong>Base = </strong> <%= bonjour %></p>
    <p><strong>Tout en MAJUSCULES :</strong> <%= majuscules %></p>
    <p><strong>Seulement la 1ère lettre en majuscule :</strong> <%= Plettre %></p>

</body>
</html>

