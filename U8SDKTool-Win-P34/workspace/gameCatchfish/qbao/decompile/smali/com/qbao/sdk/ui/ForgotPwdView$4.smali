.class Lcom/qbao/sdk/ui/ForgotPwdView$4;
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

.field private final synthetic eG:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eG:Landroid/widget/EditText;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 153
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->c(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eG:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 156
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    :goto_27
    return-void

    .line 159
    :cond_28
    invoke-static {v0}, Lcom/qbao/sdk/a/a;->S(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 160
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_27

    .line 163
    :cond_38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 164
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_27

    .line 167
    :cond_48
    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$4;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v2, v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Lcom/qbao/sdk/ui/ForgotPwdView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27
.end method
