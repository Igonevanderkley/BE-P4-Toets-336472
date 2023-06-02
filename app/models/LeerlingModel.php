<?php

class LeerlingModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getLeerling()
    {
        $sql = "SELECT
        CONCAT_WS(' ', Leerling.Voornaam, Leerling.Tussenvoegsel, Leerling.Achternaam) AS FullName,
        Leerling.Mobiel,
        LesPakket.PakketNaam,
        LesPakket.AantalLessen,
        LesPakket.Prijs,
        LeerlingPerLesPakket.StartDatumRijlessen,
        LeerlingPerLesPakket.DatumRijbewijsBehaald
      FROM
        Leerling
      JOIN
        LeerlingPerLesPakket ON LeerlingPerLesPakket.LeerlingId = Leerling.Id
      JOIN
        LesPakket ON LesPakket.Id = LeerlingPerLesPakket.LesPakketId
        ORDER BY LeerlingPerLesPakket.StartDatumRijlessen;
      ";

        $this->db->query($sql);

        return $this->db->resultSet();
    }


}
