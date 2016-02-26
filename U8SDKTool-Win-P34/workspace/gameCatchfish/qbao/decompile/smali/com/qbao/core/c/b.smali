.class public abstract Lcom/qbao/core/c/b;
.super Lcom/qbao/core/c/d;
.source "BitmapRequest.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/qbao/core/c/d;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/qbao/core/c/d;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;Lcom/qbao/core/c/f;)V

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;[Lorg/apache/http/Header;)V
    .registers 3

    .prologue
    .line 25
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-super {p0, v0, p1}, Lcom/qbao/core/c/d;->a(ILjava/lang/String;)V

    .line 29
    return-void
.end method

.method protected a([B[Lorg/apache/http/Header;)V
    .registers 5

    .prologue
    .line 33
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_c

    .line 35
    invoke-virtual {p0, v0, p2}, Lcom/qbao/core/c/b;->a(Landroid/graphics/Bitmap;[Lorg/apache/http/Header;)V

    .line 39
    :goto_b
    return-void

    .line 37
    :cond_c
    const-string v0, "\u56fe\u7247\u6d41\u6570\u636e\u89e3\u7801\u9519\u8bef\uff01"

    invoke-virtual {p0, v0}, Lcom/qbao/core/c/b;->a(Ljava/lang/String;)V

    goto :goto_b
.end method
