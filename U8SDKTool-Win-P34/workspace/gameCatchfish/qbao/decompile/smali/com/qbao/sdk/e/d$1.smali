.class Lcom/qbao/sdk/e/d$1;
.super Lcom/qbao/core/c/b;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/sdk/e/d;->b(Ljava/lang/String;Lcom/qbao/core/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cY:Lcom/qbao/core/a/b;

.field private final synthetic gn:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/qbao/core/c/c;Ljava/lang/String;Lcom/qbao/core/a/b;)V
    .registers 5

    .prologue
    .line 1
    iput-object p3, p0, Lcom/qbao/sdk/e/d$1;->gn:Ljava/lang/String;

    iput-object p4, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/qbao/core/c/b;-><init>(Landroid/content/Context;Lcom/qbao/core/c/c;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 127
    invoke-super {p0, p1, p2}, Lcom/qbao/core/c/b;->a(ILjava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_c

    .line 129
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1, p2}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 131
    :cond_c
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;[Lorg/apache/http/Header;)V
    .registers 4

    .prologue
    .line 120
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    invoke-interface {v0, p1}, Lcom/qbao/core/a/b;->a(Ljava/lang/Object;)V

    .line 123
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    if-eqz v0, :cond_a

    .line 136
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->cY:Lcom/qbao/core/a/b;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Lcom/qbao/core/a/b;->a(ILjava/lang/String;)V

    .line 138
    :cond_a
    return-void
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qbao/sdk/e/d$1;->gn:Ljava/lang/String;

    return-object v0
.end method
