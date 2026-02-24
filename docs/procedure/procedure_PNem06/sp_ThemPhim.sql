CREATE PROCEDURE AddMovie(
    IN pTittle VARCHAR(128),
    IN pDescription VARCHAR(512),
    IN pImg VARCHAR(225),
    IN pGenreID INT,
    IN pReleaseDate DATE,
    IN pStreamingDate DATE,
    IN pStudioID INT,
    IN pDirectorID INT,
    IN pActorID INT,
    IN pAccountID INT
)
BEGIN
    INSERT INTO tbl_movie(
        Movie_Tittle,
        Movie_Description,
        Movie_Img,
        Genre_ID,
        Movie_ReleaseDate,
        Movie_StreamingDate,
        Studio_ID,
        Director_ID,
        Actor_ID,
        Account_ID
    )
    VALUES(
        pTittle,
        pDescription,
        pImg,
        pGenreID,
        pReleaseDate,
        pStreamingDate,
        pStudioID,
        pDirectorID,
        pActorID,
        pAccountID
    );
END
