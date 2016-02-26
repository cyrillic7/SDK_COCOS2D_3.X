.class Lcom/qbao/sdk/ui/ForgotPwdView$6;
.super Ljava/lang/Object;
.source "ForgotPwdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView;->aR()Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$6;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 217
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$6;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$6;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->c(Landroid/view/View;)V

    .line 218
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$6;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ForgotPwdView;->ek:Lcom/qbao/sdk/ui/a;

    new-instance v1, Lcom/qbao/sdk/ui/LoginView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$6;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v2, v2, Lcom/qbao/sdk/ui/ForgotPwdView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/qbao/sdk/ui/LoginView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/qbao/sdk/ui/a;->b(Landroid/view/View;)V

    .line 219
    return-void
.end method
