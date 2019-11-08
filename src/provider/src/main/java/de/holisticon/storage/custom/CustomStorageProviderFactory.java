package de.holisticon.storage.custom;


import org.jboss.logging.Logger;
import org.keycloak.component.ComponentModel;
import org.keycloak.models.KeycloakSession;
import org.keycloak.provider.ProviderConfigProperty;
import org.keycloak.provider.ProviderConfigurationBuilder;
import org.keycloak.storage.UserStorageProviderFactory;

import java.util.List;


public class CustomStorageProviderFactory implements UserStorageProviderFactory<CustomStorageProvider> {

    private static final Logger logger = Logger.getLogger(CustomStorageProvider.class);

    static final String PROVIDER_NAME = "CustomDemoProvider";

    @Override
    public CustomStorageProvider create(KeycloakSession keycloakSession, ComponentModel componentModel) {
        return new CustomStorageProvider(keycloakSession, componentModel, new UserRepository());
    }

    @Override
    public String getId() {
        return PROVIDER_NAME;
    }


    @Override
    public List<ProviderConfigProperty> getConfigProperties() {

        // this configuration is configurable in the admin-console
        return ProviderConfigurationBuilder.create()
                .property()
                .name("myParam")
                .label("My Param")
                .helpText("Some Description")
                .type(ProviderConfigProperty.STRING_TYPE)
                .defaultValue("some value")
                .add()
                // more properties
                // .property()
                // .add()
                .build();
    }
}
