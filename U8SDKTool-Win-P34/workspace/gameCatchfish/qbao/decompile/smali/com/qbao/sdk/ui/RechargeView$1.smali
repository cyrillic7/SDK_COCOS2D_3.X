.class Lcom/qbao/sdk/ui/RechargeView$1;
.super Ljava/lang/Object;
.source "RechargeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RechargeView;->aA()Landroid/widget/RelativeLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/RechargeView$1;->fe:Lcom/qbao/sdk/ui/RechargeView;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qbao/sdk/ui/RechargeView$1;->fe:Lcom/qbao/sdk/ui/RechargeView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/RechargeView;->finish()V

    .line 34
    return-void
.end method
