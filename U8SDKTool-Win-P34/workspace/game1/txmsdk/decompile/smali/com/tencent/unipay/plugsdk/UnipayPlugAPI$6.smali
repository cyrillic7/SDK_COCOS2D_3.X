.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;
.super Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;
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
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    .line 161
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public UnipayNetServiceError(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "resultMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$21(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 187
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 189
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;->UnipayNetServiceError(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    :cond_16
    return-void
.end method

.method public UnipayNetServiceFinish(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "reqType"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$21(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 167
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 169
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;->UnipayNetServiceFinish(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_16
    return-void
.end method

.method public UnipayNetServiceStop(Ljava/lang/String;)V
    .registers 3
    .param p1, "reqType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unbindUnipayService()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$21(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 177
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 179
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$6;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameNetCallBack:Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$22(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/unipay/plugsdk/IUnipayNetServiceCallBack;->UnipayNetServiceStop(Ljava/lang/String;)V

    .line 181
    :cond_16
    return-void
.end method
