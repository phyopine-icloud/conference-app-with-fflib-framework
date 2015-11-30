////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is Actual implementation for Domain and Domain Trigger layer template of FF Framework
// Step 2 of 2 for Domain Layer
// Change Class Name to appropriate name
// Naming convention is IsObjects (note the plural form of sObject)
// 
// Must have 2 methods and 1 inner class minimum
// 1. newInstance 
// 2. Constructor - with sObjectList passed in parameters
// 3. Constructor class
//
// Important: extends fflib_SObjectDomain implements IsObjects
////////////////////////////////////////////////////////////////////////////////////////////////////////


public class Speakers extends fflib_SObjectDomain
	implements ISpeakers
 {
	public static ISpeakers newInstance(List<Speaker__c> sObjectList)
	{
		return (ISpeakers) Application.Domain.newInstance(sObjectList);
	}

	public Speakers(List<Speaker__c> sObjectList)
	{
		// Domain classes are initialised with lists to enforce bulkification throughout
		super(sObjectList);
	}

	public class Constructor implements fflib_SObjectDomain.IConstructable
	{
		public fflib_SObjectDomain construct(List<SObject> sObjectList)
		{
			return new Speakers(sObjectList);
		}
	}

	public List<Speaker__c> getSpeakersInfo()
	{
		System.debug('Current Speaker Records:' + Records);

		List<Speaker__c> speakerRecords = new List<Speaker__c>();
		speakerRecords = Records;
		return speakerRecords;
	}

}