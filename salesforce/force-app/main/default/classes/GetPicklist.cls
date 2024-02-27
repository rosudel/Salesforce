public with sharing class GetPicklist {
    public GetPicklist() {

    }

    @AuraEnabled(cacheable = true)
    public static String getPicklist(){

        /*Country__c is a picklist field. picklistValues is a list containing all the picklist values. */
        Schema.DescribeFieldResult fieldDescribe = customArticle__c.Country__c.getDescribe();
        List<Schema.PicklistEntry> picklistValues = fieldDescribe.getPicklistValues();
        for(Schema.PicklistEntry entry : picklistValues) {
            System.debug('Picklist Value: ' + entry.getValue());
            System.debug(entry.getValue());
        }
        return 'hello';
    }
}