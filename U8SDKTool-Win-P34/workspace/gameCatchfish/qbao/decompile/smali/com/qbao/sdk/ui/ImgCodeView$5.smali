.class Lcom/qbao/sdk/ui/ImgCodeView$5;
.super Ljava/lang/Object;
.source "ImgCodeView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ImgCodeView;->ae(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->am()V

    .line 168
    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_27

    .line 169
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->b(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/widget/ImageView;)V

    .line 174
    :goto_1f
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ImgCodeView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    return-void

    .line 172
    :cond_27
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->aO()V

    goto :goto_1f
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->am()V

    .line 160
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    iget-object v0, v0, Lcom/qbao/sdk/ui/ImgCodeView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qbao/core/util/o;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->d(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$5;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-virtual {v0}, Lcom/qbao/sdk/ui/ImgCodeView;->aO()V

    .line 163
    return-void
.end method
