.class Lcom/qbao/sdk/ui/AboutView$1;
.super Ljava/lang/Object;
.source "AboutView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/AboutView;->aA()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eb:Lcom/qbao/sdk/ui/AboutView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/AboutView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/AboutView$1;->eb:Lcom/qbao/sdk/ui/AboutView;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qbao/sdk/ui/AboutView$1;->eb:Lcom/qbao/sdk/ui/AboutView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/AboutView;->finish()V

    .line 36
    return-void
.end method
