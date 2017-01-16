Feature: Check Routes have correct permissions leader

  Scenario Outline: Leader_Full signed in has access to proper pages
    Given I am not authenticated
    And I goto the login page
    And I enter valid leader_full credentials
    And I visit <page>
    Then the response code should be <allowed>

    Examples:
      | page                             | allowed |
      | /welcome                         | true    |
      | /join                            | true    |
      | /photos                          | true    |
      | /eagle                           | true    |
      | /troop_calendar                  | true    |
      | /articles                        | true    |
      | /articles/new                    | true    |
      | /articles/1/edit                 | true    |
      | /scouts                          | true    |
      | /scouts/new                      | true    |
      | /scouts/1/edit                   | true    |
      | /scouts/1                        | true    |
      | /requirements/new                | false   |
      | /requirements/1/edit             | false   |
      | /scout_requirements              | true    |
      | /scout_requirements/new          | true    |
      | /scout_requirements/1/edit       | true    |
      | /scout_positions                 | true    |
      | /scout_positions/new             | true    |
      | /scout_positions/1/edit          | true    |
      | /scout_positions/1.js            | true    |
      | /scout_positions/1               | true    |
      | /scout_trainings/1/edit          | true    |
      | /scout_trainings/1.js            | true    |
      | /scout_trainings/1               | true    |
      | /scout_rank_histories/new        | true    |
      | /scout_rank_histories/1/edit     | true    |
      | /scout_merit_badges/1.js         | true    |
      | /scout_merit_badges/1            | true    |
      | /scout_awards                    | true    |
      | /scout_awards/new                | true    |
      | /scout_awards/1/edit             | true    |
      | /scout_awards/1.js               | true    |
      | /scout_awards/1                  | true    |
      | /scout_events                    | true    |
      | /scout_events/new                | true    |
      | /scout_events/1/edit             | true    |
      | /scout_events/1.js               | true    |
      | /scout_events/1                  | true    |
      | /youth_awards                    | true    |
      | /youth_awards/new                | true    |
      | /youth_awards/1/edit             | true    |
      | /youth_awards/1                  | true    |
      | /youth_award_requirements        | true    |
      | /youth_award_requirements/new    | true    |
      | /youth_award_requirements/1/edit | true    |
      | /youth_award_requirements/1      | true    |
      | /positions                       | false   |
      | /positions/new                   | false   |
      | /positions/1/edit                | false   |
      | /positions/1                     | true    |
      | /ranks                           | true    |
      | /ranks/new                       | false   |
      | /ranks/1/edit                    | false   |
      | /ranks/1                         | true    |
      | /patrols                         | true    |
      | /patrols/new                     | true    |
      | /patrols/1/edit                  | true    |
      | /patrols/1                       | true    |
      | /relationships                   | true    |
      | /relationships/new               | true    |
      | /relationships/1/edit            | true    |
      | /relationships/1                 | true    |
      | /adults                          | true    |
      | /adults/new                      | true    |
      | /adults/1/edit                   | true    |
      | /adults/1                        | true    |
      | /adult_positions/new             | true    |
      | /adult_positions/1/edit          | true    |
      | /adult_events                    | true    |
      | /adult_events/new                | true    |
      | /adult_trainings                 | true    |
      | /adult_trainings/new             | true    |
      | /adult_trainings/1/edit          | true    |
      | /adult_trainings/1               | true    |
      | /vehicles                        | true    |
      | /vehicles/new                    | true    |
      | /vehicles/1/edit                 | true    |
      | /notifications                   | true    |
      | /notifications/new               | true    |
      | /notifications/1/edit            | true    |
      | /event_locations                 | true    |
      | /event_locations/new             | true    |
      | /event_locations/1/edit          | true    |
      | /event_locations/1               | true    |
      | /events                          | true    |
      | /events/new                      | true    |
      | /events/1/edit                   | true    |
      | /events/1                        | true    |
      | /categories                      | true    |
      | /categories/new                  | true    |
      | /categories/1/edit               | true    |
      | /categories/1                    | true    |
      | /reports/scout_detail_report     | true    |
      | /reports/patrol_report           | true    |
      | /reports/event_attendance_report | true    |
      | /reports/ypt_report              | true    |
      | /admin/users                     | false   |
      | /admin/users/1/edit              | false   |
      | /admin/file_uploads              | false   |
      | /admin/file_uploads/new          | false   |

