.class Lcom/u8/sdk/QBaoSDK$1;
.super Ljava/lang/Object;
.source "QBaoSDK.java"

# interfaces
.implements Lcom/qbao/sdk/api/QbaoSdk$ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/QBaoSDK;->initSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/QBaoSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/QBaoSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/QBaoSDK$1;->this$0:Lcom/u8/sdk/QBaoSDK;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .param p1, "resultCode"    # I
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "ogj"    # Ljava/lang/Object;

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_54

    .line 76
    :goto_3
    :pswitch_3
    return-void

    .line 64
    :pswitch_4
    const/4 v0, -0x1

    .line 65
    .local v0, "requesttype":I
    const-string v2, "U8SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "qbaologin : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/u8/sdk/QBaoSDK$1;->this$0:Lcom/u8/sdk/QBaoSDK;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/u8/sdk/QBaoSDK;->encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0, p2, v3}, Lcom/u8/sdk/QBaoSDK;->access$0(Lcom/u8/sdk/QBaoSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    goto :goto_3

    .line 71
    .end local v0    # "requesttype":I
    .end local v1    # "result":Ljava/lang/String;
    :pswitch_37
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "login cancelled."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_3

    .line 62
    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_37
    .end packed-switch
.end method
