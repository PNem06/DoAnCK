DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_TopMoviesByViews`(IN p_Limit INT)
BEGIN
    SELECT 
        m.Movie_ID,
        m.Movie_Title,
        COUNT(w.Movie_ID) AS Total_Views
    FROM tbl_movie m
    LEFT JOIN tbl_watchlist w 
        ON m.Movie_ID = w.Movie_ID
    GROUP BY m.Movie_ID, m.Movie_Title
    ORDER BY Total_Views DESC
    LIMIT p_Limit;
END$$
DELIMITER ;
