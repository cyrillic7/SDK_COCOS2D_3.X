.class public interface abstract Lcom/nearme/plugin/framework/receiver/IPluginBroadcastReceiver;
.super Ljava/lang/Object;
.source "IPluginBroadcastReceiver.java"

# interfaces
.implements Lcom/nearme/plugin/framework/IPlugin;


# virtual methods
.method public abstract init(Ljava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Ljava/lang/ClassLoader;Z)V
.end method

.method public abstract pluginOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
