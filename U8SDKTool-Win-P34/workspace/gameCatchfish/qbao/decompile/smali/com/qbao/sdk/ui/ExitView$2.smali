.class Lcom/qbao/sdk/ui/ExitView$2;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/ExitView$2;->eu:Lcom/qbao/sdk/ui/ExitView;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qbao/sdk/ui/ExitView$2;->eu:Lcom/qbao/sdk/ui/ExitView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ExitView;->mContext:Landroid/content/Context;

    const-string v1, "http://store.qbao.com"

    invoke-static {v0, v1}, Lcom/qbao/sdk/e/h;->j(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    return-void
.end method
