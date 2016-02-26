.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;
.super Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;
.source "UnipayPlugAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;


# direct methods
.method constructor <init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    .line 139
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/tencent/unipay/plugsdk/UnipayResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$21(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 155
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$17(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 157
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$17(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;->UnipayCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V

    .line 159
    :cond_16
    return-void
.end method

.method public UnipayNeedLogin()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$21(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$17(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 147
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$5;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$17(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;->UnipayNeedLogin()V

    .line 149
    :cond_16
    return-void
.end method
