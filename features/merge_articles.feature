Feature: Merge Articles
	As a blog administrator
	In order to add one article to another
	I want to be able to merge articles

	Background:
		Given the blog is set up
		And non-admin user is created
		And 2 articles are created

	Scenario: An Administrator should see merge option
		Given I am logged into the admin panel
		When I am on the edit page
		Then I should see "Merge Articles"

	Scenario: A non-admin user cannot see merge option
		Given I am logged into the user panel
		When I am on the edit page
		Then I should not see "Merge Articles"

	Scenario: An Administrator can merge articles
		Given I am logged into the admin panel
		When I am on the edit page
		And I fill in "merge_with" with "2"
		And I press "Merge"
		Then I should see "Articles merged" 

	

	Scenario: When articles are merged, the merged article should contain the text of both previous articles

	Scenario: When articles are merged, the merged article should have one author (either one of the authors of the two original articles)

	Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article.

	Scenario: The title of the new article should be the title from either one of the merged articles.

	Scenario: The form field containing the ID of the article to merge with must have the HTML attribute name set to merge_with. 

