({
    doInit: function(component, event, helper) {
        var action = component.get("c.getAllAccounts");
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.accounts", response.getReturnValue());
            } else {
                console.error("Erreur lors du chargement des comptes");
            }
        });
        $A.enqueueAction(action);
    }
})