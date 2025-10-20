/**
 * @description Controller pour les comptes
 */
public with sharing class AccountController {
    
    /**
     * @description Récupère tous les comptes pour les composants UI
     * @return List<Account> Liste des comptes
     */
    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccounts() {
        return AccountServiceManager.getAllAccounts(); 
    }
    
}