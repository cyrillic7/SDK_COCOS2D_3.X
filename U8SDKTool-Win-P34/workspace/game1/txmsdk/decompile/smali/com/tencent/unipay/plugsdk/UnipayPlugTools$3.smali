.class Lcom/tencent/unipay/plugsdk/UnipayPlugTools$3;
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
    iput-object p1, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$3;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/tencent/unipay/plugsdk/UnipayPlugTools$3;->this$0:Lcom/tencent/unipay/plugsdk/UnipayPlugTools;

    # invokes: Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->intallTencentUnipayFromInternet()V
    invoke-static {v0}, Lcom/tencent/unipay/plugsdk/UnipayPlugTools;->access$0(Lcom/tencent/unipay/plugsdk/UnipayPlugTools;)V

    .line 240
    return-void
.end method
