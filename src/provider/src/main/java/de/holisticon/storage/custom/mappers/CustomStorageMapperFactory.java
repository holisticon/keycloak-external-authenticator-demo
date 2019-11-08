package de.holisticon.storage.custom.mappers;

import org.keycloak.Config;
import org.keycloak.component.ComponentModel;
import org.keycloak.component.ComponentValidationException;
import org.keycloak.component.SubComponentFactory;
import org.keycloak.models.KeycloakSession;
import org.keycloak.models.KeycloakSessionFactory;
import org.keycloak.models.RealmModel;
import org.keycloak.provider.ProviderConfigProperty;
import org.keycloak.storage.UserStorageProviderModel;

import java.util.Collections;
import java.util.List;

public interface CustomStorageMapperFactory<T extends CustomStorageMapper> extends SubComponentFactory<T, CustomStorageMapper> {
    /**
     * called per Keycloak transaction.
     *
     * @param session
     * @param model
     * @return
     */
    T create(KeycloakSession session, ComponentModel model);

    /**
     * This is the name of the provider and will be showed in the admin console as an option.
     *
     * @return
     */
    @Override
    String getId();

    @Override
    default void init(Config.Scope config) {

    }

    @Override
    default void postInit(KeycloakSessionFactory factory) {

    }

    @Override
    default void close() {

    }

    @Override
    default String getHelpText() {
        return "";
    }

    @Override
    default List<ProviderConfigProperty> getConfigProperties() {
        return Collections.EMPTY_LIST;
    }

    @Override
    default void validateConfiguration(KeycloakSession session, RealmModel realm, ComponentModel config) throws ComponentValidationException {

    }

    default void onParentUpdate(RealmModel realm, UserStorageProviderModel oldParent, UserStorageProviderModel newParent, ComponentModel mapperModel) {

    }

    /**
     * Called when UserStorageProviderModel is created.  This allows you to do initialization of any additional configuration
     * you need to add.  For example, you may be introspecting a database or ldap schema to automatically create mappings.
     *
     * @param session
     * @param realm
     * @param model
     */
    @Override
    default void onCreate(KeycloakSession session, RealmModel realm, ComponentModel model) {

    }
}