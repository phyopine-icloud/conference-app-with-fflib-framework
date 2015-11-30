//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// This is Interface for Selector layer template of FF Framework
// Step 2 of 2 for Selector Layer
// Change Class Name to appropriate name
// Naming convention is sObjectsSelector (note the plural form of sObject)
// Nothing interesting but just method signatures 
//
// Important: extends fflib_ISObjectSelector implements IsObjectsSelector
//
// getSObjectFieldList() and getSObjectType() are abstract methods and need to be overwritten
// Good to create List<sObject> selectById(Set<ID> idSet) method to return 
// and call (List<sObject>) selectSObjectsById(idSet)
// 
// Following virtual methods can be overwritten if needed
// virtual List<Schema.FieldSet> getSObjectFieldSetList() // to optionally include additional fields in the base queries
// virtual String getOrderBy()
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

public class SpeakersSelector extends fflib_SObjectSelector
	implements ISpeakersSelector
{
	public static ISpeakersSelector newInstance()
	{
		return (ISpeakersSelector) Application.Selector.newInstance(Speaker__c.SObjectType);
	}


	private static List<Schema.SObjectField> SpeakersDefaultFields = new List<Schema.SObjectField>{
			Speaker__c.Id,
			Speaker__c.First_Name__c,
			Speaker__c.Last_Name__c,
			Speaker__c.Email__c
	};

	private static List<Schema.SObjectField> SpeakersWithPictureFields = new List<Schema.SObjectField>{
			Speaker__c.Id,
			Speaker__c.First_Name__c,
			Speaker__c.Last_Name__c,
			Speaker__c.Email__c,
			Speaker__c.Picture__c,
			Speaker__c.Picture_Path__c
	};
	
	public List<Schema.SObjectField> getSObjectFieldList()
	{
		return SpeakersDefaultFields;
	}
	
	public Schema.SObjectType getSObjectType()
	{
		return Speaker__c.sObjectType;
	}

	public List<Speaker__c> selectById(Set<ID> idSet)
	{
		return (List<Speaker__c>) selectSObjectsById(idSet);
	}

	public List<Speaker__c> selectByIdWithPictures(){
		Integer defaultLimit = 10;

		fflib_QueryFactory SpeakersQueryFactory = newQueryFactory(false)
													.selectFields(SpeakersWithPictureFields);

		return (List<Speaker__c>) Database.query(SpeakersQueryFactory
													.setCondition('Picture__c != null')
													.setLimit(defaultLimit)
													.toSOQL()	
											);
														
	}
}