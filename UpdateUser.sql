USE [Practice20082020]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Update_UserDetail]    Script Date: 25-08-2020 11:49:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Usp_Update_UserDetail]
	-- Add the parameters for the stored procedure here
	@ID INT,
	@Username varchar(128),
	@Password varchar(255),
    @Email varchar(255),
	@Birthdate Date,
	@DeptId Int,
	@Address varchar(2048),
	@CityId int,
	@StateId int,
	@Gender varchar(50),
	@Sallary Bigint,
	@IsActive bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update  UserMaster SET Username=@Username,
						Password=@Password,Email=@Email,
						Birthdate=@Birthdate,DeptId=@DeptId,
						Address=@Address,CityId=@CityId,
						StateId=@StateId,Gender=@Gender,Sallary=@Sallary,
						IsActive=@IsActive
					 WHERE Id=@ID
	
END
