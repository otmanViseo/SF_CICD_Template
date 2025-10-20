import { LightningElement, wire } from 'lwc';
import getAllAccounts from '@salesforce/apex/AccountController.getAllAccounts';

export default class AccountRecordList extends LightningElement {
    accounts;
    
    @wire(getAllAccounts)
    wiredAccounts({ error, data }) {
        if (data) {
            this.accounts = data;
        } else if (error) {
            console.error('Erreur lors du chargement des comptes:', error);
        }
    }
    
}