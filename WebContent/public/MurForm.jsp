

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Mur</title>
    <style>
        #div_mur{
            text-align: center;
            background-color: darkslategray;
            width:500px;
            height:1000px;
            position: relative;
            left:500px;

        }
        #div_message1{
            background-color: cyan;
        }
        #div_message2{
            background-color: cyan;
        }
        #div_recherche{
            text-align: center;
        }
        #bouton_connexion{
            position: relative;
            left: 1400px;
            bottom: 25px;
        }
        #bouton_profil{
            position: relative;
            left: 1350px;

        }
        #suggestion{
            position: absolute;
            top: 200px;
            margin: 2px;
            border-style: solid;
            border-width:2px;
            border-color: darkslategray;
        }


    </style>
</head>
<body>
    <div id="div_recherche">
        <label for="Recherche">Rechercher : </label>
        <input type="text" name="Recherche" id="Recherche"/>
    </div>
    <div id="suggestion">
        <label for="Mael">Mael </label>
        <button id="Mael">Ajouter</button><br>
        <label for="Jeremy">Jeremy </label>
        <button id="Jeremy">Ajouter</button><br>
        <label for="Sofiane">Sofiane </label>
        <button id="Sofiane">Ajouter</button><br>
        <label for="Julien">Julien </label>
        <button id="Julien">Ajouter</button>
    </div>
    <button id="bouton_connexion">Connexion</button>
    <button id="bouton_profil">Profil</button>
    <div id="div_mur">
        <label for="message">Poster votre humeur : </label>
        <input type="text" name="humeur" id="message"/>
        <button>Valider</button>
        <div id="div_message1"> <p>Humeur de john </p> </div>
        <div id="div_message2"> <p>Mon humeur...</p></div>

    </div>
</body>
</html>