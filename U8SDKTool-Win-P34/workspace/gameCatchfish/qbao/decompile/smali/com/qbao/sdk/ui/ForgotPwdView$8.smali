.class Lcom/qbao/sdk/ui/ForgotPwdView$8;
.super Ljava/lang/Object;
.source "ForgotPwdView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView;->s(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eF:Lcom/qbao/sdk/ui/ForgotPwdView;

.field private final synthetic eI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eI:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->am()V

    .line 268
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 259
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->am()V

    .line 260
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->b(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eI:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->c(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$8;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->g(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(ILandroid/view/View;)V

    .line 263
    return-void
.end method
