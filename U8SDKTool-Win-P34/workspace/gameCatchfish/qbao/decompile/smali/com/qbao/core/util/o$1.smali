.class Lcom/qbao/core/util/o$1;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cM:I

.field private final synthetic cN:Landroid/widget/TextView;

.field private final synthetic cO:I


# direct methods
.method constructor <init>(ILandroid/widget/TextView;I)V
    .registers 4

    .prologue
    .line 1
    iput p1, p0, Lcom/qbao/core/util/o$1;->cM:I

    iput-object p2, p0, Lcom/qbao/core/util/o$1;->cN:Landroid/widget/TextView;

    iput p3, p0, Lcom/qbao/core/util/o$1;->cO:I

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 283
    iget v0, p0, Lcom/qbao/core/util/o$1;->cM:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 291
    :cond_6
    :goto_6
    return v2

    .line 286
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 287
    iget-object v0, p0, Lcom/qbao/core/util/o$1;->cN:Landroid/widget/TextView;

    iget v1, p0, Lcom/qbao/core/util/o$1;->cM:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    .line 288
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 289
    iget-object v0, p0, Lcom/qbao/core/util/o$1;->cN:Landroid/widget/TextView;

    iget v1, p0, Lcom/qbao/core/util/o$1;->cO:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6
.end method
