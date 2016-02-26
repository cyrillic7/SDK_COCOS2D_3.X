.class Lcom/qbao/sdk/ui/PayView$7;
.super Lcom/qbao/core/a/c;
.source "PayView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aY()V
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$7;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 287
    invoke-direct {p0}, Lcom/qbao/core/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$7;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->am()V

    .line 292
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$7;->fb:Lcom/qbao/sdk/ui/PayView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$7;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/PayView;->am()V

    .line 298
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$7;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->g(Lcom/qbao/sdk/ui/PayView;)V

    .line 300
    return-void
.end method
