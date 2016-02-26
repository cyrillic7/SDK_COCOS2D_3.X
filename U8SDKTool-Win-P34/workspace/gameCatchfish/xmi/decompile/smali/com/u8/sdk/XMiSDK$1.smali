.class Lcom/u8/sdk/XMiSDK$1;
.super Ljava/lang/Object;
.source "XMiSDK.java"

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/XMiSDK;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/XMiSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/XMiSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/XMiSDK$1;->this$0:Lcom/u8/sdk/XMiSDK;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .registers 11
    .param p1, "code"    # I
    .param p2, "arg1"    # Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    .prologue
    const/4 v7, 0x5

    .line 62
    sparse-switch p1, :sswitch_data_7c

    .line 91
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const-string v6, "login failled."

    invoke-virtual {v3, v7, v6}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 94
    :goto_d
    return-void

    .line 67
    :sswitch_e
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()J

    move-result-wide v4

    .line 68
    .local v4, "uid":J
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "session":Ljava/lang/String;
    const-string v0, ""

    .line 70
    .local v0, "nickname":Ljava/lang/String;
    const-string v3, "U8SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uid = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v3, "U8SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "session = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const/4 v6, 0x4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/u8/sdk/XMiSDK$1;->this$0:Lcom/u8/sdk/XMiSDK;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/u8/sdk/XMiSDK;->encodeLoginResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v6, v2}, Lcom/u8/sdk/XMiSDK;->access$0(Lcom/u8/sdk/XMiSDK;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    goto :goto_d

    .line 79
    .end local v0    # "nickname":Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/String;
    .end local v2    # "session":Ljava/lang/String;
    .end local v4    # "uid":J
    :sswitch_5e
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const-string v6, "login failed."

    invoke-virtual {v3, v7, v6}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_d

    .line 83
    :sswitch_68
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const-string v6, "login cancelled."

    invoke-virtual {v3, v7, v6}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_d

    .line 87
    :sswitch_72
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v3

    const-string v6, "login executed."

    invoke-virtual {v3, v7, v6}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_d

    .line 62
    :sswitch_data_7c
    .sparse-switch
        -0x4656 -> :sswitch_72
        -0x66 -> :sswitch_5e
        -0xc -> :sswitch_68
        0x0 -> :sswitch_e
    .end sparse-switch
.end method
