.class Lcom/qbao/sdk/ui/PayView$3;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aV()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic fb:Lcom/qbao/sdk/ui/PayView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/PayView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$3;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 163
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$3;->fb:Lcom/qbao/sdk/ui/PayView;

    new-instance v1, Lcom/qbao/sdk/ui/RechargeView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView$3;->fb:Lcom/qbao/sdk/ui/PayView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qbao/sdk/ui/RechargeView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/PayView;->d(Landroid/view/View;)V

    .line 164
    return-void
.end method
