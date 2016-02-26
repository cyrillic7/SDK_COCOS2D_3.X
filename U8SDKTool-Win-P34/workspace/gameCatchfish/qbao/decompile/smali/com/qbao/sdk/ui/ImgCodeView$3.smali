.class Lcom/qbao/sdk/ui/ImgCodeView$3;
.super Ljava/lang/Object;
.source "ImgCodeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ImgCodeView;->aB()Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eP:Lcom/qbao/sdk/ui/ImgCodeView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ImgCodeView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ImgCodeView$3;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$3;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->b(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 110
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$3;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ImgCodeView;->mContext:Landroid/content/Context;

    const-string v1, "\u9a8c\u8bc1\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    :goto_1d
    return-void

    .line 113
    :cond_1e
    iget-object v1, p0, Lcom/qbao/sdk/ui/ImgCodeView$3;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v1, v0}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/sdk/ui/ImgCodeView;Ljava/lang/String;)V

    goto :goto_1d
.end method
