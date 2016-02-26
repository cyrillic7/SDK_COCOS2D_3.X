.class public Lcom/u8/sdk/QBaoPay;
.super Ljava/lang/Object;
.source "QBaoPay.java"

# interfaces
.implements Lcom/u8/sdk/IPay;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public isSupportMethod(Ljava/lang/String;)Z
    .registers 3
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method

.method public pay(Lcom/u8/sdk/PayParams;)V
    .registers 6
    .param p1, "data"    # Lcom/u8/sdk/PayParams;

    .prologue
    .line 20
    invoke-virtual {p1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "orderid":Ljava/lang/String;
    const-string v1, "U8SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DATAORDERID = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-static {}, Lcom/u8/sdk/QBaoSDK;->getInstance()Lcom/u8/sdk/QBaoSDK;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/u8/sdk/QBaoSDK;->pay(Lcom/u8/sdk/PayParams;)V

    .line 23
    return-void
.end method
