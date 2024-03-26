package peoplefinder.POST.api.users.__id

default allowed := false

default visible := true

default enabled := false

allowed if {
	props = input.user.properties
	props.department == "Operations"
}

enabled if {
	allowed
}
