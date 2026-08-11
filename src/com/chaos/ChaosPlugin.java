package com.chaos;

import org.bukkit.plugin.java.JavaPlugin;

public final class ChaosPlugin extends JavaPlugin {
    @Override
    public void onEnable() {
        getLogger().info("Chaos enabled — depends on everything.");
    }

    @Override
    public void onDisable() {
        getLogger().info("Chaos disabled.");
    }
}
