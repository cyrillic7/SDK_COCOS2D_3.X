.class public interface abstract Lcom/nearme/plugin/framework/activity/IPluginActivity;
.super Ljava/lang/Object;
.source "IPluginActivity.java"

# interfaces
.implements Lcom/nearme/plugin/framework/IPlugin;


# virtual methods
.method public abstract getContentView()Landroid/view/View;
.end method

.method public abstract getLayoutInflater()Landroid/view/LayoutInflater;
.end method

.method public abstract getResources()Landroid/content/res/Resources;
.end method

.method public abstract init(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;Z)V
.end method

.method public abstract preOnCreate()V
.end method

.method public abstract setTabActivityFlag()V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method
