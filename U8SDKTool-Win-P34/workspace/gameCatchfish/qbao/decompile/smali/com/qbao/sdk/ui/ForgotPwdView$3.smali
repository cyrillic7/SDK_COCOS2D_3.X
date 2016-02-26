.class Lcom/qbao/sdk/ui/ForgotPwdView$3;
.super Ljava/lang/Object;
.source "ForgotPwdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView;->aP()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eF:Lcom/qbao/sdk/ui/ForgotPwdView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 125
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->c(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 127
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    :goto_1d
    return-void

    .line 130
    :cond_1e
    invoke-static {v0}, Lcom/qbao/sdk/a/a;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 131
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 134
    :cond_2e
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    new-instance v2, Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v3, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v3, v3, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    const-string v4, "20"

    iget-object v5, p0, Lcom/qbao/sdk/ui/ForgotPwdView$3;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v5}, Lcom/qbao/sdk/ui/ForgotPwdView;->d(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/qbao/sdk/ui/ImgCodeView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/ForgotPwdView;->d(Landroid/view/View;)V

    goto :goto_1d
.end method
