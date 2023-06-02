<?php

class Leerling extends BaseController
{
    private $examenModel;
    public function __construct()
    {
        $this->examenModel = $this->model('ExamenModel');
    }
    public function index()
    {
        /**
         * Haal alle instructeurs op uit de database (model)
         */
        $afgenomenExamens = $this->examenModel->getAfgenomenExamens();

        // var_dump($leerlingPakket);
        // $aantalInstructeurs = sizeof($instructeurs);

        // /**
        //  * Maak de rows voor de tbody in de view
        //  */
        $tableRows = '';

        foreach ($afgenomenExamens as $examens) {
            $tableRows .=  "<tr>
                                <td>$examens->ExaminatorFullName</td>
                                <td>$examens->DatumExamen</td>
                                <td>$examens->Rijbewijscategorie</td>
                                <td>$examens->Rijschool</td>
                                <td>$examens->Stad</td>
                                <td>$examens->Uitslag</td>
                            </tr>";
        }

        /**
         * Het $data-array geeft alle belangrijke info door aan de view
         */
        $data = [
            'title' => 'Overzicht Afgenomen Exames Examinatoren',
            'LeerlingInformatie' => $examens,
            'tableRows' => $tableRows
        ];

        $this->view('leerling/index', $data);
    }

   
}
