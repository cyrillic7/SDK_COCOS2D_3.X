.class public Lcom/qbao/core/d/c;
.super Landroid/text/style/URLSpan;
.source "MyUrlSpan.java"


# instance fields
.field av:I

.field aw:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 18
    iput p2, p0, Lcom/qbao/core/d/c;->aw:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 23
    iput p2, p0, Lcom/qbao/core/d/c;->av:I

    .line 24
    iput p3, p0, Lcom/qbao/core/d/c;->aw:I

    .line 25
    return-void
.end method


# virtual methods
.method public J()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/qbao/core/d/c;->av:I

    return v0
.end method

.method public K()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/qbao/core/d/c;->aw:I

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/qbao/core/d/c;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .prologue
    .line 29
    iget v0, p0, Lcom/qbao/core/d/c;->aw:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 31
    return-void
.end method
