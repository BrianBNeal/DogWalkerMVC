CREATE TABLE [dbo].[Owner] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Email]          VARCHAR (255) NOT NULL,
    [Name]           VARCHAR (55)  NOT NULL,
    [Address]        VARCHAR (255) NOT NULL,
    [NeighborhoodId] INT           NULL,
    [Phone]          VARCHAR (55)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Owner_Neighborhood] FOREIGN KEY ([NeighborhoodId]) REFERENCES [dbo].[Neighborhood] ([Id]),
    CONSTRAINT [UQ_Email] UNIQUE NONCLUSTERED ([Email] ASC)
);

