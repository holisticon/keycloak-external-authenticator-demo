package de.holisticon.storage.custom;


import org.jboss.logging.Logger;
// tag::keycloak-spi-provider-factory[]
import org.keycloak.component.ComponentModel;
import org.keycloak.models.KeycloakSession;
// end::keycloak-spi-provider-factory[]
import org.keycloak.provider.ProviderConfigProperty;
import org.keycloak.provider.ProviderConfigurationBuilder;
// tag::keycloak-spi-provider-factory[]
import org.keycloak.storage.UserStorageProviderFactory;
// end::keycloak-spi-provider-factory[]

import java.util.List;

// tag::keycloak-spi-provider-factory[]
public class CustomStorageProviderFactory implements UserStorageProviderFactory<CustomStorageProvider> {
// end::keycloak-spi-provider-factory[]

    private static final Logger logger = Logger.getLogger(CustomStorageProvider.class);

    // tag::keycloak-spi-provider-factory[]
    static final String PROVIDER_NAME = "CustomDemoProvider";

    @Override
    public CustomStorageProvider create(KeycloakSession keycloakSession, ComponentModel componentModel) {
        return new CustomStorageProvider(keycloakSession, componentModel, new UserRepository());
    }

    @Override
    public String getId() {
        return PROVIDER_NAME;
    }
    // end::keycloak-spi-provider-factory[]


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
    // tag::keycloak-spi-provider-factory[]
}
// end::keycloak-spi-provider-factory[]
