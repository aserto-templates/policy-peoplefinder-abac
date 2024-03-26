package peoplefinder.POST.api.users

default allowed := false

default visible := false

default enabled := false

allowed if {
	props = input.user.properties
	props.department == "Operations"
	props.title == "IT Manager"
}

visible if {
	allowed
}

enabled if {
	allowed
}
