.class Lcom/qbao/sdk/ui/LoginView$5;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/LoginView;->aT()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eS:Lcom/qbao/sdk/ui/LoginView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/LoginView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/LoginView$5;->eS:Lcom/qbao/sdk/ui/LoginView;

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 171
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$5;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/LoginView;->a(Lcom/qbao/sdk/ui/LoginView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lcom/qbao/sdk/a/a;->S(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 173
    iget-object v1, p0, Lcom/qbao/sdk/ui/LoginView$5;->eS:Lcom/qbao/sdk/ui/LoginView;

    new-instance v2, Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v3, p0, Lcom/qbao/sdk/ui/LoginView$5;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v3, v3, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/LoginView;->d(Landroid/view/View;)V

    .line 178
    :goto_22
    return-void

    .line 175
    :cond_23
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$5;->eS:Lcom/qbao/sdk/ui/LoginView;

    new-instance v1, Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/LoginView$5;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/qbao/sdk/ui/ForgotPwdView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/LoginView;->d(Landroid/view/View;)V

    goto :goto_22
.end method
