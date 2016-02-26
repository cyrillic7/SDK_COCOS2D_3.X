.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;
.super Landroid/content/BroadcastReceiver;
.source "UnipayPlugAPI.java"


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
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    .line 631
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 636
    const-string v1, "BroadCast"

    const-string v2, "receive"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 639
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "packagename":Ljava/lang/String;
    const-string v1, "com.tencent.unipay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 642
    const-string v1, "BroadCast"

    const-string v2, "to bind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    iget-object v2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->request:Lcom/tencent/unipay/request/UnipayPayBaseRequest;
    invoke-static {v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$16(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/request/UnipayPayBaseRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->gameCallBack:Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;
    invoke-static {v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$17(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->LaunchPay(Lcom/tencent/unipay/request/UnipayPayBaseRequest;Lcom/tencent/unipay/plugsdk/IUnipayServiceCallBackPro;)V

    .line 644
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$2;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    # getter for: Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->broadcast:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;->access$18(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 648
    .end local v0    # "packagename":Ljava/lang/String;
    :cond_40
    return-void
.end method
