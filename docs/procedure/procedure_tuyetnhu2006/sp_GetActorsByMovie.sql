DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_GetActorsByMovie`(IN p_MovieID INT)
BEGIN
    SELECT 
        a.Actor_ID,
        a.Actor_Name,
        a.Actor_Info,
        a.Actor_Social
    FROM tbl_actor a
    INNER JOIN tbl_movie_actor ma 
        ON a.Actor_ID = ma.Actor_ID
    WHERE ma.Movie_ID = p_MovieID;
END$$
DELIMITER ;
