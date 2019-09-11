CREATE TABLE teamMembers (
    tLastName VARCHAR(20) NOT NULL,
    tFirstName VARCHAR(20) NOT NULL,
    tEmail VARCHAR(20),
    tCellPhone VARCHAR(20) NOT NULL,
    tTeamTask VARCHAR(50),
    tDueDate DATE,

    CONSTRAINT teamMembers_pk PRIMARY KEY (tCellPhone)
);

-- Add initial row
INSERT INTO teamMembers (tLastName, tFirstName, tCellPhone)
VALUES ('Mindrum', 'Tanner', '(123) 456-7890');

-- Test to see if primary key is working
INSERT INTO teamMembers (tLastName, tFirstName, tCellPhone)
VALUES ('Mindrum', 'Tanner', '(777) 456-7890');

--Display data
SELECT * FROM teamMembers;
