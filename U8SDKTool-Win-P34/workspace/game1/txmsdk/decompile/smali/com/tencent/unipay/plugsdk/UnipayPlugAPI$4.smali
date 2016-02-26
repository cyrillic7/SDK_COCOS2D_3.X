.class Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$4;
.super Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay$Stub;
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

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$4;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugAPI;

    iput-object p2, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$4;->val$context:Landroid/content/Context;

    .line 126
    invoke-direct {p0}, Lcom/tencent/unipay/plugsdk/IUnipayPreLaunchPay$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public StartActivity(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugAPI$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void
.end method
