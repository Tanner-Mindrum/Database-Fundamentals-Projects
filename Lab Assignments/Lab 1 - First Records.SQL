CREATE TABLE teamMembers (
    tLastName VARCHAR(20) NOT NULL,
    tFirstName VARCHAR(20) NOT NULL,
    tEmail VARCHAR(20),
    tCellPhone VARCHAR(20) NOT NULL,
    tTeamTask VARCHAR(50),
    tDueDate DATE,

    CONSTRAINT teamMembers_pk PRIMARY KEY (tCellPhone)
);

INSERT INTO teamMembers (tLastName, tFirstName, tCellPhone)
VALUES ('Mindrum', 'Tanner', '(123) 456-7890');

INSERT INTO teamMembers (tLastName, tFirstName, tCellPhone)
VALUES ('Mindrum', 'Tanner', '(777) 456-7890');

SELECT * FROM teamMembers;