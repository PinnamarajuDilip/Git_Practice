trigger ContactDescriptionTrigger on Contact (before insert) {

    for (Contact con : Trigger.new) {

        if (String.isBlank(con.Description)) {
            con.Description = 'New Contact Created';
        }
    }
}