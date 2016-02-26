.class Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;
.super Ljava/lang/Object;
.source "U8ANEExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->onAuthResult(Lcom/u8/sdk/verify/UToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;

.field private final synthetic val$authResult:Lcom/u8/sdk/verify/UToken;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;Lcom/u8/sdk/verify/UToken;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->this$2:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;

    iput-object p2, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v2}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->this$2:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;

    # getter for: Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;
    invoke-static {v2}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;)Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    move-result-object v2

    # getter for: Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->this$0:Lcom/u8/sdk/ane/U8ANEExtension;
    invoke-static {v2}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->access$2(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;)Lcom/u8/sdk/ane/U8ANEExtension;

    move-result-object v2

    const-string v3, "SDK\u767b\u5f55\u8ba4\u8bc1\u5931\u8d25,\u786e\u8ba4U8Server\u662f\u5426\u914d\u7f6e"

    # invokes: Lcom/u8/sdk/ane/U8ANEExtension;->tip(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/u8/sdk/ane/U8ANEExtension;->access$0(Lcom/u8/sdk/ane/U8ANEExtension;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "isSuc"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v3}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "isSwitchAccount"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->this$2:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;

    # getter for: Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;
    invoke-static {v3}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;)Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    move-result-object v3

    # getter for: Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->isSwitchAccount:Z
    invoke-static {v3}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->access$1(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v2}, Lcom/u8/sdk/verify/UToken;->isSuc()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "userID"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v3}, Lcom/u8/sdk/verify/UToken;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkUserID"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v3}, Lcom/u8/sdk/verify/UToken;->getSdkUserID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "username"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v3}, Lcom/u8/sdk/verify/UToken;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sdkUsername"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v3}, Lcom/u8/sdk/verify/UToken;->getSdkUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "token"

    iget-object v3, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->val$authResult:Lcom/u8/sdk/verify/UToken;

    invoke-virtual {v3}, Lcom/u8/sdk/verify/UToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1$2;->this$2:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;

    # getter for: Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->this$1:Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;
    invoke-static {v2}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;->access$0(Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext$1;)Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;

    move-result-object v2

    const-string v3, "OnLoginSuc"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/ane/U8ANEExtension$U8ANEContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
