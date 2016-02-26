.class public interface abstract Lcom/nearme/plugin/framework/service/IPluginService;
.super Ljava/lang/Object;
.source "IPluginService.java"

# interfaces
.implements Lcom/nearme/plugin/framework/IPlugin;


# virtual methods
.method public abstract init(Ljava/lang/String;Ljava/lang/String;Landroid/app/Service;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;ZLjava/lang/String;)V
.end method

.method public abstract pluginOnBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public abstract pluginOnCreate()V
.end method

.method public abstract pluginOnDestroy()V
.end method

.method public abstract pluginOnStart(Landroid/content/Intent;I)V
.end method

.method public abstract pluginOnStartCommand(Landroid/content/Intent;II)I
.end method

.method public abstract pluginOnUnbind(Landroid/content/Intent;)Z
.end method
