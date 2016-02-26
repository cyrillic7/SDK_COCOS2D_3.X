.class Lcom/qbao/sdk/ui/ForgotPwdView$9;
.super Ljava/lang/Object;
.source "ForgotPwdView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView;->ad(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eF:Lcom/qbao/sdk/ui/ForgotPwdView;

.field private final synthetic eJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eJ:Ljava/lang/String;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/qbao/sdk/ui/ForgotPwdView$9;)Lcom/qbao/sdk/ui/ForgotPwdView;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    return-object v0
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->am()V

    .line 301
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 279
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->h(Lcom/qbao/sdk/ui/ForgotPwdView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->i(Lcom/qbao/sdk/ui/ForgotPwdView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qbao/sdk/ui/ForgotPwdView$9;->eJ:Ljava/lang/String;

    new-instance v4, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;

    invoke-direct {v4, p0}, Lcom/qbao/sdk/ui/ForgotPwdView$9$1;-><init>(Lcom/qbao/sdk/ui/ForgotPwdView$9;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qbao/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qbao/core/a/c;)V

    .line 296
    return-void
.end method
