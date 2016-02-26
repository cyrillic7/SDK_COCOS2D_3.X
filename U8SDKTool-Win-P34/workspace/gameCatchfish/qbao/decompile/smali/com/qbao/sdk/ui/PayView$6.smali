.class Lcom/qbao/sdk/ui/PayView$6;
.super Ljava/lang/Object;
.source "PayView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/PayView;->aX()Landroid/widget/LinearLayout;
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 264
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->e(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 266
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u4ea4\u6613\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 279
    :goto_1d
    return-void

    .line 269
    :cond_1e
    const-string v1, ""

    .line 270
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->c(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/PayView;->c(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 271
    :goto_32
    iget-object v3, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v3}, Lcom/qbao/sdk/ui/PayView;->f(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/EditText;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 272
    iget-object v1, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/PayView;->f(Lcom/qbao/sdk/ui/PayView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 274
    iget-object v0, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/PayView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 270
    :cond_58
    const/4 v0, 0x0

    goto :goto_32

    .line 278
    :cond_5a
    iget-object v3, p0, Lcom/qbao/sdk/ui/PayView$6;->fb:Lcom/qbao/sdk/ui/PayView;

    invoke-static {v3, v1, v2, v0}, Lcom/qbao/sdk/ui/PayView;->a(Lcom/qbao/sdk/ui/PayView;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1d
.end method
