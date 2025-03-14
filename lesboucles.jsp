<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoiles</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>*****</br>*****</br>*****</br>*****</br>*****</p>

<%-- Affichage du code Java pour l'exercice 1 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
</pre>

<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>*</br>**</br>***</br>****</br>*****</p>

<%-- Affichage du code Java pour l'exercice 2 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
</pre>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>*****</br>****</br>***</br>**</br>*</p>

<%-- Affichage du code Java pour l'exercice 3 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        for (int i = n; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
</pre>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

<%-- Affichage du code Java pour l'exercice 4 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
</pre>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>

<%-- Affichage du code Java pour l'exercice 5 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
</pre>

<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;***</br>&nbsp;&nbsp;****</br>*****</p>
<p>*****</br>&nbsp;&nbsp;****</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;**</br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</p>

<%-- Affichage du code Java pour l'exercice 6 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        // Partie supérieure du losange
        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= n - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }
        
        // Partie inférieure du losange
        for (int i = n - 1; i >= 1; i--) {
            for (int j = 1; j <= n - i; j++) {
                System.out.print(" ");
            }
            for (int k = 1; k <= i; k++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}
</pre>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créer une table de multiplication</p>
<p>Exemple si l'utilisateur saisie la valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>

<%-- Affichage du code Java pour l'exercice 7 --%>
<pre>
import java.util.Scanner;

class Solution {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        
        int n = in.nextInt();
        
        for (int i = 1; i <= n; i++) {
            System.out.println(n + " x " + i + " = " + (n * i));
        }
    }
}
</pre>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
