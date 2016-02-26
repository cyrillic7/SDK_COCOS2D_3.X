.class Lcom/u8/sdk/ATETSDK$3;
.super Ljava/lang/Object;
.source "ATETSDK.java"

# interfaces
.implements Lcom/atet/api/pay/ui/service/IPayResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/ATETSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/ATETSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/ATETSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/ATETSDK$3;->this$0:Lcom/u8/sdk/ATETSDK;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "resultInfo"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb

    .line 187
    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_12

    .line 189
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "pay successed."

    invoke-virtual {v0, v1, v2}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 197
    :goto_11
    return-void

    .line 190
    :cond_12
    const/16 v0, 0x3eb

    if-ne v0, p1, :cond_20

    .line 192
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "pay cancelled."

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_11

    .line 195
    :cond_20
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    const-string v1, "pay failed."

    invoke-virtual {v0, v2, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_11
.end method
