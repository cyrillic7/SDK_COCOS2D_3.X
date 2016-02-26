.class Lcom/qbao/sdk/ui/RegisterView$3;
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
.field final synthetic ff:Lcom/qbao/sdk/ui/RegisterView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/RegisterView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 103
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/RegisterView;->c(Lcom/qbao/sdk/ui/RegisterView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 105
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    :goto_1d
    return-void

    .line 108
    :cond_1e
    invoke-static {v0}, Lcom/qbao/sdk/a/a;->S(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 109
    iget-object v0, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1d

    .line 112
    :cond_2e
    iget-object v1, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    new-instance v2, Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v3, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    iget-object v3, v3, Lcom/qbao/sdk/ui/RegisterView;->mContext:Landroid/content/Context;

    const-string v4, "2"

    iget-object v5, p0, Lcom/qbao/sdk/ui/RegisterView$3;->ff:Lcom/qbao/sdk/ui/RegisterView;

    invoke-static {v5}, Lcom/qbao/sdk/ui/RegisterView;->d(Lcom/qbao/sdk/ui/RegisterView;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/qbao/sdk/ui/ImgCodeView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Lcom/qbao/sdk/ui/RegisterView;->d(Landroid/view/View;)V

    goto :goto_1d
.end method
