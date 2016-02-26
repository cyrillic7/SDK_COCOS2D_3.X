.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;
.super Ljava/lang/Object;
.source "UnipayPlugAPI.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;
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
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {p2}, Lcom/tencent/unipay/plug/IUnipayService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/unipay/plug/IUnipayService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$6(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Lcom/tencent/unipay/plug/IUnipayService;)V

    .line 255
    :try_start_9
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$7(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plug/IUnipayService;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/unipay/plug/IUnipayService;->Initialize()V

    .line 256
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$7(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plug/IUnipayService;

    move-result-object v0

    sget-object v1, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->envParams:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/unipay/plug/IUnipayService;->setEnv(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$7(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plug/IUnipayService;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->logEnable:Z
    invoke-static {v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$8(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/tencent/unipay/plug/IUnipayService;->setLogEnable(Z)V

    .line 260
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$3(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V

    .line 261
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$5(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayService:Lcom/tencent/unipay/plug/IUnipayService;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$7(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plug/IUnipayService;

    move-result-object v0

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->unipayPreLaunchPay:Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;
    invoke-static {}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$9()Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/unipay/plug/IUnipayService;->UnipayPreLaunchPay(Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay;)V

    .line 263
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isNewMethod:Z
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$10(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 265
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isLaunchWeb:Z
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$11(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 267
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->startWeb()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$12(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 275
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->isH5Init:Z
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$14(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 277
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->webviewLoadUrl()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$15(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V

    .line 283
    :cond_6c
    :goto_6c
    return-void

    .line 271
    :cond_6d
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->startPay()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$13(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_72} :catch_73

    goto :goto_5f

    .line 280
    :catch_73
    move-exception v0

    goto :goto_6c
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$0(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V

    .line 241
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {v0, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$1(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Lcom/tencent/unipay/request/UnipayPayBaseRequest;)V

    .line 242
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {v0, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$2(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 243
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$3(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V

    .line 244
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    invoke-static {v0, v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$4(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Z)V

    .line 245
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$1;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$5(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisConnected "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method
