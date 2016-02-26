.class Lcom/u8/sdk/BaiduSDK$5;
.super Ljava/lang/Object;
.source "BaiduSDK.java"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/BaiduSDK;->pay(Lcom/u8/sdk/PayParams;)V
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
        "Lcom/baidu/platformsdk/PayOrderInfo;",
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
    iput-object p1, p0, Lcom/u8/sdk/BaiduSDK$5;->this$0:Lcom/u8/sdk/BaiduSDK;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;Lcom/baidu/platformsdk/PayOrderInfo;)V
    .registers 8
    .param p1, "resultCode"    # I
    .param p2, "resultDesc"    # Ljava/lang/String;
    .param p3, "extraData"    # Lcom/baidu/platformsdk/PayOrderInfo;

    .prologue
    const/16 v3, 0xb

    .line 220
    const-string v0, ""

    .line 221
    .local v0, "resultStr":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_54

    .line 241
    :goto_7
    return-void

    .line 223
    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u6210\u529f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "pay successed."

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_7

    .line 227
    :sswitch_23
    const-string v0, "\u53d6\u6d88\u652f\u4ed8"

    .line 228
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "pay cancelled."

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_7

    .line 231
    :sswitch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "pay failed."

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_7

    .line 235
    :sswitch_48
    const-string v0, "\u8ba2\u5355\u5df2\u7ecf\u63d0\u4ea4\uff0c\u652f\u4ed8\u7ed3\u679c\u672a\u77e5"

    .line 236
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const-string v2, "pay submit."

    invoke-virtual {v1, v3, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_7

    .line 221
    :sswitch_data_54
    .sparse-switch
        -0x20 -> :sswitch_48
        -0x1f -> :sswitch_2f
        -0x1e -> :sswitch_23
        0x0 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p3, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/u8/sdk/BaiduSDK$5;->onResponse(ILjava/lang/String;Lcom/baidu/platformsdk/PayOrderInfo;)V

    return-void
.end method
