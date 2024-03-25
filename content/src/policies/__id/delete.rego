package peoplefinder.DELETE.api.users.__id

default allowed := false

default visible := false

default enabled := false

allowed if {
	props = input.user.properties
	props.department == "Operations"
	props.title == "IT Manager"
}

visible if {
	props = input.user.properties
	props.department == "Operations"
}

enabled if {
	allowed
}
