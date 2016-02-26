.class Lcom/qbao/sdk/ui/PayView$2;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aA()Landroid/widget/RelativeLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$2;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$2;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/sdk/ui/PayView;)Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qbao/sdk/ui/PayView$2;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v2}, Lcom/qbao/sdk/ui/PayView;->b(Lcom/qbao/sdk/ui/PayView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/qbao/sdk/api/QbaoSdk$IPayCallback;->onResult(ILjava/lang/String;Ljava/lang/Object;)V

    .line 118
    return-void
.end method
