.class Lcom/qbao/sdk/ui/ExitView$1;
.super Ljava/lang/Object;
.source "ExitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ExitView;->aA()Landroid/widget/RelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eu:Lcom/qbao/sdk/ui/ExitView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ExitView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ExitView$1;->eu:Lcom/qbao/sdk/ui/ExitView;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qbao/sdk/ui/ExitView$1;->eu:Lcom/qbao/sdk/ui/ExitView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ExitView;->finish()V

    .line 45
    return-void
.end method
