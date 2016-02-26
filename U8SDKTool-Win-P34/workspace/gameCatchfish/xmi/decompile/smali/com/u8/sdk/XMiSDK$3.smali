.class Lcom/u8/sdk/XMiSDK$3;
.super Ljava/lang/Object;
.source "XMiSDK.java"

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/XMiSDK;->pay(Lcom/u8/sdk/PayParams;)V
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
    iput-object p1, p0, Lcom/u8/sdk/XMiSDK$3;->this$0:Lcom/u8/sdk/XMiSDK;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishPayProcess(I)V
    .registers 5
    .param p1, "code"    # I

    .prologue
    const/16 v2, 0xb

    .line 132
    sparse-switch p1, :sswitch_data_30

    .line 150
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "pay failed."

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 153
    :goto_e
    :sswitch_e
    return-void

    .line 135
    :sswitch_f
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "pay successed."

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_e

    .line 139
    :sswitch_1b
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "pay failed."

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_e

    .line 143
    :sswitch_25
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "pay failed."

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_e

    .line 132
    nop

    :sswitch_data_30
    .sparse-switch
        -0x4656 -> :sswitch_e
        -0x4654 -> :sswitch_1b
        -0x4653 -> :sswitch_25
        0x0 -> :sswitch_f
    .end sparse-switch
.end method
