.class Lcom/baidu/wallet/base/widget/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/baidu/wallet/base/widget/m;


# direct methods
.method constructor <init>(Lcom/baidu/wallet/base/widget/m;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/wallet/base/widget/q;->c:Lcom/baidu/wallet/base/widget/m;

    iput-object p2, p0, Lcom/baidu/wallet/base/widget/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/wallet/base/widget/q;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/base/widget/q;->c:Lcom/baidu/wallet/base/widget/m;

    iget-object v0, v0, Lcom/baidu/wallet/base/widget/m;->a:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v1, p0, Lcom/baidu/wallet/base/widget/q;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/base/widget/q;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setRemoteDrawable(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
