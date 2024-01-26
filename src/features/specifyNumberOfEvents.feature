Feature: Specify number of events
    Scenario: When user did not specified a number, 32 events are shown by default
        Given user was presented with number of available events
        When the user does not change the number of shown events
        Then 32 event will be presented to the user by defoult
        
    Scenario: User can change the number of events displayed
        Given user was presented with number of available events
        When the user changes the number of shown event
        Then chosen number of event will be shown