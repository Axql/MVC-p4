<?php

class InstructeurModel 
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getInstructeurs()
    {
        $sql = "SELECT * FROM examinator";

        $this->db->query($sql);

        return $this->db->resultSet();
    }
}