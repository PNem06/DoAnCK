BEGIN
    SELECT 
        g.Genre_Name AS TheLoai,
        COUNT(m.Movie_ID) AS SoLuongPhim
    FROM tbl_genre g
    LEFT JOIN tbl_movie m ON g.Genre_ID = m.Genre_ID
    GROUP BY g.Genre_Name;
END
