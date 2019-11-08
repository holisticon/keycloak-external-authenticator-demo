package de.holisticon.storage.custom.mappers;

import org.keycloak.provider.Provider;
import org.keycloak.provider.ProviderFactory;
import org.keycloak.provider.Spi;

public class CustomStorageMapperSpi implements Spi {
    @Override
    public boolean isInternal() {
        return false;
    }

    @Override
    public String getName()  {
        return "custom-mapper";
    }

    @Override
    public Class<? extends Provider> getProviderClass() {
        return CustomStorageMapper.class;
    }

    @Override
    public Class<? extends ProviderFactory> getProviderFactoryClass() {
        return CustomStorageMapperFactory.class;
    }
}
