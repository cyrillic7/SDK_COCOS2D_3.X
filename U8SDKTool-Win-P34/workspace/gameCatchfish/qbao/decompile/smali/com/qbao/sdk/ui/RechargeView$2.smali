.class Lcom/qbao/sdk/ui/RechargeView$2;
.super Lcom/qbao/core/d/c;
.source "RechargeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RechargeView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fe:Lcom/qbao/sdk/ui/RechargeView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RechargeView;Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RechargeView$2;->fe:Lcom/qbao/sdk/ui/RechargeView;

    .line 44
    invoke-direct {p0, p2, p3, p4}, Lcom/qbao/core/d/c;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 47
    const-string v0, "www.qbao.com"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 48
    iget-object v0, p0, Lcom/qbao/sdk/ui/RechargeView$2;->fe:Lcom/qbao/sdk/ui/RechargeView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RechargeView;->mContext:Landroid/content/Context;

    const-string v1, "http://www.qbao.com"

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    :cond_11
    return-void
.end method
