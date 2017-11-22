<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>

    <style>
        #div{
            text-align: center;
            background-color: darkslategray;
            width:500px;
            height:150px;
            position: relative;
            left:500px;
        }
    </style>
</head>
<body>
    <div id="div">
        <form>
            <label for="Mail">Adresse email : </label>
            <input type="text" name="Mail" id="Mail"/><br>
            <label for="MDP">Mot de passe : </label>
            <input type="text" name="MDP" id="MDP"/><br>
            <input type="submit" value="Valider"/>
        </form>
        <a href="Inscription.html"><button id="bouton_inscription">Inscription</button></a>
    </div>

</body>
</html>