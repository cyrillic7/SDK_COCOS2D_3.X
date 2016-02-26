.class Lcom/qbao/sdk/ui/LoginView$3;
.super Ljava/lang/Object;
.source "LoginView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/LoginView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eS:Lcom/qbao/sdk/ui/LoginView;

.field private final synthetic eT:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/LoginView;Landroid/widget/CheckBox;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/LoginView$3;->eT:Landroid/widget/CheckBox;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 126
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/LoginView;->a(Lcom/qbao/sdk/ui/LoginView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/LoginView;->b(Lcom/qbao/sdk/ui/LoginView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 129
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    :goto_2b
    return-void

    .line 132
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_3e

    .line 133
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    .line 136
    :cond_3e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 137
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    .line 140
    :cond_4e
    invoke-static {v1}, Lcom/qbao/sdk/a/a;->R(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 141
    iget-object v0, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/LoginView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2b

    .line 144
    :cond_5e
    iget-object v2, p0, Lcom/qbao/sdk/ui/LoginView$3;->eS:Lcom/qbao/sdk/ui/LoginView;

    iget-object v3, p0, Lcom/qbao/sdk/ui/LoginView$3;->eT:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/qbao/sdk/ui/LoginView;->a(Lcom/qbao/sdk/ui/LoginView;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_2b
.end method
