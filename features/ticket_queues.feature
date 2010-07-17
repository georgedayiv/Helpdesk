Feature: Ticket Queues
  In order to organize tickets
  As a Helpdesk tech
  I want a list of tickets I am responsible for
  
  Scenario: My queue is assigned a new ticket
    Given Shawn assigns my queue a new ticket
    When I go to my ticket queue
    Then I should see the ticket
    