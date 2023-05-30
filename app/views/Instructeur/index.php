<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    <title>Instructeurs</title>
</head>
<body>
    <u><?= $data['title']; ?></u>

    <table border='1'>
        <thead>
            <th>Naam examinator</th>
            <th>Datum Examen</th>
            <th>Rijbewijcatagorie</th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Uitslag examen</th>
           
        </thead>
        <tbody>
           <tr>
            <td><?= $data['Naam']; ?>
            </td>
        
        </tr>
        </tbody>
    </table>
</body>
</html>


