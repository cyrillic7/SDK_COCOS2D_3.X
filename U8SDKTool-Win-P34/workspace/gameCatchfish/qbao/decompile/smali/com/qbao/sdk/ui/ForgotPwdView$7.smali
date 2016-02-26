.class Lcom/qbao/sdk/ui/ForgotPwdView$7;
.super Ljava/lang/Object;
.source "ForgotPwdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ForgotPwdView;->aS()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eF:Lcom/qbao/sdk/ui/ForgotPwdView;

.field private final synthetic eH:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ForgotPwdView;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eH:Landroid/widget/ImageView;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 235
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->f(Lcom/qbao/sdk/ui/ForgotPwdView;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :goto_b
    invoke-static {v1, v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->a(Lcom/qbao/sdk/ui/ForgotPwdView;Z)V

    .line 236
    iget-object v0, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ForgotPwdView;->e(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->f(Lcom/qbao/sdk/ui/ForgotPwdView;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 238
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eH:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    const-string v3, "qb_show_pwd"

    invoke-virtual {v2, v3}, Lcom/qbao/sdk/ui/ForgotPwdView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->e(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 244
    :goto_3e
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->e(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 245
    return-void

    .line 235
    :cond_4c
    const/4 v0, 0x1

    goto :goto_b

    .line 241
    :cond_4e
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eH:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    const-string v3, "qb_hide_pwd"

    invoke-virtual {v2, v3}, Lcom/qbao/sdk/ui/ForgotPwdView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v1, p0, Lcom/qbao/sdk/ui/ForgotPwdView$7;->eF:Lcom/qbao/sdk/ui/ForgotPwdView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ForgotPwdView;->e(Lcom/qbao/sdk/ui/ForgotPwdView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3e
.end method
