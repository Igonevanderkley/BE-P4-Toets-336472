<?php

class ExamenModel
{
  private $db;

  public function __construct()
  {
    $this->db = new Database();
  }

  public function getAfgenomenExamens()
  {
    $sql = "SELECT
    CONCAT(Examinator.Voornaam, ' ', Examinator.Tussenvoegsel, ' ', Examinator.Achternaam) AS ExaminatorFullName,
    Examen.Datum AS DatumExamen,
    Examen.Rijbewijscategorie,
    Examen.Rijschool,
    Examen.Stad,
    Examen.Uitslag,
    COUNT(CASE WHEN Examen.Uitslag = 'Geslaagd' THEN 1 END) AS Geslaagden
FROM
    Examen
JOIN
    ExamenPerExaminator ON ExamenPerExaminator.ExamenId = Examen.Id
JOIN
    Examinator ON Examinator.Id = ExamenPerExaminator.ExaminatorId
GROUP BY
    ExaminatorFullName,
    DatumExamen,
    Rijbewijscategorie,
    Rijschool,
    Stad,
    Uitslag
ORDER BY
    Geslaagden DESC;

 ";

    $this->db->query($sql);

    return $this->db->resultSet();
  }
}
