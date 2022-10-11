CREATE TABLE [dbo].[Walker] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (55)  NOT NULL,
    [ImageUrl]       VARCHAR (255) NULL,
    [NeighborhoodId] INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Walker_Neighborhood] FOREIGN KEY ([NeighborhoodId]) REFERENCES [dbo].[Neighborhood] ([Id])
);

