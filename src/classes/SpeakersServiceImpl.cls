////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is Implementation for service layer template of FF Framework
// Step 3 of 3 for Service Layer
// Change Class Name to appropriate name
// Naming convention is sObjectsServiceImpl (note the plural form of sObject)
// Real meat of Service layer logic and implementations go heres
// 
// Add Service entry into Application.cls after this step
////////////////////////////////////////////////////////////////////////////////////////////////////////

public class SpeakersServiceImpl  
	implements ISpeakersService
{
	public void getSpeakersInfo (Set <Id> speakerIds)
	{
		List<Speaker__c> speakerRecords = SpeakersSelector.newInstance().selectById(speakerIds);

		ISpeakers sessionSpeakers = Speakers.newInstance(speakerRecords);

		//sessionSpeakers.getSpeakersInfo();

	}

}