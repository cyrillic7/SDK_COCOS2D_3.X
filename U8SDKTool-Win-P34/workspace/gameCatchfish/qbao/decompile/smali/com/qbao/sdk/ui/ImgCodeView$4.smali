.class Lcom/qbao/sdk/ui/ImgCodeView$4;
.super Ljava/lang/Object;
.source "ImgCodeView.java"

# interfaces
.implements Lcom/qbao/core/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/ui/ImgCodeView;->a(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic eP:Lcom/qbao/sdk/ui/ImgCodeView;

.field private final synthetic eQ:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/widget/ImageView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/sdk/ui/ImgCodeView$4;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    iput-object p2, p0, Lcom/qbao/sdk/ui/ImgCodeView$4;->eQ:Landroid/widget/ImageView;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 143
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 131
    if-eqz p1, :cond_1c

    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$4;->eQ:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 132
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    .line 133
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$4;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/qbao/sdk/ui/ImgCodeView;->a(Lcom/qbao/sdk/ui/ImgCodeView;Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v0, p0, Lcom/qbao/sdk/ui/ImgCodeView$4;->eQ:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/qbao/sdk/ui/ImgCodeView$4;->eP:Lcom/qbao/sdk/ui/ImgCodeView;

    invoke-static {v1}, Lcom/qbao/sdk/ui/ImgCodeView;->c(Lcom/qbao/sdk/ui/ImgCodeView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    :cond_1c
    return-void
.end method
