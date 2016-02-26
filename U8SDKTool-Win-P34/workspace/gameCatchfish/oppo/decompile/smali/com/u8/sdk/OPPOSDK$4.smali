.class Lcom/u8/sdk/OPPOSDK$4;
.super Ljava/lang/Object;
.source "OPPOSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OPPOSDK;->doGetUserInfoByCpClient(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OPPOSDK;

.field private final synthetic val$token:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OPPOSDK;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OPPOSDK$4;->this$0:Lcom/u8/sdk/OPPOSDK;

    iput-object p2, p0, Lcom/u8/sdk/OPPOSDK$4;->val$token:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .registers 7
    .param p1, "resultMsg"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 145
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login cancelled."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 11
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 129
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    .local v2, "json":Lorg/json/JSONObject;
    const-string v7, "userName"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "username":Ljava/lang/String;
    const-string v7, "mobile"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "mobile":Ljava/lang/String;
    const-string v7, "email"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "email":Ljava/lang/String;
    const-string v7, "ssoid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "ssoid":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v5}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 135
    iget-object v7, p0, Lcom/u8/sdk/OPPOSDK$4;->this$0:Lcom/u8/sdk/OPPOSDK;

    iget-object v8, p0, Lcom/u8/sdk/OPPOSDK$4;->val$token:Ljava/lang/String;

    # invokes: Lcom/u8/sdk/OPPOSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v6, v5, v8}, Lcom/u8/sdk/OPPOSDK;->access$1(Lcom/u8/sdk/OPPOSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_34} :catch_35

    .line 141
    .end local v1    # "email":Ljava/lang/String;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "mobile":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "ssoid":Ljava/lang/String;
    .end local v6    # "username":Ljava/lang/String;
    :goto_34
    return-void

    .line 137
    :catch_35
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_34
.end method
