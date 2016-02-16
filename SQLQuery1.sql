--CREATE TRIGGER insertEnSolucionado1
--ON dbo.INCIDENCIA AFTER UPDATE

--AS

--begin

--declare @idInci INT

--select @idInci = [IdIncidencia] FROM INCIDENCIA

--INSERT INTO dbo.INSTALACION (IdIncid) VALUES (@idInci);

--end;
--DROP TRIGGER insertEnSolucionado1;