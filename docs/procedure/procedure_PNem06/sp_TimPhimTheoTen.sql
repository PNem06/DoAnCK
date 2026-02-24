CREATE PROCEDURE SearchMovieByName(IN keyword VARCHAR(128))
BEGIN
    SELECT * 
    FROM tbl_movie
    WHERE Movie_Tittle LIKE CONCAT('%', keyword, '%');
END
