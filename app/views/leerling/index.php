<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Instructeurs</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    
</head>
<body>
    <u><?= $data['title']; ?></u>
    <!-- <p>aantal instructeurs: <?= $data['aantalInstructeurs']; ?></p> -->

    <table>
        <thead>
            <th>Naam</th>
            <th>Mobiel</th>
            <th>PakketNaam</th>
            <th>AantalLessen</th>
            <th>Prijs</th>
            <th>Startdatum</th>
            <th>DatumRijbewijsBehaald</th>
        </thead>

        <tbody>
            <?= $data['tableRows']; ?>
        </tbody>
    </table>
</body>
</html>