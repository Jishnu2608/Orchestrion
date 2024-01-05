public with sharing class FooterComponentLWCService {
    
    @AuraEnabled(cacheable=true)
    public static List<Footer__c> fetchFooterContent(){
        List<Footer__c> footerContent = new List<Footer__c>();
        try {
            footerContent = [SELECT Id, Content__c, Name FROM Footer__c WITH SECURITY_ENFORCED LIMIT 3];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
        return footerContent;
    }
    
}