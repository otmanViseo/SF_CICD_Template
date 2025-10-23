/**
 * @description Controller pour les cas
 */
public with sharing class CaseController {
    
    /**
     * @description Récupère tous les cas pour les composants UI
     * @return List<Case> Liste des cas
     */
    @AuraEnabled(cacheable=true)
    public static List<Case> getAllCases() {
        return CaseServiceManager.getAllCases();
    }
    
    /**
     * Méthode de test : fait un SOQL dans une boucle for (anti-pattern)
     * Ne pas utiliser en production
     */
    public static void soqlInLoopTest(List<Id> caseIds) {
        for (Id caseId : caseIds) {
            // Anti-pattern : requête SOQL dans une boucle
            List<Case> cases = [SELECT Id, Subject FROM Case WHERE Id = :caseId];
        }
    }
}
