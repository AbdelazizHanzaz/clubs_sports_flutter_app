# Club Management App

Club management app built with Flutter for managing sports clubs - view, add, edit clubs and members.

## Models

**Club**

- id: Unique ID
- name: Name of club
- location: Address 
- sports: List of sports teams  

**Member**

- id: Unique ID  
- name: Member name
- clubs: List of clubs member belongs to

## Tools & Packages

- Flutter SDK
- Dart
- Provider - State management
- Firebase Auth - User authentication
- Cloud Firestore - Remote database

## Screens

**Login**

Screen for user to login using email and password.

**Register** 

Screen for user to create a new account.

**Club List** 

Screen showing list of all clubs. Has FAB to add clubs.

**Club Details**

Screen showing in-depth details for a single club.

**Add Club** 

Modal popup form to add a new club.

**Edit Club**

Modal popup form to edit an existing club.

## Widgets

**ClubListItem** - Widget to display club name, location in list view.

**MemberListItem** - Widget to display member name in list view.

**SportsDropdown** - Reusable dropdown widget to select sports.

## Usage

- Browse list of clubs.
- View club details like contacts, facilities.
- Edit and delete existing clubs.
- Add new clubs by entering details in form.
- Manage club members.

## Contributing

Contributions welcome! Open a PR or issue.

## License 

MIT License - see LICENSE file.

Let me know if you would like me to expand or clarify any part of the README!