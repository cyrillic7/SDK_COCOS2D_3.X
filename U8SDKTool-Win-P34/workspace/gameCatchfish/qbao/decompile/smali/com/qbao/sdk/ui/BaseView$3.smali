.class Lcom/qbao/sdk/ui/BaseView$3;
.super Ljava/lang/Object;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/BaseView;->a(Ljava/lang/String;ZZZLandroid/view/View$OnClickListener;)Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic en:Lcom/qbao/sdk/ui/BaseView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/BaseView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/BaseView$3;->en:Lcom/qbao/sdk/ui/BaseView;

    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 546
    iget-object v0, p0, Lcom/qbao/sdk/ui/BaseView$3;->en:Lcom/qbao/sdk/ui/BaseView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/BaseView;->aO()V

    .line 547
    return-void
.end method
