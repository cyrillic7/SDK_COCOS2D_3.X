.class Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;
.super Ljava/lang/Object;
.source "U8ANEExtension.java"

# interfaces
.implements Lcom/u8/sdk/IU8SDKListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->initSDKListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;)Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;
    .locals 1

    iget-object v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    return-object v0
.end method


# virtual methods
.method public onAuthResult(Lcom/u8/sdk/verify/UToken;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;

    invoke-direct {v1, p0, p1}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;-><init>(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;Lcom/u8/sdk/verify/UToken;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onInitResult(Lcom/u8/sdk/InitResult;)V
    .locals 0

    return-void
.end method

.method public onLoginResult(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;Z)V

    const-string v0, "U8SDK"

    const-string v1, "SDK \u767b\u5f55\u6210\u529f,\u4e0d\u7528\u505a\u5904\u7406\uff0c\u5728onAuthResult\u4e2d\u5904\u7406\u767b\u5f55\u6210\u529f, \u53c2\u6570\u5982\u4e0b:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "U8SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLogout()V
    .locals 3

    const-string v0, "U8SDK"

    const-string v1, "SDK logout\u6210\u529f\uff0c\u6e38\u620f\u4e2d\u6536\u5230\u4e8b\u4ef6\uff0c\u9700\u8981\u8fd4\u56de\u767b\u5f55\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    const-string v1, "OnLogout"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPayResult(Lcom/u8/sdk/PayResult;)V
    .locals 0

    return-void
.end method

.method public onResult(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    new-instance v1, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$1;-><init>(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/u8/sdk/U8SDK;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSwitchAccount()V
    .locals 3

    const-string v0, "U8SDK"

    const-string v1, "SDK \u5207\u6362\u5e10\u53f7\u6210\u529f\uff0c\u6e38\u620f\u4e2d\u6536\u5230\u4e8b\u4ef6\uff0c\u9700\u8981\u8fd4\u56de\u767b\u5f55\u754c\u9762"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    const-string v1, "OnLogout"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchAccount(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;Z)V

    const-string v0, "U8SDK"

    const-string v1, "SDK \u5207\u6362\u5e10\u53f7\u5e76\u767b\u5f55\u6210\u529f,\u4e0d\u7528\u505a\u5904\u7406\uff0c\u5728onAuthResult\u4e2d\u5904\u7406\u767b\u5f55\u6210\u529f, \u53c2\u6570\u5982\u4e0b:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "U8SDK"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
