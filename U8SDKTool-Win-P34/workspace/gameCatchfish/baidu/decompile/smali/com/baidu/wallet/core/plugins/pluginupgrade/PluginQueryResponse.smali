.class public Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/beans/IBeanResponse;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;
    }
.end annotation


# instance fields
.field public plugin:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResponseValidity()Z
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;->plugin:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;->plugin:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;

    iget-object v1, v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;->data:[Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-nez v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;->plugin:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;

    iget-object v1, v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;->data:[Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    array-length v1, v1

    if-lez v1, :cond_3a

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse;->plugin:Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;

    iget-object v2, v1, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginQueryResponse$PluginInfo;->data:[Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    array-length v3, v2

    move v1, v0

    :goto_19
    if-ge v1, v3, :cond_3a

    aget-object v4, v2, v1

    if-eqz v4, :cond_b

    iget-object v5, v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v4, v4, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->version:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_3a
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public storeResponse(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
