.class Lcom/qbao/sdk/ui/RegisterView$4;
.super Ljava/lang/Object;
.source "RegisterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/RegisterView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic eG:Landroid/widget/EditText;

.field final synthetic ff:Lcom/qbao/sdk/ui/RegisterView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/RegisterView$4;->eG:Landroid/widget/EditText;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    .line 132
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->c(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$4;->eG:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v2}, Lcom/qbao/sdk/ui/RegisterView;->e(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 136
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 157
    :goto_35
    return-void

    .line 139
    :cond_36
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_48

    .line 140
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_35

    .line 143
    :cond_48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 144
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_35

    .line 147
    :cond_58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 148
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_35

    .line 151
    :cond_68
    invoke-static {v2}, Lcom/qbao/sdk/a/a;->R(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_78

    .line 152
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5bc6\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_35

    .line 155
    :cond_78
    iget-object v3, p0, Lcom/qbao/sdk/ui/RegisterView$4;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v3, v0, v2, v1}, Lcom/qbao/sdk/ui/RegisterView;->a(Lcom/qbao/sdk/ui/RegisterView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35
.end method
