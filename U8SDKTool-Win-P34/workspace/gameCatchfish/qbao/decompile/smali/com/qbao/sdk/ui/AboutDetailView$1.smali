.class Lcom/qbao/sdk/ui/AboutDetailView$1;
.super Ljava/lang/Object;
.source "AboutDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/AboutDetailView;->aA()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ea:Lcom/qbao/sdk/ui/AboutDetailView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/AboutDetailView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/AboutDetailView$1;->ea:Lcom/qbao/sdk/ui/AboutDetailView;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutDetailView$1;->ea:Lcom/qbao/sdk/ui/AboutDetailView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/AboutDetailView;->finish()V

    .line 35
    return-void
.end method
