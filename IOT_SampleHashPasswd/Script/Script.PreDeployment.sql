IF NOT EXISTS (SELECT * FROM sys.syslogins where [name] = N'AppUser')
BEGIN
	CREATE LOGIN [AppUser] WITH PASSWORD = 'Test1234='
END