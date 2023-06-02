<?php

class Leerling extends BaseController
{
    private $leerlingModel;
    public function __construct()
    {
        $this->leerlingModel = $this->model('LeerlingModel');
    }
    public function index()
    {
        /**
         * Haal alle instructeurs op uit de database (model)
         */
        $leerlingPakket = $this->leerlingModel->getLeerling();

        // var_dump($leerlingPakket);
        // $aantalInstructeurs = sizeof($instructeurs);

        // /**
        //  * Maak de rows voor de tbody in de view
        //  */
        $tableRows = '';

        foreach ($leerlingPakket as $leerling) {
            $tableRows .=  "<tr>
                                <td>$leerling->FullName</td>
                                <td>$leerling->Mobiel</td>
                                <td>$leerling->PakketNaam</td>
                                <td>$leerling->AantalLessen</td>
                                <td>$leerling->Prijs</td>
                                <td>$leerling->StartDatumRijlessen</td>
                                <td>$leerling->DatumRijbewijsBehaald</td>
                            </tr>";
        }

        /**
         * Het $data-array geeft alle belangrijke info door aan de view
         */
        $data = [
            'title' => 'Overzicht Rijlespakketten Leerlingen',
            // 'LeerlingInformatie' => $leerling,
            'tableRows' => $tableRows
        ];

        $this->view('leerling/index', $data);
    }

   
}
