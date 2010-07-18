Feature: Ticket Queues
  In order to organize tickets
  As a Helpdesk tech
  I want a list of tickets I am responsible for
  
  Scenario: My queue is assigned ticket number 1
    Given a new ticket
    When Shawn assigns the ticket to my queue
    Then the ticket should apppear in my queue
    