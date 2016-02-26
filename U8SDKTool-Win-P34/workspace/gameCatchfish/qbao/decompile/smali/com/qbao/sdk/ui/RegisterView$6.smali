.class Lcom/qbao/sdk/ui/RegisterView$6;
.super Ljava/lang/Object;
.source "RegisterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RegisterView;->aS()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eH:Landroid/widget/ImageView;

.field final synthetic ff:Lcom/qbao/sdk/ui/RegisterView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/RegisterView$6;->eH:Landroid/widget/ImageView;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 184
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->f(Lcom/qbao/sdk/ui/RegisterView;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    :goto_b
    invoke-static {v1, v0}, Lcom/qbao/sdk/ui/RegisterView;->a(Lcom/qbao/sdk/ui/RegisterView;Z)V

    .line 185
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->e(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/RegisterView;->f(Lcom/qbao/sdk/ui/RegisterView;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 187
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->eH:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    const-string v3, "qb_show_pwd"

    invoke-virtual {v2, v3}, Lcom/qbao/sdk/ui/RegisterView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/RegisterView;->e(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 193
    :goto_3e
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/RegisterView;->e(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 194
    return-void

    .line 184
    :cond_4c
    const/4 v0, 0x1

    goto :goto_b

    .line 190
    :cond_4e
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->eH:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    const-string v3, "qb_hide_pwd"

    invoke-virtual {v2, v3}, Lcom/qbao/sdk/ui/RegisterView;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$6;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/RegisterView;->e(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_3e
.end method
