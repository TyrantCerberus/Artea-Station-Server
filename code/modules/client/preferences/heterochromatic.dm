/datum/preference/color/heterochromatic
	category = PREFERENCE_CATEGORY_APPEARANCE_LIST
	savefile_key = "heterochromatic"
	savefile_identifier = PREFERENCE_CHARACTER

/datum/preference/color/heterochromatic/is_accessible(datum/preferences/preferences)
	if (!..(preferences))
		return FALSE

	return "Heterochromatic" in preferences.all_quirks

/datum/preference/color/heterochromatic/apply_to_human(mob/living/carbon/human/target, value, datum/preferences/preferences)
	var/datum/quirk/heterochromatic/hetero_quirk = locate() in target.quirks
	hetero_quirk?.apply_heterochromatic_eyes(value)
