.class Lcom/u8/sdk/BaiduSDK$8;
.super Ljava/lang/Object;
.source "BaiduSDK.java"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->setSuspendWindowChangeAccountListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/gamesdk/IResponse",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/BaiduSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/BaiduSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$8;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK$8;->onResponse(ILjava/lang/String;Ljava/lang/Void;)V

    return-void
.end method

.method public onResponse(ILjava/lang/String;Ljava/lang/Void;)V
    .registers 10
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/Void;

    .prologue
    .line 309
    sparse-switch p1, :sswitch_data_32

    .line 345
    :goto_3
    return-void

    .line 313
    :sswitch_4
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginUid()Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "uid":Ljava/lang/String;
    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "token":Ljava/lang/String;
    const/4 v2, -0x1

    .line 316
    .local v2, "requesttype":I
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 318
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_12
    const-string v5, "uid"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v5, "token"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_24

    .line 326
    :goto_1c
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->onLogout()V

    goto :goto_3

    .line 320
    :catch_24
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 338
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "requesttype":I
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "uid":Ljava/lang/String;
    :sswitch_29
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v5

    invoke-virtual {v5}, Lcom/u8/sdk/U8SDK;->onLogout()V

    goto :goto_3

    .line 309
    nop

    :sswitch_data_32
    .sparse-switch
        -0x15 -> :sswitch_29
        0x0 -> :sswitch_4
    .end sparse-switch
.end method
