USE [Practice20082020]
GO

/****** Object:  StoredProcedure [dbo].[Usp_GetAllUser]    Script Date: 25-08-2020 11:47:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Usp_GetAllUser]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT um.Id,um.Username,um.Password,um.Email,um.Birthdate
			,dm.Department,um.Address,Cm.Cityname,Sm.State,um.Gender,um.Sallary,um.IsActive
	From UserMaster um Left join DepartmentMaster Dm ON um.DeptId=Dm.Id
	LEft Join StateMaster Sm On um.StateId=Sm.Id
	Left Join CityMaster Cm On um.CityId=Cm.Id 
END

GO


