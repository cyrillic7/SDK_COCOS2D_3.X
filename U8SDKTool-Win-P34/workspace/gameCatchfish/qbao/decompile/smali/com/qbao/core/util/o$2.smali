.class Lcom/qbao/core/util/o$2;
.super Ljava/lang/Object;
.source "UIUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/util/o;->a(Landroid/content/Context;Ljava/lang/String;IIILandroid/view/View$OnClickListener;)Landroid/widget/TextView;
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
.method constructor <init>(Landroid/widget/TextView;II)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/util/o$2;->cN:Landroid/widget/TextView;

    iput p2, p0, Lcom/qbao/core/util/o$2;->cM:I

    iput p3, p0, Lcom/qbao/core/util/o$2;->cO:I

    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    .line 431
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 432
    iget-object v0, p0, Lcom/qbao/core/util/o$2;->cN:Landroid/widget/TextView;

    iget v1, p0, Lcom/qbao/core/util/o$2;->cM:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 435
    iget-object v0, p0, Lcom/qbao/core/util/o$2;->cN:Landroid/widget/TextView;

    iget v1, p0, Lcom/qbao/core/util/o$2;->cO:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
