<?php
require_once __DIR__ . '/../../Config/database.php';
class Character {
    private $conn;
    private $id;
    private $name;
    public function __construct($conn){
         $this->conn = Database::getInstance()->getConnection();
    }
    public function setCharacter($id,$name){
        $this->id = $id;
        $this->name = $name;
    }

    public function getId(){
        return $this->id;
    }

    public function getName(){
        return $this->name;
    }
    public function getActorsByMovie($movie_id){
        try {
            if (!$movie_id) return [];

            $sql = "CALL sp_GetActorsByMovie(:movie_id)";
            $stmt = $this->conn->prepare($sql);
            $stmt->bindParam(':movie_id', $movie_id, PDO::PARAM_INT);
            $stmt->execute();

            $data = $stmt->fetchAll(PDO::FETCH_OBJ);

            $stmt->closeCursor();

            return $data ?: [];

        } catch (PDOException $e) {
            error_log($e->getMessage());
            return [];
        }
    }
}
?>
