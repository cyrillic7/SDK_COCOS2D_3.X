.class Lcom/qbao/sdk/ui/ExitView$4;
.super Ljava/lang/Object;
.source "ExitView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ExitView;->aB()Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/ExitView$4;->eu:Lcom/qbao/sdk/ui/ExitView;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qbao/sdk/ui/ExitView$4;->eu:Lcom/qbao/sdk/ui/ExitView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ExitView;->finish()V

    .line 82
    invoke-static {}, Lcom/qbao/sdk/a/e;->exitApp()V

    .line 83
    iget-object v0, p0, Lcom/qbao/sdk/ui/ExitView$4;->eu:Lcom/qbao/sdk/ui/ExitView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ExitView;->a(Lcom/qbao/sdk/ui/ExitView;)Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/qbao/sdk/api/QbaoSdk$IExitCallback;->onConfirmExit()V

    .line 84
    return-void
.end method
