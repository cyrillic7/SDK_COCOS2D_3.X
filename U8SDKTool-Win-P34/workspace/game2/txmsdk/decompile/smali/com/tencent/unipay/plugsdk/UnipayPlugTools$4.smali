.class Lcom/tencent/unipay/plugsdk/UnipayPlugTools$4;
.super Ljava/lang/Object;
.source "UnipayPlugTools.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->checkUnipayAPP()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugTools;


# direct methods
.method constructor <init>(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$4;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 247
    iget-object v1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$4;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->access$1(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;Z)V

    .line 249
    new-instance v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;

    invoke-direct {v0}, Lcom/tencent/unipay/plugsdk/UnipayResponse;-><init>()V

    .line 250
    .local v0, "response":Lcom/tencent/unipay/plugsdk/UnipayResponse;
    iput v3, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultCode:I

    .line 251
    iput v3, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payChannel:I

    .line 252
    iput v3, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->payState:I

    .line 253
    iput v3, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->provideState:I

    .line 254
    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d\u56de\u8c03"

    iput-object v1, v0, Lcom/tencent/unipay/plugsdk/UnipayResponse;->resultMsg:Ljava/lang/String;

    .line 255
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->invokeCallBack(Lcom/tencent/unipay/plugsdk/UnipayResponse;)V

    .line 256
    return-void
.end method
