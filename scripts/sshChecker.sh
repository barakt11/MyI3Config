TEST=$(ssh-add -L)

if [ "$TEST" = "The agent has no identities." ]; then
	echo "No identities detected";
	ssh-add
fi
