.class Lcom/u8/sdk/OPPOSDK$3;
.super Ljava/lang/Object;
.source "OPPOSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OPPOSDK;->doGetTokenAndSsoid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OPPOSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OPPOSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OPPOSDK$3;->this$0:Lcom/u8/sdk/OPPOSDK;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .registers 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 115
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

    .line 116
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 103
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    .local v1, "json":Lorg/json/JSONObject;
    const-string v4, "token"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "token":Ljava/lang/String;
    const-string v4, "ssoid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "ssoid":Ljava/lang/String;
    iget-object v4, p0, Lcom/u8/sdk/OPPOSDK$3;->this$0:Lcom/u8/sdk/OPPOSDK;

    # invokes: Lcom/u8/sdk/OPPOSDK;->doGetUserInfoByCpClient(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v3, v2}, Lcom/u8/sdk/OPPOSDK;->access$0(Lcom/u8/sdk/OPPOSDK;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    .line 111
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "ssoid":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :goto_16
    return-void

    .line 108
    :catch_17
    move-exception v0

    .line 109
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_16
.end method
