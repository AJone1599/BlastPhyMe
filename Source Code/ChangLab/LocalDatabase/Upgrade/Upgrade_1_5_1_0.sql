SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET NOCOUNT ON
UPDATE PAML.ModelPreset SET Name = 'Clade Model C (Res)', ShortName = 'Clade Model C (Res)' WHERE [Key] = 'CmcNull'
UPDATE PAML.ModelPreset SET Name = 'Clade Model D (Res)', ShortName = 'Clade Model D (Res)' WHERE [Key] = 'CmDNull'
SET NOCOUNT OFF
GO

UPDATE Common.ApplicationProperty
	SET Value = '1.5.1.0'
	WHERE [Key] = 'DatabaseVersion'
GO