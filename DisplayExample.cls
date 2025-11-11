Account myAccount = new Account();
myAccount.FirstName = 'John';
myAccount.MiddleName = null;
myAccount.LastName = 'Smith';

// Display first, middle, last or first, last
String name2 = '';
			if (myAccount.FirstName != null) {
    			name2 += myAccount.FirstName;
				}
			if (myAccount.MiddleName != null) {
    				name2 += (name2 != '' ? ', ' : '') + myAccount.MiddleName;
				}
			if (myAccount.LastName != null) {
    				name2 += (name2 != '' ? ', ' : '') + myAccount.LastName;
				}
System.debug('Full Name: ' + name2);

// Applicant last, first, middle
        String name = (myAccount.LastName != null ? myAccount.LastName : '') +
              (myAccount.FirstName != null ? (myAccount.LastName != null ? ', ' : '') + myAccount.FirstName : '') +
              (myAccount.MiddleName != null ? ( (myAccount.LastName != null || myAccount.FirstName != null) ? ', ' : '' ) + myAccount.MiddleName : '');
System.debug('Full Name: ' + name);
