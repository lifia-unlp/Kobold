db.createUser(
{
	user: "koboldusr",
	pwd: "koboldpwd",
	roles: [
		{
			role: "readWrite",
			db: "kobold"
		}
	]
}
)