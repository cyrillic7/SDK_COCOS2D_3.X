.class public Lcom/qbao/core/d/a;
.super Landroid/text/method/LinkMovementMethod;
.source "HyperLinkMovementMethod.java"


# static fields
.field private static au:Lcom/qbao/core/d/a;


# instance fields
.field av:I

.field aw:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 25
    iput p1, p0, Lcom/qbao/core/d/a;->av:I

    .line 26
    iput p2, p0, Lcom/qbao/core/d/a;->aw:I

    .line 27
    return-void
.end method

.method public static a(II)Landroid/text/method/MovementMethod;
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/qbao/core/d/a;->au:Lcom/qbao/core/d/a;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/qbao/core/d/a;

    invoke-direct {v0, p0, p1}, Lcom/qbao/core/d/a;-><init>(II)V

    sput-object v0, Lcom/qbao/core/d/a;->au:Lcom/qbao/core/d/a;

    .line 32
    :cond_b
    sget-object v0, Lcom/qbao/core/d/a;->au:Lcom/qbao/core/d/a;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .registers 12

    .prologue
    const/16 v7, 0x21

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 37
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 38
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 39
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    .line 41
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v0, v4

    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 44
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v0, v4

    .line 45
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr v3, v4

    .line 47
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 48
    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    .line 49
    int-to-float v0, v0

    invoke-virtual {v4, v3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    .line 51
    const-class v3, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 53
    array-length v3, v0

    if-eqz v3, :cond_80

    .line 54
    aget-object v3, v0, v6

    invoke-interface {p2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 55
    aget-object v4, v0, v6

    invoke-interface {p2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 56
    if-ne v2, v1, :cond_60

    .line 57
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/qbao/core/d/a;->aw:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p2, v2, v3, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 58
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 59
    aget-object v0, v0, v6

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :goto_5e
    move v0, v1

    .line 70
    :goto_5f
    return v0

    .line 60
    :cond_60
    if-nez v2, :cond_7c

    .line 61
    aget-object v2, v0, v6

    invoke-interface {p2, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v0, v0, v6

    invoke-interface {p2, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p2, v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 62
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qbao/core/d/a;->av:I

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p2, v0, v3, v4, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5e

    .line 64
    :cond_7c
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_5e

    .line 68
    :cond_80
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 70
    invoke-static {p1, p2, p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5f
.end method
