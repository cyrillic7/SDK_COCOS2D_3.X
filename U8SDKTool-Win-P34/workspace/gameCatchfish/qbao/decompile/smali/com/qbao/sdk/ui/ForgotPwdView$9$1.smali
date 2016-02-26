.class Lcom/qbao/sdk/ui/ForgotPwdView$9$1;
.super Lcom/qbao/core/a/c;
.source "ForgotPwdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView$9;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    .line 279
    invoke-direct {p0}, Lcom/qbao/core/a/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->am()V

    .line 284
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;

    move-result-object v0

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 290
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->am()V

    .line 291
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;

    move-result-object v1

    invoke-static {v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->h(Lcom/qbao/sdk/ui/ForgotPwdView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/a/a;->P(Ljava/lang/String;)V

    .line 292
    invoke-static {}, Lcom/qbao/sdk/a/a;->Y()Lcom/qbao/sdk/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/sdk/a/a;->ab()V

    .line 293
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;->eK:Lcom/qbao/sdk/ui/ForgotPwdView$9;

    invoke-static {v2}, Lcom/qbao/sdk/ui/ForgotPwdView$9;->a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;

    move-result-object v2

    invoke-static {v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->j(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ILandroid/view/View;)V

    .line 294
    return-void
.end method
