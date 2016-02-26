.class Lcom/u8/sdk/WGSDK$2;
.super Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;
.source "WGSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/WGSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/WGSDK;

.field private final synthetic val$data:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/WGSDK;Lcom/u8/sdk/PayParams;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$2;->this$0:Lcom/u8/sdk/WGSDK;

    iput-object p2, p0, Lcom/u8/sdk/WGSDK$2;->val$data:Lcom/u8/sdk/PayParams;

    .line 271
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V
    .registers 7
    .param p1, "res"    # Lcom/tencent/unipay/plugsdk/UnipayResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 283
    const-string v1, "U8SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnipayPlugAPI:::::UnipayCallBack \n\nresultCode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    iget v3, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 285
    const-string v3, "\npayChannel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 286
    const-string v3, "\npayState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 287
    const-string v3, "\nproviderState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 288
    const-string v3, "\nsaveType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->extendInfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget v1, p1, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    if-nez v1, :cond_8c

    .line 291
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/16 v2, 0xa

    const-string v3, "pay success."

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 294
    const-string v1, "U8SDK"

    const-string v2, "pay success. now to req charge to u8server"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v0, Lcom/u8/sdk/WGSDK$PayReqTask;

    iget-object v1, p0, Lcom/u8/sdk/WGSDK$2;->this$0:Lcom/u8/sdk/WGSDK;

    invoke-direct {v0, v1, v4}, Lcom/u8/sdk/WGSDK$PayReqTask;-><init>(Lcom/u8/sdk/WGSDK;Z)V

    .line 296
    .local v0, "payReqTask":Lcom/u8/sdk/WGSDK$PayReqTask;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "1"

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/u8/sdk/WGSDK$2;->val$data:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getOrderID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/u8/sdk/WGSDK$2;->this$0:Lcom/u8/sdk/WGSDK;

    # getter for: Lcom/u8/sdk/WGSDK;->multiServers:Z
    invoke-static {v1}, Lcom/u8/sdk/WGSDK;->access$8(Lcom/u8/sdk/WGSDK;)Z

    move-result v1

    if-eqz v1, :cond_89

    iget-object v1, p0, Lcom/u8/sdk/WGSDK$2;->val$data:Lcom/u8/sdk/PayParams;

    invoke-virtual {v1}, Lcom/u8/sdk/PayParams;->getServerId()Ljava/lang/String;

    move-result-object v1

    :goto_83
    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/u8/sdk/WGSDK$PayReqTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 301
    .end local v0    # "payReqTask":Lcom/u8/sdk/WGSDK$PayReqTask;
    :goto_88
    return-void

    .line 296
    .restart local v0    # "payReqTask":Lcom/u8/sdk/WGSDK$PayReqTask;
    :cond_89
    const-string v1, "1"

    goto :goto_83

    .line 299
    .end local v0    # "payReqTask":Lcom/u8/sdk/WGSDK$PayReqTask;
    :cond_8c
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v1

    const/16 v2, 0xb

    const-string v3, "pay fail."

    invoke-virtual {v1, v2, v3}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_88
.end method

.method public UnipayNeedLogin()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$2;->this$0:Lcom/u8/sdk/WGSDK;

    const-string v1, "\u767b\u5f55\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55\u518d\u5145\u503c"

    # invokes: Lcom/u8/sdk/WGSDK;->showTip(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/u8/sdk/WGSDK;->access$3(Lcom/u8/sdk/WGSDK;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onLogout()V

    .line 278
    return-void
.end method
