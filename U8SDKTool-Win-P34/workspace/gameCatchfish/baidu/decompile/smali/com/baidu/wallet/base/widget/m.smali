.class Lcom/baidu/wallet/base/widget/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/imagemanager/h$a;


# instance fields
.field final synthetic a:Lcom/baidu/wallet/base/widget/NetImageView;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/NetImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/m;->a:Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/base/widget/NetImageView;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/wallet/base/widget/q;

    invoke-direct {v1, p0, p1, p3}, Lcom/baidu/wallet/base/widget/q;-><init>(Lcom/baidu/wallet/base/widget/m;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/m;->a:Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/NetImageView;->a(Lcom/baidu/wallet/base/widget/NetImageView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/m;->a:Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-static {v0}, Lcom/baidu/wallet/base/widget/NetImageView;->b(Lcom/baidu/wallet/base/widget/NetImageView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
