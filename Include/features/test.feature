@CareGap
Feature: Functionality of Care Gap section of a patient

  Background:
    Given I navigate to patient grid
  
 
    @CareGapCreateGoalTaskboth
   @Regression 
   @Sanity
  Scenario Outline: Create goal and task of a patient
    Given I search <Patient> using global search 
    When I click on Care Gaps tab   
  And I should see button of create goal and task for <CareGap> care gap
  And I click on create goal and task button of <CareGap> care gap     
    * I am on create goal and task form
    * I enter <Goal> in  goal field
    * I enter <GoalTargetType> in  goal target type field
    * I enter <GoalStrtdate> in  goal start date field
    * I enter <GoalEnddate> in goal end date field
    * I enter <GoalPriority> in goal priority field
    * I enter <GoalOwner> in goal owner field
    * I enter <GoalComments> in goal comments field   
    * I enter <Task> in task field
    * I enter <TaskStartDate> in task start date field
    * I enter <TaskTrget> in task target field
    * I enter <TaskPriority> in task priority field
    #* I enter <TaskStatus> in task status field
    * I enter <TaskComments> in task comments field
    * I click on save button to save data of care gap goal and task
 Then I should see success message for created goal and task
  And I should see button of view task and goal for <CareGap> care gap
  And I click on patient goal tab in PWB
              #******* I should see goal <Goal> with goal priority <GoalPriority> and goal start date <GoalStrtdate> end date <GoalEnddate> in PWB goal section
    * I click on patient task tab in PWB
              #********* I should see task <Task> with status <TaskStatus> and task start date <TaskStartDate> end date <TaskTrget> present in PWB task section
    * I click on Care Gaps tab  
    * I should be able to click on view task and goal button of <CareGap> care gap
    * I click on view task and goal button of <CareGap> care gap  
    *   I click on delete button to delete goal
    *   I click on yes button to cofirm delete goal task
 Then I should see success message for deleted goal and task
               #******************And I should see button of create goal and task for <CareGap> care gap

    Examples: 
      | Patient      |                              CareGap             | Goal                      | GoalTargetType | GoalStrtdate | GoalEnddate | GoalPriority    | GoalOwner | GoalComments     | Task           | TaskStartDate | TaskTrget | TaskPriority | TaskStatus | TaskComments                           |
      |Haly, Patricia|Hypotension| Goal is to cure in a week | ST             |     04012021 |    04222022 | Normal Priority | Provider  | Goal has created | Blood pressure |      03122021 |   4122021 | High         | Active     | Goal and Task Created by gaol and task |
