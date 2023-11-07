CREATE TABLE Crops (
    CropID int not null,
    CropName VARCHAR (20),
    PricePerKilo DOUBLE,
    Weight int,
    PRIMARY KEY (CropID)
);

CREATE INDEX idx_CropName ON Crops (CropName);


CREATE TABLE Animals(
    AnimalID int not null,
    AnimalType VARCHAR(10),
    Breed VARCHAR (20),
    Gender VARCHAR (10),
    StageOfDevelopment VARCHAR (10),
    PRIMARY KEY (AnimalID)
);

CREATE INDEX idx_AnimalType ON Animals(AnimalType);

Create TABLE AnimalFeed(
    AnimalFeedID int not null,
    FeedName VARCHAR (20),
    Brand VARCHAR (20),
    PRICEperKilogram INT,
    weightofFeed INT, 
    PRIMARY KEY (AnimalFeedID)
);

CREATE INDEX idx_Brand on AnimalFeed(Brand);


CREATE TABLE soilMaterial(
    SoilMaterialID int not NULL,
    SMname VARCHAR (20),
   acronyms VARCHAR (3),
   weightMeasurement VARCHAR (10),
   soilWeight int,
   pricePerSMWeight INT,
   PRIMARY KEY (SoilMaterialID)
);


CREATE INDEX idx_acronyms on soilMaterial(acronyms);

CREATE TABLE Tools(
    ToolsID int not null,
    ToolType VARCHAR(12),
    ToolName VARCHAR(20),
    QuantityofTool INT,
    PricePerTool int,
    PRIMARY KEY (ToolsID)
);


CREATE TABLE Farm_Inventory(
    Foreign Key (SoilMaterialID) REFERENCES soilMaterial(SoilMaterialID),
    Foreign Key (AnimalFeedID) REFERENCES AnimalFeed(AnimalFeedID),
    Foreign Key (AnimalID) REFERENCES Animals(AnimalID),
    Foreign Key (CropID) REFERENCES Crops(CropID),
    Foreign Key (ToolsID) REFERENCES Tools(ToolsID),
    QuantityOfTools int,
    CostofAnimalFeed&Crops DECIMAL,
    weightOfanimalFeed&Crops DECIMAL
);