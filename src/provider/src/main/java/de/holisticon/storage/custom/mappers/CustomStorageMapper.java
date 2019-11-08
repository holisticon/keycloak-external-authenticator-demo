package de.holisticon.storage.custom.mappers;

import org.keycloak.models.GroupModel;
import org.keycloak.models.RealmModel;
import org.keycloak.models.UserModel;
import org.keycloak.provider.Provider;
import org.keycloak.storage.user.SynchronizationResult;

import java.util.List;


public interface CustomStorageMapper extends Provider {

    /**
     * Sync data from federated storage to Keycloak. It's useful just if mapper needs some data preloaded from federated storage (For example
     * load roles from federated provider and sync them to Keycloak database)
     * <p>
     * Applicable just if sync is supported
     */
    SynchronizationResult syncDataFromFederationProviderToKeycloak(RealmModel realm);

    /**
     * Sync data from Keycloak back to federated storage
     **/
    SynchronizationResult syncDataFromKeycloakToFederationProvider(RealmModel realm);

    /**
     * Return empty list if doesn't support storing of groups
     */
    List<UserModel> getGroupMembers(RealmModel realm, GroupModel group, int firstResult, int maxResults);
}