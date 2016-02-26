.class Lcom/qbao/sdk/ui/RechargeView$3;
.super Ljava/lang/Object;
.source "RechargeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/qbao/sdk/ui/RechargeView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RechargeView$3;->fe:Lcom/qbao/sdk/ui/RechargeView;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qbao/sdk/ui/RechargeView$3;->fe:Lcom/qbao/sdk/ui/RechargeView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RechargeView;->mContext:Landroid/content/Context;

    const-string v1, "http://store.qbao.com/market/app-detail.html?appId=459"

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    return-void
.end method
