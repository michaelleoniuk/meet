**Objective**

To build a serverless, progressive web application (PWA) with React using a
test-driven development (TDD) technique. The application uses the Google
Calendar API to fetch upcoming events.

**Technical Requirements:**
- The app must be a React application.
- The app must be built using the TDD technique.
- The app must use the Google Calendar API and OAuth2 authentication flow.
- The app must use serverless functions (AWS lambda is preferred) for the authorization server
instead of using a traditional server.
- The app’s code must be hosted in a Git repository on GitHub.
- The app must work on the latest versions of Chrome, Firefox, Safari, Edge, and Opera, as well
as on IE11.
Page 2
- The app must display well on all screen sizes (including mobile and tablet) widths of 1920px
and 320px.
- The app must pass Lighthouse’s PWA checklist.
- The app must work offline or in slow network conditions with the help of a service worker.
- Users may be able to install the app on desktop and add the app to their home screen on
mobile.
- The app must be deployed on GitHub Pages.
- The app must implement an alert system using an OOP approach to show information to the
user.
- The app must make use of data visualization.
- The app must be covered by tests with a coverage rate >= 90%.
- The app must be monitored using an online performance monitoring tool.

**Feature 1: Filter Events By City**

**User Story**

As a user,

I should be able to filter events by city

So that I can see a list of events taking place in that city.

**Scenario 1**: When user hasn’t searched for a city, show upcoming events from all cities.
Given user hasn’t searched for any city;
When the user opens the app;
Then the user should see a list of upcoming events.

**Scenario 2**: User should see a list of suggestions when they search for a city.
Given the main page is open;
When user starts typing in the city textbox;
Then the user should receive a list of cities (suggestions) that match what they’ve typed.

**Scenario 3**: User can select a city from the suggested list.
Given user was typing “Berlin” in the city textbox AND the list of suggested cities is showing;
When the user selects a city (e.g., “Berlin, Germany”) from the list;
Then their city should be changed to that city (i.e., “Berlin, Germany”) AND the user should receive a list of upcoming events in that city.

**Feature 2: Show/Hide Event Details**

**User Story**

As a user,

I should be able to show and hide event details

So that I can have an access to more information about specific event.

**Scenario 1**: An event element is collapsed by default.
Given (past) user was presented with the list of events taking place in a chosen city;
When (present) the user scrolls and examines given results ;
Then (future) only basic information is visible as all event element is collapsed by default.

**Scenario 2**: User can expand an event to see details.
Given (past) user was presented with the list of events taking place in a chosen city ;
When (present) the user is interested in one of the shown event;
Then (future) more information about chosen event would be visible by clicking on "show details" button

**Scenario 3**: User can collapse an event to hide details.
Given (past) user saw event details and got all the needed information;
When (present) a user has no more interest in seeing event details;
Then (future) user can collapse an event by clicking on "hide details" button.

**Feature 3: Specify Number of Events**

**User Story**

As a user,

I should be able to specify number of events that are shown to me,

So that I can have control over how search results are presented to me .

**Scenario 1**: When user hasn’t specified a number, 32 events are shown by default.
Given (past) user was presented with number of available events;
When (present) the user doesn't change the number of shown events;
Then (future) 32 event will be presented to the user by defoult

**Scenario 2**: User can change the number of events displayed.
Given (past) user was presented with number of available events;
When (present) the user changes the number of shown event ;
Then (future) chosen number of event will be shown

**Feature 4: Use the App When Offline**

**User Story**

As a user,

I should be able to to use the App when it is offline

So that I would not be limmited when I want to use it but have no internet connection .

**Scenario 1**: Show cached data when there’s no internet connection.
Given (past) user opened the App but has no internet connection;
When (present) the user still wants to use the App;
Then (future) cached data would be shown

**Scenario 2**: Show error when user changes search settings (city, number of events).
Given (past) user opened the App but has no internet connection;
When (present) the user tries to change search settings;
Then (future) error message would be shown

**Feature 5: Add an App Shortcut to the Home Screen**

**User Story**

As a user,

I should be able to add an App shortcut to the Home Screen

So that I can have easy access to it whenever I want to use it .

**Scenario 1**: User can install the meet app as a shortcut on their device home screen.
Given (past) user is presented with different functionalities of an App;
When (present) user wants to have easier access to an App;
Then (future) user can add it as Shortcut to the Home Screen.

**Feature 6: Display Charts Visualizing Event Details**

**User Story**

As a user,

I should be able to see Charts that will give me visual perspective about all available events

So that I can choose the right one while having the wider perspective of available choices .

**Scenario 1**: Show a chart with the number of upcoming events in each city.
Given (past) user searched for upcoomming events;
When (present) user wants to see all events in more readable way;
Then (future) user could use Visual Charts
