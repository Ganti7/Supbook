<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Recherche</title>
    <style>
        #div_recherche{
            text-align: center;
        }
        #div_mur{
            text-align: center;
            background-color: darkslategray;
            width:500px;
            height:1000px;
            position: relative;
            left:500px;

        }
    </style>
</head>
<body>
    <div id="div_recherche">
        <label for="Recherche">Rechercher : </label>
        <input type="text" name="Recherche" id="Recherche"/>
    </div>

    <div id="div_mur">
        <p>Mael  <button id="Mael">Ajouter</button></p>
        <p>Jeremy  <button id="Mael">Ajouter</button></p>
        <p>Mae  <button id="Mael">Ajouter</button></p>
        <p>Julien  <button id="Mael">Ajouter</button></p>
        <p>Sofiane  <button id="Mael">Ajouter</button></p>
        <form>
            <label for="Invitation">Inviter un ami : </label>
            <input type="text" name="Invitation" id="Invitation"/>
            <input type="submit" value="Inviter"/>
        </form>

    </div>
</body>
</html>