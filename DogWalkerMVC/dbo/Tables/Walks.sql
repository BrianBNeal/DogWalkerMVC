CREATE TABLE [dbo].[Walks] (
    [Id]       INT      IDENTITY (1, 1) NOT NULL,
    [Date]     DATETIME NOT NULL,
    [Duration] INT      NOT NULL,
    [WalkerId] INT      NOT NULL,
    [DogId]    INT      NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Walks_Dog] FOREIGN KEY ([DogId]) REFERENCES [dbo].[Dog] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_Walks_Walker] FOREIGN KEY ([WalkerId]) REFERENCES [dbo].[Walker] ([Id]) ON DELETE CASCADE
);

