////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is service layer template for FF Framework
// Step 2 of 3 for Service Layer
// Change Class Name to appropriate name
// Naming convention is sObjectsService (note the plural form of sObject)
// private static service() method needs to be there, other than that feel free to add new methods
////////////////////////////////////////////////////////////////////////////////////////////////////////

global with sharing class SpeakersService
{
	global static void getSpeakersInfo(Set<ID> speakerIds)
	{
		service().getSpeakersInfo(speakerIds);
	}

	private static ISpeakersService service() 
	{
		return (ISpeakersService) Application.Service.newInstance(ISpeakersService.class);
	}
}