package peoplefinder.PUT.api.users.__id

default allowed := false

default visible := true

default enabled := true

allowed if {
	props = input.user.properties
	props.department == "Operations"
}

allowed if {
	input.user.key == input.resource.id
}

allowed if {
	input.user.id == input.resource.id
}
