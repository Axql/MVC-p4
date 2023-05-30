<?php

class Examen extends BaseController
{
    private $ExamenModel;

    public function __construct()
    {
        $this->ExamenModel = $this->model('InstructeurModel');
    }


    public function index()
    {
        $result  = $this->ExamenModel->getInstructeurs();

        var_dump($result);

       // Assuming the given data is stored in a variable called $data

// Loop through the array
foreach ($result as $info) {
    // Access individual properties of each object
    $id = $info->Id;
    $voornaam = $info->Voornaam;
    $tussenvoegsel = $info->Tussenvoegsel;
    $achternaam = $info->Achternaam;
    $mobiel = $info->Mobiel;
    $datumAangemaakt = $info->DatumAangemaakt;
    $datumGewijzigd = $info->DatumGewijzigd;

    // Use the data as needed (e.g., display or manipulate)
}

        $data = [
            'title' => 'Overzicht afgenomen examens',
            'Naam' => $info->Voornaam . ' ' . $info->Tussenvoegsel . ' '.  $info-> Achternaam
            
        ];

        $this->view('Examen/index', $data);
    }
}